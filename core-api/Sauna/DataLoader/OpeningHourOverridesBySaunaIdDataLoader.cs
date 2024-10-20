using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.OpeningHours.DataLoader;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class OpeningHourOverridesBySaunaIdDataLoader : GroupedDataLoader<int, OpeningHourOverride>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private static readonly string OpeningHourOverrideCacheKey = GetCacheKeyType<OpeningHourOverrideByIdDataLoader>(); 

    public OpeningHourOverridesBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, OpeningHourOverride>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.OpeningHourOverrides
            .Where(oho => keys.Contains(oho.SaunaId))
            .ToListAsync(cancellationToken);
        
        TryAddToCache(OpeningHourOverrideCacheKey, list, item => item.Id, item => item);

        return list.ToLookup(oho => oho.SaunaId, oho => oho);
    }
}
