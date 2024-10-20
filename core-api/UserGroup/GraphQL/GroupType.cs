using SaunatonttuAPI.User.GraphQL;
using SaunatonttuAPI.UserGroup.DataLoader;
using SaunatonttuAPI.UserGroup.Entity;

namespace SaunatonttuAPI.UserGroup.GraphQL;

public class GroupType : ObjectType<Group>
{
    protected override void Configure(IObjectTypeDescriptor<Group> descriptor)
    {
        descriptor.Field("users")
            .Type<ListType<UserType>>()
            .ResolveWith<GroupResolvers>(r => r.ResolveUsers(default!, default!, default!));
    }
}

internal class GroupResolvers
{
    public async Task<IEnumerable<User.Entity.User>> ResolveUsers(
        [Parent] Group group,
        UsersByGroupIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(group.Id, ct);
}
