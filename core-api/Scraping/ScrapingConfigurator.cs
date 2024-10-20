using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Scraping.GraphQL;

namespace SaunatonttuAPI.Scraping;

public static class ScrapingConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddTypeExtension<NominatimScrapingMutation>()
            .AddTypeExtension<TextSearchScrapeMutation>()
            .AddTypeExtension<PlaceDetailScrapeMutation>()
            .AddTypeExtension<PhotosScrapingMutation>()
            ;
    }
}
