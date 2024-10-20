using SaunatonttuAPI.Sauna.DataLoader;

namespace SaunatonttuAPI.VisitHistory.GraphQL;

public class VisitHistoryType : ObjectType<Entity.VisitHistory>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.VisitHistory> descriptor)
    {
        descriptor.Field(vh => vh.Sauna)
            .ResolveWith<VisitHistoryResolvers>(r => r.ResolveSauna(default!, default!, default!));
    }
}

internal class VisitHistoryResolvers
{
    public async Task<Sauna.Entity.Sauna> ResolveSauna(
        [Parent] Entity.VisitHistory visitHistory,
        SaunaByIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(visitHistory.SaunaId, ct);
}
