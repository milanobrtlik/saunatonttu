using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Sauna.Entity;

namespace SaunatonttuAPI.Sauna.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class SaunaMutation
{
    [Authorize]
    public async Task<SaunaPayloadType> ManageMyFavorite(
        [ID(nameof(Entity.Sauna))] int saunaId,
        bool isMyFavorite,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var sauna = await db.Saunas
            .Where(s => s.Id.Equals(saunaId))
            .FirstOrDefaultAsync(ct);
        if (sauna is null) return SaunaPayloadType.NotFound(saunaId);

        var saunaUser = await db.SaunaUsers
            .Where(su => su.SaunaId.Equals(saunaId))
            .Where(su => su.UserId.Equals(currentUserId))
            .FirstOrDefaultAsync(ct);

        if (saunaUser is null && isMyFavorite)
        {
            saunaUser = new SaunaUser
            {
                Sauna = sauna,
                UserId = currentUserId,
                Kind = SaunaUserKind.Guest,
            };
            // sauna.Users.Add(saunaUser);
            await db.AddAsync(saunaUser, ct);
        }

        if (saunaUser is not null && isMyFavorite == false)
        {
            sauna.Users.Remove(saunaUser);
            db.SaunaUsers.Remove(saunaUser);
        }

        await db.SaveChangesAsync(ct);

        return SaunaPayloadType.Ok(sauna);
    }
}
