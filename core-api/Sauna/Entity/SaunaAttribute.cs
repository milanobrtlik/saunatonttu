using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Sauna.Entity;

[Table("sauna_attribute")]
public class SaunaAttribute
{
    public int SaunaId { get; set; }
    public Sauna Sauna { get; set; } = default!;
    public int AttributeId { get; set; }
    public Attribute.Entity.Attribute Attribute { get; set; } = default!;
}
