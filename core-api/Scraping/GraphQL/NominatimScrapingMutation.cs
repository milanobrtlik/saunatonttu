using System.Text.Json;
using Microsoft.EntityFrameworkCore;
using Nominatim.API.Geocoders;
using Nominatim.API.Models;
using Nominatim.API.Web;
using SaunatonttuAPI.Scraping.Entity;

namespace SaunatonttuAPI.Scraping.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class NominatimScrapingMutation
{
    public async Task<ConfirmationPayload> ScrapeNominatim(
        [Service] IHttpClientFactory httpClientFactory,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var webInterface = new NominatimWebInterface(httpClientFactory);
        var forwardGeocoder = new ForwardGeocoder(webInterface, "https://nominatim.openstreetmap.org/");

        const string path = "C:\\Projects\\saunatonttu-api\\cities.json";
        var json = await File.ReadAllTextAsync(path, ct);
        var cities = JsonSerializer.Deserialize<List<string>>(json);
        if (cities is null) return ConfirmationPayload.Ok();


        foreach (var city in cities)
        {
            Thread.Sleep(1100);
            var request = new ForwardGeocodeRequest
            {
                City = city,
                Country = "Czechia",
            };
            var result = await forwardGeocoder.Geocode(request);
            var textSearchRequest = await db.TextSearchRequests
                .Where(tsr => Math.Abs(tsr.Longitude - result.First().Longitude) < 0.009)
                .Where(tsr => Math.Abs(tsr.Latitude - result.First().Latitude) < 0.009)
                .FirstOrDefaultAsync(ct);
            
            if(textSearchRequest is not null) continue;
            
            textSearchRequest = new TextSearchRequest
            {
                City = result.First().DisplayName,
                Latitude = result.First().Latitude,
                Longitude = result.First().Longitude,
                Radius = 7000,
            };

            await db.AddAsync(textSearchRequest, ct);
            await db.SaveChangesAsync(ct);
        }

        return ConfirmationPayload.Ok();
    }
}
