namespace SaunatonttuAPI.VisitHistory.GraphQL;

public record VisitHistoryCreateInput(
    [property: ID(nameof(Sauna.Entity.Sauna))]
    int SaunaId,
    DateTime VisitedAt,
    int Cycles,
    int Duration,
    Optional<int?> Rating,
    Optional<string?> Review,
    Optional<string?> Note
);

public record VisitHistoryUpdateInput(
    [ID(nameof(Entity.VisitHistory))] int VisitId,
    Optional<DateTime?> VisitedAt,
    Optional<int?> Cycles,
    Optional<int?> Duration,
    Optional<int?> Rating,
    Optional<string?> Review,
    Optional<string?> Note
);
