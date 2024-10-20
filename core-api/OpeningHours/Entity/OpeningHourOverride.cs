using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.OpeningHours.Entity;

[Table("opening_hour_override")]
public class OpeningHourOverride
{
    [ID]public int Id { get; set; }
    public DateTime Open { get; set; }
    public DateTime Close { get; set; }
    public string Explanation { get; set; } = default!;
    [GraphQLIgnore]public int SaunaId { get; set; }
    [GraphQLIgnore]public Sauna.Entity.Sauna Sauna { get; set; } = default!;
}
