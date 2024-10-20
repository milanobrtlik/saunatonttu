using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Auth.Jwt;
using SaunatonttuAPI.UserGroup.Entity;

namespace SaunatonttuAPI.UserGroup.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class GroupMutation
{
    [Authorize]
    public async Task<GroupPayload> GroupCreate(
        [GlobalState] int currentUserId,
        GroupCreateInputType input,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .FirstAsync(ct);

        var group = new Group
        {
            Name = input.Name,
        };
        var userGroup = new Entity.UserGroup
        {
            Group = group,
            User = user,
            Kind = UserGroupKind.Founder,
        };
        await db.AddAsync(group, ct);
        await db.SaveChangesAsync(ct);

        return GroupPayload.Ok(group);
    }

    [Authorize]
    public async Task<GroupInvitationPayload> GroupInvite(
        [GlobalState] int currentUserId,
        [ID] int groupId,
        AppDbContext db,
        [Service] JwtFactory jwtFactory,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .Include(u => u.UserGroups)
            .ThenInclude(ug => ug.Group)
            .FirstAsync(ct);
        var group = user.UserGroups
            .Where(ug => ug.Kind.Equals(UserGroupKind.Founder))
            .FirstOrDefault(ug => ug.Group.Id.Equals(groupId))
            ?.Group;
        return group is null
            ? GroupInvitationPayload.PermissionDenied()
            : GroupInvitationPayload.Ok(jwtFactory.CreateGroupInvitationToken(group));
    }

    [Authorize]
    public async Task<GroupPayload> GroupUpdate(
        [GlobalState] int currentUserId,
        GroupUpdateInputType input,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .Include(u => u.UserGroups)
            .ThenInclude(ug => ug.Group)
            .FirstAsync(ct);
        var group = user.UserGroups
            .Where(ug => ug.Kind.Equals(UserGroupKind.Founder))
            .FirstOrDefault(ug => ug.Group.Id.Equals(input.GroupId))
            ?.Group;
        if (group is null) return GroupPayload.PermissionDenied();

        if (input.Name.HasValue) group.Name = input.Name.Value!;

        await db.SaveChangesAsync(ct);

        return GroupPayload.Ok(group);
    }

    [Authorize]
    public async Task<GroupPayload> GroupExpelUser(
        [GlobalState] int currentUserId,
        GroupUserExpelInputType input,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .Include(u => u.UserGroups)
            .ThenInclude(ug => ug.Group)
            .FirstAsync(ct);
        var group = user.UserGroups
            .Where(ug => ug.Kind.Equals(UserGroupKind.Founder))
            .FirstOrDefault(ug => ug.Group.Id.Equals(input.GroupId))
            ?.Group;
        if (group is null) return GroupPayload.PermissionDenied();

        var userGroupToRemove = group
            .UserGroups
            .FirstOrDefault(ug => ug.UserId.Equals(input.UserId));
        if (userGroupToRemove is null) return GroupPayload.PermissionDenied();

        db.Remove(userGroupToRemove);

        await db.SaveChangesAsync(ct);

        return GroupPayload.Ok(group);
    }

    [Authorize]
    public async Task<GroupPayload> GroupJoin(
        [GlobalState] int currentUserId,
        string token,
        AppDbContext db,
        [Service] JwtVerifier jwtVerifier,
        CancellationToken ct
    )
    {
        var verifiedToken = jwtVerifier.Verify(token);
        if (verifiedToken is null) return GroupPayload.PermissionDenied();
        var securityToken = verifiedToken as JwtSecurityToken;
        var groupString = securityToken!
            .Claims
            .First(c => c.Type.Equals(ClaimTypes.NameIdentifier))
            .Value
            .Replace("group-", "");
        var groupId = int.Parse(groupString);

        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .FirstAsync(ct);
        var group = await db.Groups
            .Where(g => g.Id.Equals(groupId))
            .FirstOrDefaultAsync(ct);
        if (group is null) return GroupPayload.PermissionDenied();
        var userGroup = new Entity.UserGroup
        {
            Group = group,
            User = user,
            Kind = UserGroupKind.Member,
        };
        await db.AddAsync(userGroup, ct);
        await db.SaveChangesAsync(ct);

        return GroupPayload.Ok(group);
    }

    [Authorize]
    public async Task<ConfirmationPayload> GroupLeave(
        [GlobalState] int currentUserId,
        [ID] int groupId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Id.Equals(currentUserId))
            .Include(u => u.UserGroups)
            .ThenInclude(ug => ug.Group)
            .FirstAsync(ct);
        var userGroup = user.UserGroups
            .FirstOrDefault(ug => ug.Group.Id.Equals(groupId));
        if (userGroup is null) return ConfirmationPayload.PermissionDenied();
        db.Remove(userGroup);
        await db.SaveChangesAsync(ct);

        return ConfirmationPayload.Ok();
    }
}
