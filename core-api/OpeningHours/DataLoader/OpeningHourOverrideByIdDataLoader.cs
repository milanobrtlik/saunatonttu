using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.OpeningHours.DataLoader;

public class OpeningHourOverrideByIdDataLoader : BatchDataLoader<int, OpeningHourOverride>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public OpeningHourOverrideByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, OpeningHourOverride>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.OpeningHourOverrides
            .Where(oho => keys.Contains(oho.Id))
            .ToDictionaryAsync(oho => oho.Id, cancellationToken);
    }
}
