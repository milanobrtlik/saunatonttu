using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class SaunaByIdDataLoader : BatchDataLoader<int, Entity.Sauna>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public SaunaByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Sauna>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Saunas
            .Where(s => keys.Contains(s.Id))
            .ToDictionaryAsync(sauna => sauna.Id, cancellationToken);
    }
}
