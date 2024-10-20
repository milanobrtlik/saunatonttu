using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Attribute.DataLoader;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class AttributeBySaunaIdDataLoader : GroupedDataLoader<int, Attribute.Entity.Attribute>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private static readonly string AttributeCacheKey = GetCacheKeyType<AttributeByIdDataLoader>();

    public AttributeBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, Attribute.Entity.Attribute>> LoadGroupedBatchAsync(
        IReadOnlyList<int> keys, CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.SaunaAttributes
            .Where(sa => keys.Contains(sa.SaunaId))
            .OrderBy(sa => sa.AttributeId)
            .Include(sa => sa.Attribute)
            .ToListAsync(cancellationToken);

        TryAddToCache(AttributeCacheKey, list, sa => sa.AttributeId, sa => sa.Attribute);

        return list.ToLookup(sa => sa.SaunaId, sa => sa.Attribute);
    }
}
