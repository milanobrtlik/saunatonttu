using SaunatonttuAPI.UserGroup.Entity;

namespace SaunatonttuAPI.UserGroup.GraphQL;

public class GroupPayload : Payload
{
    public GroupPayload(IEnumerable<UserError> errors) : base(errors)
    {
    }

    public GroupPayload(Group group)
    {
        Group = group;
    }

    public Group? Group { get; }

    public static GroupPayload Ok(Group group)
    {
        return new GroupPayload(group);
    }

    public static GroupPayload NotFound(int id)
    {
        return new GroupPayload(new[] { UserError.NotFound($"Group #{id} not found.") });
    }

    public static GroupPayload PermissionDenied()
    {
        return new GroupPayload(new[] { UserError.PermissionDenied() });
    }
}

public class GroupInvitationPayload : Payload
{
    public GroupInvitationPayload(IEnumerable<UserError> errors) :base(errors) {}

    public GroupInvitationPayload(string token)
    {
        Token = token;
    }
    
    public string? Token { get; }

    public static GroupInvitationPayload Ok(string token)
    {
        return new GroupInvitationPayload(token);
    }

    public static GroupInvitationPayload PermissionDenied()
    {
        return new GroupInvitationPayload(new[] { UserError.PermissionDenied() });
    }
}
