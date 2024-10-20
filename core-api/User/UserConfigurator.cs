using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.User.GraphQL;

namespace SaunatonttuAPI.User;

public static class UserConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<UserType>()
            .AddTypeExtension<UserQuery>()
            ;
    }
}
