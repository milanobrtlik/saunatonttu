using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.OpeningHours.DataLoader;

public class OpeningHourByIdDataLoader : BatchDataLoader<int, OpeningHour>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public OpeningHourByIdDataLoader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, OpeningHour>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.OpeningHours
            .Where(ohd => keys.Contains(ohd.Id))
            .ToDictionaryAsync(ohd => ohd.Id, cancellationToken);
    }
}
