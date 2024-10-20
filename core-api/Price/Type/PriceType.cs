using SaunatonttuAPI.Price.DataLoader;
using SaunatonttuAPI.Price.Entity;

namespace SaunatonttuAPI.Price.Type;

public class PriceType : ObjectType<Entity.Price>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Price> descriptor)
    {
        descriptor.Field(p => p.Currency)
            .ResolveWith<PriceResolvers>(r => r.ResolveCurrency(default!, default!, default!));
    }
}

internal class PriceResolvers
{
    public async Task<Currency> ResolveCurrency(
        [Parent] Entity.Price price,
        CurrencyByIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(price.CurrencyId, ct);
}
