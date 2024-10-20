using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.Price.DataLoader;

public class PriceByIdDataLoader : BatchDataLoader<int, Entity.Price>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PriceByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Price>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Prices
            .Where(p => keys.Contains(p.Id))
            .ToDictionaryAsync(p => p.Id, cancellationToken);
    }
}
