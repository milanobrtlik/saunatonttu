using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Picture.DataLoader;
using SaunatonttuAPI.Picture.GraphQL;
using SaunatonttuAPI.Picture.Service;

namespace SaunatonttuAPI.Picture;

public static class PictureConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<PictureType>()
            .AddDataLoader<PictureByIdDataLoader>()
            ;
    }

    public static void Configure(IServiceCollection services, IConfiguration configuration)
    {
        services
            .AddTransient<FileIdGenerator>()
            .AddTransient<S3Uploader>()
            ;
    }
}
