using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.VisitHistory.DataLoader;

public class VisitHistoryByIdDataLoader : BatchDataLoader<int, Entity.VisitHistory>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public VisitHistoryByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.VisitHistory>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.VisitsLog
            .Where(vl => keys.Contains(vl.Id))
            .ToDictionaryAsync(vl => vl.Id, cancellationToken);
    }
}
