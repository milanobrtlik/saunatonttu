using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Price.DataLoader;
using SaunatonttuAPI.Price.Type;

namespace SaunatonttuAPI.Price;

public static class PriceConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<PriceType>()
            .AddDataLoader<CurrencyByIdDataLoader>()
            .AddDataLoader<PriceByIdDataLoader>()
            ;
    }
}
