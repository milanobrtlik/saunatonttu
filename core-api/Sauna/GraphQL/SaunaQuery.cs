using System.Linq.Expressions;
using Microsoft.EntityFrameworkCore;
using NetTopologySuite.Geometries;

namespace SaunatonttuAPI.Sauna.GraphQL;

[ExtendObjectType(typeof(Query))]
public class SaunaQuery
{
    [UsePaging(MaxPageSize = 20)]
    public IQueryable<Entity.Sauna> SaunaList(
        SaunaFilter? where,
        AppDbContext db
    )
    {
        var queryAble = db.Saunas.AsQueryable();
        var ordering = new List<Expression<Func<Entity.Sauna, dynamic>>>();
        
        if (where is not null && where.Position.HasValue)
        {
            var point = new Point(where.Position.Value!.Lat, where.Position.Value!.Lon);
            queryAble = queryAble
                .Where(s => s.Location.Distance(point) < 0.01 * (35 / 1.11)) // 0.01 is 1.11km
            ;
            ordering.Add(s => s.Location.Distance(point));
        }

        if (where is not null && where.Fulltext.HasValue)
        {
            var query = where
                .Fulltext
                .Value!
                .Split(" ")
                .Where(i => i.Length > 0)
                .ToList()
                .Select(s => $"{s}:*");
            var kk = string.Join(" & ", query);
            queryAble = queryAble
                    .Where(s => s.SearchVector.RankCoverDensity(EF.Functions.ToTsQuery(kk)) > 0)
                ;
            ordering.Add(s => s.SearchVector.RankCoverDensity(EF.Functions.ToTsQuery(kk)));
        }
        
        ordering.Add(s => s.Id);
        var ordered = queryAble.OrderBy(ordering.First());
        ordering.RemoveAt(0);
        foreach (var expression in ordering)
        {
            ordered = ordered.ThenBy(expression);
        }

        return ordered;
    }

    public async Task<Entity.Sauna?> SaunaDetail(
        [ID(nameof(Entity.Sauna))] int id,
        AppDbContext db,
        CancellationToken ct
    ) => await db.Saunas
        .Where(s => s.Id.Equals(id))
        .FirstOrDefaultAsync(ct);
}
