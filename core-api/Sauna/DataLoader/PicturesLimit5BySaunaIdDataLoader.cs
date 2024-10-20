namespace SaunatonttuAPI.Sauna.DataLoader;

// public class PicturesLimit5BySaunaIdDataLoader : GroupedDataLoader<int, Picture.Entity.Picture>
// {
// private static readonly string PictureCacheKey = GetCacheKeyType<PictureByIdDataLoader>();
// private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
//
// public PicturesLimit5BySaunaIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
//     DataLoaderOptions? options = null) : base(batchScheduler, options)
// {
//     _dbContextFactory = dbContextFactory;
// }
//
// protected override async Task<ILookup<int, Picture.Entity.Picture>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
//     CancellationToken cancellationToken)
// {
//     await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
//
//     var list = await db.Saunas
//         .Where(s => keys.Contains(s.Id))
//         .SelectMany(s => s.SaunaPicture..OrderBy(p => p.Id).Take(2))
//         .ToListAsync(cancellationToken);
//
//     TryAddToCache(PictureCacheKey, list, item => item.Id, item => item);
//
//     return list.ToLookup(p => p.SaunaId, p => p);
// }
// }
