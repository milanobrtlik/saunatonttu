using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Attribute.DataLoader;

namespace SaunatonttuAPI.Attribute;

public static class AttributeConfigurator
{
    public static void ConfigureGraphQ(IRequestExecutorBuilder builder)
    {
        builder
            .AddDataLoader<AttributeByIdDataLoader>()
            ;
    }
}
