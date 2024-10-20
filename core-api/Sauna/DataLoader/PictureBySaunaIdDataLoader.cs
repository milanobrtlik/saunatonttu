using Microsoft.EntityFrameworkCore;
using SaunatonttuAPI.Picture.DataLoader;

namespace SaunatonttuAPI.Sauna.DataLoader;

public class PictureBySaunaIdDataLoader : GroupedDataLoader<int, Picture.Entity.Picture>
{
    private static readonly string PictureCacheKey = GetCacheKeyType<PictureByIdDataLoader>();
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PictureBySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<ILookup<int, Picture.Entity.Picture>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.SaunaPictures
            .Where(sp => keys.Contains(sp.SaunaId))
            .OrderBy(sp => sp.PictureId)
            .Include(sp => sp.Picture)
            .ToListAsync(cancellationToken);

        TryAddToCache(PictureCacheKey, list, sp => sp.PictureId, sp => sp.Picture);

        return list.ToLookup(sp => sp.SaunaId, sp => sp.Picture);
    }
}
