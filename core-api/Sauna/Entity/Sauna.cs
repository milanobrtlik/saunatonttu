using System.ComponentModel.DataAnnotations.Schema;
using NetTopologySuite.Geometries;
using NpgsqlTypes;
using SaunatonttuAPI.OpeningHours.Entity;

namespace SaunatonttuAPI.Sauna.Entity;

[Table("sauna")]
public class Sauna
{
    [ID]public int Id { get; set; }
    public string Name { get; set; } = default!;
    public string? Address { get; set; }
    public string? Email { get; set; } 
    public string? Phone { get; set; }
    public string? Url { get; set; } 
    public string? LeadParagraph { get; set; } 
    public string? Content { get; set; } 
    public bool IsPrivate { get; set; }
    [GraphQLIgnore]public ICollection<SaunaUser> Users { get; set; } = default!;
    public Point Location { get; set; } = default!;
    public ICollection<OpeningHour> OpeningHours { get; set; } = default!;
    public ICollection<OpeningHourOverride> OpeningHourOverrides { get; set; } = default!;
    [GraphQLIgnore] public ICollection<SaunaPicture> SaunaPicture { get; set; } = default!;
    [GraphQLIgnore] public ICollection<SaunaPrice> SaunaPrices { get; set; } = default!;
    [GraphQLIgnore]public NpgsqlTsVector SearchVector { get; set; } = default!;
    [GraphQLIgnore] public ICollection<SaunaAttribute> SaunaAttributes { get; set; } = default!;
    [GraphQLIgnore] public string? GoogleId { get; set; }
    [GraphQLIgnore] public string? GooglePlaceDetailResponse { get; set; }
    [GraphQLIgnore] public DateTime? LastGoogleUpdate { get; set; }
}
