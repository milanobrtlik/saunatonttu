using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Attribute.Entity;

[Table("attribute")]
public class Attribute
{
    public int Id { get; set; }
    public string Name { get; set; } = default!;
    public string? Description { get; set; }
    public string Icon { get; set; } = default!;
}
