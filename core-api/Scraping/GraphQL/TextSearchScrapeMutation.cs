using GoogleApi;
using GoogleApi.Entities.Places.Search.Common.Enums;
using GoogleApi.Entities.Places.Search.Text.Request;
using Microsoft.EntityFrameworkCore;
using NetTopologySuite.Geometries;
using SaunatonttuAPI.Scraping.Entity;
using Coordinate = GoogleApi.Entities.Common.Coordinate;

namespace SaunatonttuAPI.Scraping.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class TextSearchScrapeMutation
{
    public async Task<ConfirmationPayload> ScrapeSearchForPlaces(
        [Service] GooglePlaces.Search.TextSearchApi textSearch,
        [Service] IConfiguration configuration,
        AppDbContext db,
        CancellationToken ct)
    {
        var offset = DateTime.UtcNow.AddDays(-90);
        var textSearchRequests = await db.TextSearchRequests
            .Where(tsr => tsr.ScrapedAt.Equals(null) || tsr.ScrapedAt < offset)
            .ToListAsync(ct);
        ;

        foreach (var textSearchRequest in textSearchRequests)
        {
            string? nextPageToken = null;
            do
            {
                PlacesTextSearchRequest request;
                if (nextPageToken is null)
                {
                    request = new PlacesTextSearchRequest
                    {
                        Location = new Coordinate(textSearchRequest.Latitude, textSearchRequest.Longitude),
                        Query = "sauna",
                        Type = SearchPlaceType.Spa,
                        Radius = textSearchRequest.Radius,
                        Key = configuration.GetValue<string>("ApiKey"),
                    };
                }
                else
                {
                    request = new PlacesTextSearchRequest
                    {
                        Key = configuration.GetValue<string>("ApiKey"),
                        PageToken = nextPageToken,
                    };
                }

                var response = await textSearch.QueryAsync(request, ct);
                var responseLog = new ResponseLog
                {
                    ReceivedAt = DateTime.UtcNow,
                    RequestUid = $"text-search-{textSearchRequest.Id}",
                    Response = response.RawJson,
                };
                await db.AddAsync(responseLog, ct);
                foreach (var textResult in response.Results)
                {
                    var sauna = await db.Saunas
                        .Where(s => textResult.PlaceId.Equals(s.GoogleId))
                        .FirstOrDefaultAsync(ct);
                    if (sauna is not null) continue;
                    sauna = new Sauna.Entity.Sauna
                    {
                        Name = textResult.Name,
                        GoogleId = textResult.PlaceId,
                        Address = textResult.FormattedAddress,
                        IsPrivate = false,
                        Location = new Point(
                            textResult.Geometry.Location.Latitude,
                            textResult.Geometry.Location.Longitude
                        ),
                    };
                    await db.AddAsync(sauna, ct);
                    await db.SaveChangesAsync(ct);
                }

                nextPageToken = response.NextPageToken;
                if (nextPageToken is not null)
                {
                    Thread.Sleep(8000);
                }
            } while (nextPageToken is not null);

            textSearchRequest.ScrapedAt = DateTime.UtcNow;
            await db.SaveChangesAsync(ct);
        }

        return ConfirmationPayload.Ok();
    }
}
