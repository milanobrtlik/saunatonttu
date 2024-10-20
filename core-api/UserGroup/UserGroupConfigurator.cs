using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.UserGroup.DataLoader;
using SaunatonttuAPI.UserGroup.GraphQL;

namespace SaunatonttuAPI.UserGroup;

public static class UserGroupConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<GroupType>()
            .AddTypeExtension<GroupMutation>()
            .AddDataLoader<UsersByGroupIdDataLoader>()
            ;
    }
}
