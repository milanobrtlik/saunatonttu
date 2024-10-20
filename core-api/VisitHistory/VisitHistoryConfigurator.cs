using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.VisitHistory.DataLoader;
using SaunatonttuAPI.VisitHistory.GraphQL;

namespace SaunatonttuAPI.VisitHistory;

public static class VisitHistoryConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddDataLoader<VisitHistoryByIdDataLoader>()
            .AddTypeExtension<VisitHistoryQuery>()
            .AddTypeExtension<VisitHistoryMutation>()
            .AddType<VisitHistoryType>()
            ;
    }
}
