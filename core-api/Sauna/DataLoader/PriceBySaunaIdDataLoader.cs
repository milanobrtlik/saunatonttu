using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Price.DataLoader;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class PriceBySaunaIdDataLoader : GroupedDataLoader<int, Price.Entity.Price>
{
    private static readonly string PriceCacheKey = GetCacheKeyType<PriceByIdDataLoader>();
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PriceBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<ILookup<int, Price.Entity.Price>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.SaunaPrices
            .Where(sp => keys.Contains(sp.SaunaId))
            .Include(sp => sp.Price)
            .ToListAsync(cancellationToken);

        TryAddToCache(PriceCacheKey, list, sp => sp.PriceId, sp => sp.Price);

        return list.ToLookup(sp => sp.SaunaId, sp => sp.Price);
    }
}
