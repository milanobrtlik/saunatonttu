using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class SaunaUserBySaunaIdKey
{
    public int SaunaId { get; }
    public int UserId { get; }

    public SaunaUserBySaunaIdKey(int saunaId, int userId)
    {
        SaunaId = saunaId;
        UserId = userId;
    }
}

public class SaunaUserBySaunaIdDataLoader : BatchDataLoader<SaunaUserBySaunaIdKey, User.Entity.User?>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public SaunaUserBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<SaunaUserBySaunaIdKey, User.Entity.User?>> LoadBatchAsync(
        IReadOnlyList<SaunaUserBySaunaIdKey> keys, CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var saunaIds = keys.Select(k => k.SaunaId).ToList();
        var userIds = keys.Select(k => k.UserId).ToList();

        var list = await db.SaunaUsers
            .Where(su => saunaIds.Contains(su.SaunaId))
            .Where(su => userIds.Contains(su.UserId))
            .Include(su => su.User)
            .ToListAsync(cancellationToken);

        return keys.ToDictionary(
            k => k,
            k => list.FirstOrDefault(su => su.SaunaId.Equals(k.SaunaId) && su.UserId.Equals(k.UserId))?.User);
    }
}
