using SaunatonttuAPI.UserGroup.Entity;

namespace SaunatonttuAPI.UserGroup.GraphQL;

public record GroupCreateInputType(
    string Name
);

public record GroupUpdateInputType(
    [property: ID(nameof(Group))] int GroupId,
    Optional<string?> Name
);

public record GroupUserExpelInputType(
    [property: ID(nameof(Group))] int GroupId,
    [property: ID(nameof(User.Entity.User))] int UserId
);
