using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.OpeningHours.DataLoader;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class OpeningHoursBySaunaIdDataLoader : GroupedDataLoader<int, OpeningHour>
{
    private static readonly string OpeningHourCacheKey = GetCacheKeyType<OpeningHourByIdDataLoader>();
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public OpeningHoursBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<ILookup<int, OpeningHour>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.OpeningHours
            .Where(oh => keys.Contains(oh.SaunaId))
            .ToListAsync(cancellationToken);

        TryAddToCache(OpeningHourCacheKey, list, item => item.Id, item => item);

        return list.ToLookup(oh => oh.SaunaId, oh => oh);
    }
}
