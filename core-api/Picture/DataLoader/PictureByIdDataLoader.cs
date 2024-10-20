using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.Picture.DataLoader;

public class PictureByIdDataLoader : BatchDataLoader<int, Entity.Picture>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PictureByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Picture>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Pictures
            .Where(p => keys.Contains(p.Id))
            .ToDictionaryAsync(p => p.Id, cancellationToken);
    }
}
