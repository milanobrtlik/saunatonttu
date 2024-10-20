using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.UserGroup.DataLoader;

public class UsersByGroupIdDataLoader : GroupedDataLoader<int, User.Entity.User>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public UsersByGroupIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, User.Entity.User>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.UserGroups
            .Where(ug => keys.Contains(ug.GroupId))
            .Include(ug => ug.User)
            .ToListAsync(cancellationToken);

        return list.ToLookup(ug => ug.GroupId, ug => ug.User);
    }
}
