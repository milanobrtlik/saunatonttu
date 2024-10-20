using SaunatonttuAPI.OpeningHours.Entity;
using SaunatonttuAPI.Picture.GraphQL;
using SaunatonttuAPI.Sauna.DataLoader;

namespace SaunatonttuAPI.Sauna.GraphQL;

public class SaunaType : ObjectType<Entity.Sauna>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Sauna> descriptor)
    {
        descriptor
            .Field(s => s.OpeningHours)
            .ResolveWith<SaunaResolvers>(r => r.ResolveOpeningHours(default!, default!, default!))
            ;
        
        descriptor
            .Field(s => s.OpeningHourOverrides)
            .ResolveWith<SaunaResolvers>(r => r.ResolveOpeningHours(default!, default!, default!))
            ;

        descriptor
            .Field(s => s.SaunaPicture)
            .Name("pictures")
            .UsePaging<PictureType>()
            .ResolveWith<SaunaResolvers>(r => r.ResolvePictures(default!, default!, default!))
            ;

        descriptor
            .Field(s => s.SaunaPrices)
            .Name("prices")
            .ResolveWith<SaunaResolvers>(r => r.ResolvePrices(default!, default!, default))
            ;

        descriptor
            .Field(s => s.SaunaAttributes)
            .Name("attributes")
            .ResolveWith<SaunaResolvers>(r => r.ResolveAttributes(default!, default!, default!))
            ;

        descriptor
            .Field("isMyFavorite")
            .Authorize()
            .Type<NonNullType<BooleanType>>()
            .ResolveWith<SaunaResolvers>(r => r.ResolveMyFavorite(default!, default!, default!, default!))
            ;
    }
}

internal class SaunaResolvers
{
    public async Task<IEnumerable<OpeningHour>> ResolveOpeningHours(
        [Parent] Entity.Sauna sauna,
        OpeningHoursBySaunaIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(sauna.Id, ct);
    
    public async Task<IEnumerable<OpeningHourOverride>> ResolveOpeningHourOverrides(
        [Parent] Entity.Sauna sauna,
        OpeningHourOverridesBySaunaIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(sauna.Id, ct);

    public async Task<IEnumerable<Picture.Entity.Picture>> ResolvePictures(
        [Parent] Entity.Sauna sauna,
        PictureBySaunaIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(sauna.Id, ct);

    public async Task<IEnumerable<Price.Entity.Price>> ResolvePrices(
        [Parent] Entity.Sauna sauna,
        PriceBySaunaIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(sauna.Id, ct);

    public async Task<IEnumerable<Attribute.Entity.Attribute>> ResolveAttributes(
        [Parent] Entity.Sauna sauna,
        AttributeBySaunaIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(sauna.Id, ct);

    public async Task<bool> ResolveMyFavorite(
        [Parent] Entity.Sauna sauna,
        SaunaUserBySaunaIdDataLoader dataLoader,
        [GlobalState] int currentUserId,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(new SaunaUserBySaunaIdKey(sauna.Id, currentUserId), ct) is not null;
}

public class SaunaPayloadType : Payload
{
    public SaunaPayloadType(IEnumerable<UserError> errors) : base(errors)
    {
    }

    public SaunaPayloadType(Entity.Sauna sauna)
    {
        Sauna = sauna;
    }

    public Entity.Sauna? Sauna { get; }

    public static SaunaPayloadType NotFound(int id)
    {
        return new SaunaPayloadType(new[] { UserError.NotFound($"Sauna #{id} not found.") });
    }

    public static SaunaPayloadType Ok(Entity.Sauna sauna)
    {
        return new SaunaPayloadType(sauna);
    }
}
