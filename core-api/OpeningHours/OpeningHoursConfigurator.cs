using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.OpeningHours.DataLoader;

namespace SaunatonttuAPI.OpeningHours;

public static class OpeningHoursConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddDataLoader<OpeningHourByIdDataLoader>()
            .AddDataLoader<OpeningHourOverrideByIdDataLoader>()
            ;
    }
}
