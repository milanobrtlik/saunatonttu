using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Price.Entity;

namespace SaunatonttuAPI.Price.DataLoader;

public class CurrencyByIdDataLoader : BatchDataLoader<int, Currency>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public CurrencyByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Currency>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Currencies
            .Where(c => keys.Contains(c.Id))
            .ToDictionaryAsync(c => c.Id, cancellationToken);
    }
}
