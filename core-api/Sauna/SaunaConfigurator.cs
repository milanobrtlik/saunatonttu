using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Sauna.DataLoader;
using SaunatonttuAPI.Sauna.GraphQL;

namespace SaunatonttuAPI.Sauna;

public static class SaunaConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<SaunaType>()
            .AddTypeExtension<SaunaQuery>()
            .AddTypeExtension<SaunaMutation>()
            .AddDataLoader<PriceBySaunaIdDataLoader>()
            .AddDataLoader<PictureBySaunaIdDataLoader>()
            .AddDataLoader<OpeningHoursBySaunaIdDataLoader>()
            .AddDataLoader<OpeningHourOverridesBySaunaIdDataLoader>()
            .AddDataLoader<AttributeBySaunaIdDataLoader>()
            .AddDataLoader<SaunaUserBySaunaIdDataLoader>()
            .AddDataLoader<SaunaByIdDataLoader>()
            ;
    }
}
