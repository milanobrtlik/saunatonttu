using System.Reactive.Linq;
using System.Text.Json;
using System.Text.Json.Serialization;
using GoogleApi;
using GoogleApi.Entities.Places.Photos.Request;
using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Picture.Service;
using SaunatonttuAPI.Sauna.Entity;

namespace SaunatonttuAPI.Scraping.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class PhotosScrapingMutation
{
    private readonly S3Uploader _s3Uploader;
    private readonly FileIdGenerator _fileIdGenerator;
    private readonly IConfiguration _configuration;
    private readonly GooglePlaces.PhotosApi _photosApi;

    public PhotosScrapingMutation(
        S3Uploader s3Uploader,
        FileIdGenerator fileIdGenerator,
        IConfiguration configuration,
        GooglePlaces.PhotosApi photosApi)
    {
        _s3Uploader = s3Uploader;
        _fileIdGenerator = fileIdGenerator;
        _configuration = configuration;
        _photosApi = photosApi;
    }

    public async Task<ConfirmationPayload> ScrapePhotos(
        AppDbContext db,
        CancellationToken ct
    )
    {
        var saunaList = await db.Saunas
            .Where(s => s.GooglePlaceDetailResponse != null)
            .OrderBy(s => s.Id)
            .ToListAsync(ct);
        foreach (var sauna in saunaList)
        {
            var placeDetail = JsonSerializer.Deserialize<Root>(sauna.GooglePlaceDetailResponse!);
            if (placeDetail?.Result.Photos is null) continue;
            var spList = await db.SaunaPictures
                .Where(sp => sp.SaunaId.Equals(sauna.Id))
                .Include(sp => sp.Picture)
                .ToListAsync(ct);
            foreach (var photo in placeDetail.Result.Photos)
            {
                if (spList.Any(sp => sp.Picture.GoogleReference?.Equals(photo.Reference) ?? false)) continue;
                Picture.Entity.Picture picture;
                try
                {
                    picture = new Picture.Entity.Picture
                    {
                        GoogleReference = photo.Reference,
                        FullSizeUrl = await Upload(photo, 1600, ct),
                        ThumbnailUrl = await Upload(photo, 96, ct),
                    };
                }
                catch (Exception)
                {
                    continue;
                }

                var saunaPicture = new SaunaPicture
                {
                    Sauna = sauna,
                    Picture = picture,
                };
                await db.AddAsync(saunaPicture, ct);
                await db.SaveChangesAsync(ct);
            }
        }

        return ConfirmationPayload.Ok();
    }

    public async Task<ConfirmationPayload> PhotosCleaner(
        AppDbContext db,
        CancellationToken ct
    )
    {
        var observable = _s3Uploader.List("pic/", ct);
        await foreach (var item in observable)
        {
            var pic = await db.Pictures
                .Where(p => p.ThumbnailUrl.EndsWith(item.Key) || p.FullSizeUrl.EndsWith(item.Key))
                .FirstOrDefaultAsync(ct);
            if(pic is not null) continue;
            await _s3Uploader.DeleteFileAsync(item.Key, ct);
        }
        
        return ConfirmationPayload.Ok();
    }

    private async Task<string> Upload(Photo photo, int maxSize, CancellationToken ct)
    {
        var request = new PlacesPhotosRequest
        {
            Key = _configuration.GetValue<string>("ApiKey"),
            PhotoReference = photo.Reference,
            MaxWidth = photo.Width > photo.Height ? Math.Min(photo.Width, maxSize) : null,
            MaxHeight = photo.Height >= photo.Width ? Math.Min(photo.Height, maxSize) : null,
        };
        var response = await _photosApi.QueryAsync(request, ct);
        var objectId = _fileIdGenerator.Generate("pic");

        return await _s3Uploader.UploadFileAsync(response.Stream, objectId, ct);
    }
}

internal class Root
{
    [JsonPropertyName("result")] public virtual Result Result { get; set; } = default!;
}

internal class Result
{
    [JsonPropertyName("photos")] public virtual List<Photo> Photos { get; set; } = default!;
}

internal class Photo
{
    [JsonPropertyName("height")] public virtual int Height { get; set; }
    [JsonPropertyName("width")] public virtual int Width { get; set; }
    [JsonPropertyName("photo_reference")] public virtual string Reference { get; set; } = default!;
}
