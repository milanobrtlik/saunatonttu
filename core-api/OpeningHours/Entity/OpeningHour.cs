using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.OpeningHours.Entity;

[Table("opening_hour")]
public class OpeningHour
{
    [ID]public int Id { get; set; }
    public DayOfWeek DayOfWeek { get; set; }
    public TimeOnly Open { get; set; }
    public TimeOnly Close { get; set; }
    [GraphQLIgnore]public int SaunaId { get; set; }
    [GraphQLIgnore]public Sauna.Entity.Sauna Sauna { get; set; } = default!;
}
