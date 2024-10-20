namespace SaunatonttuAPI.VisitHistory.GraphQL;

public class VisitHistoryPayload : Payload
{
    public Entity.VisitHistory? VisitHistory { get; }

    public VisitHistoryPayload(Entity.VisitHistory visitHistory)
    {
        VisitHistory = visitHistory;
    }

    public VisitHistoryPayload(IEnumerable<UserError> errors) : base(errors)
    {
    }

    public static VisitHistoryPayload Ok(Entity.VisitHistory visitHistory)
    {
        return new VisitHistoryPayload(visitHistory);
    }

    public static VisitHistoryPayload SaunaNotFound(int id)
    {
        return new VisitHistoryPayload(new[] { UserError.NotFound($"Sauna #{id} not found.") });
    }

    public static VisitHistoryPayload NotFound(int id)
    {
        return new VisitHistoryPayload(new[] { UserError.NotFound($"Visit log entry #{id} not found.") });
    }
}
