using GoogleApi;
using GoogleApi.Entities.Common.Enums;
using GoogleApi.Entities.Places.Common;
using GoogleApi.Entities.Places.Details.Request;
using GoogleApi.Entities.Places.Details.Request.Enums;
using Microsoft.EntityFrameworkCore;
using NetTopologySuite.Geometries;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.Scraping.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class PlaceDetailScrapeMutation
{
    public async Task<ConfirmationPayload> ScrapePlaceDetails(
        [Service] GooglePlaces.Search.TextSearchApi textSearch,
        [Service] IConfiguration configuration,
        [Service] GooglePlaces.DetailsApi details,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var offset = DateTime.UtcNow.AddDays(-90);
        var saunas = await db.Saunas
            .Where(s => s.GoogleId != null)
            .Where(s => s.LastGoogleUpdate.Equals(null) || s.LastGoogleUpdate < offset)
            .Include(s => s.OpeningHours)
            .ToListAsync(ct);

        foreach (var sauna in saunas)
        {
            if (sauna.GoogleId is null) continue;
            var request = new PlacesDetailsRequest
            {
                Key = configuration.GetValue<string>("ApiKey"),
                PlaceId = sauna.GoogleId,
                Fields = FieldTypes.Basic | FieldTypes.Contact,
                Language = Language.Czech,
            };
            var response = await details.QueryAsync(request, ct);
            sauna.GooglePlaceDetailResponse = response.RawJson;
            sauna.LastGoogleUpdate = DateTime.UtcNow;
            var result = response.Result;
            sauna.Name = result.Name;
            sauna.Address = result.Vicinity;
            sauna.Phone = result.InternationalPhoneNumber;
            sauna.Location = new Point(result.Geometry.Location.Latitude, result.Geometry.Location.Longitude);
            sauna.Url = result.Website;
            var toRemove = sauna.OpeningHours.Select(oh => oh.Id).ToList();
            if (result.OpeningHours?.Periods != null)
            {
                foreach (var period in result.OpeningHours.Periods)
                {
                    var open = period.Open;
                    var close = period.Close ?? new PeriodDetail
                    {
                        Day = open.Day,
                        Time = "2359",
                    };
                    if (open.Day != close.Day) continue; // I decided not to support multi-days opening hours.
                    try
                    {
                        var openingHour = sauna.OpeningHours
                            .First(s => s.DayOfWeek.Equals((DayOfWeek)open.Day));
                        openingHour.Open = TimeOnly.ParseExact(open.Time, "HHmm");
                        openingHour.Close = TimeOnly.ParseExact(close.Time, "HHmm");
                        toRemove.Remove(openingHour.Id);
                    }
                    catch (InvalidOperationException)
                    {
                        var openingHour = new OpeningHour
                        {
                            Sauna = sauna,
                            DayOfWeek = (DayOfWeek)open.Day,
                            Open = TimeOnly.ParseExact(open.Time, "HHmm"),
                            Close = TimeOnly.ParseExact(close.Time, "HHmm")
                        };
                        await db.AddAsync(openingHour, ct);
                    }
                }
            }

            db.RemoveRange(sauna.OpeningHours.Where(oh => toRemove.Contains(oh.Id)));
            await db.SaveChangesAsync(ct);
            Thread.Sleep(3000);
        }

        return ConfirmationPayload.Ok();
    }
}
