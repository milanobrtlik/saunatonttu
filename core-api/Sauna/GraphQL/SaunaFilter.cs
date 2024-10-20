namespace SaunatonttuAPI.Sauna.GraphQL;

public record SaunaFilter(
    Optional<Position?> Position,
    Optional<string?> Fulltext
);

public record Position(
    float Lat,
    float Lon
);
