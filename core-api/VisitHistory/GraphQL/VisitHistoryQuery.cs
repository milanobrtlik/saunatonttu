using HotChocolate.Authorization;

namespace SaunatonttuAPI.VisitHistory.GraphQL;

[ExtendObjectType(typeof(Query))]
public class VisitHistoryQuery
{
    [Authorize]
    [UsePaging(MaxPageSize = 20)]
    public IQueryable<Entity.VisitHistory> MyVisits(
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct
    ) => db.VisitsLog
        .Where(vh => vh.UserId.Equals(currentUserId))
        .OrderByDescending(vh => vh.Id)
    ;
}
