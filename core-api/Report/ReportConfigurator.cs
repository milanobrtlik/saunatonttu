using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Report.GraphQl;

namespace SaunatonttuAPI.Report;

public static class ReportConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddTypeExtension<ReportMutation>()
            ;
    }
}
