using System.Runtime.CompilerServices;
using Minio;
using Minio.DataModel;
using Minio.DataModel.Args;

namespace SaunatonttuAPI.Picture.Service;

public class S3Uploader
{
    private readonly IMinioClient _s3Client;
    private readonly IConfigurationSection _config;
    private readonly string _url;

    public S3Uploader(IConfiguration configuration)
    {
        _config = configuration.GetSection("S3");
        _url = _config.GetSection("ServiceUrl").Value!;
        _s3Client = new MinioClient()
            .WithEndpoint(_url)
            .WithCredentials(_config.GetSection("AccessKey").Value!, _config.GetSection("SecretKey").Value!)
            .WithRegion("pl-waw")
            .WithSSL()
            .Build();
    }

    public async Task<string> UploadFileAsync(Stream inputStream, string objectId, CancellationToken ct)
    {
        var bucketName = _config.GetSection("BucketName").Value;

        var args = new PutObjectArgs()
            .WithStreamData(inputStream)
            .WithObjectSize(inputStream.Length)
            .WithBucket(bucketName)
            .WithObject(objectId)
            .WithHeaders(new Dictionary<string, string> { { "x-amz-acl", "public-read" } });

        await _s3Client.PutObjectAsync(args, ct);

        return $"https://{bucketName}.{_url}/{objectId}";
    }

    public async Task DeleteFileAsync(string path, CancellationToken ct)
    {
        var bucketName = _config.GetSection("BucketName").Value;
        var objectId = path.Replace($"https://{bucketName}.{_url}/", "");
        var args = new RemoveObjectArgs()
            .WithBucket(bucketName)
            .WithObject(objectId);

        await _s3Client.RemoveObjectAsync(args, ct);
    }

    public ConfiguredCancelableAsyncEnumerable<Item> List(
        string prefix,
        CancellationToken ct
    )
    {
        var bucketName = _config.GetSection("BucketName").Value;
        var listObjectArgs = new ListObjectsArgs()
                .WithBucket(bucketName)
                .WithPrefix(prefix)
            ;
        return _s3Client.ListObjectsEnumAsync(listObjectArgs, ct).ConfigureAwait(false);
    }
}
