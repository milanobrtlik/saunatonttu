using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Picture.Entity;

[Table("picture")]
public class Picture
{
    [ID]public int Id { get; set; }
    [StringLength(768)]public string FullSizeUrl { get; set; } = default!;
    [StringLength(768)]public string ThumbnailUrl { get; set; } = default!;
    [GraphQLIgnore]public string? GoogleReference { get; set; }
}
