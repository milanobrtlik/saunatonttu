using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.Attribute.DataLoader;

public class AttributeByIdDataLoader : BatchDataLoader<int, Entity.Attribute>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public AttributeByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Attribute>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Attributes
            .Where(a => keys.Contains(a.Id))
            .ToDictionaryAsync(a => a.Id, a => a, cancellationToken);
    }
}
