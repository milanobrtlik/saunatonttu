using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.VisitHistory.Entity;

[Table("visit_history")]
public class VisitHistory
{
    [ID]public int Id { get; set; }
    [GraphQLIgnore]public int SaunaId { get; set; }
    public Sauna.Entity.Sauna Sauna { get; set; } = default!;
    [GraphQLIgnore]public int UserId { get; set; }
    [GraphQLIgnore]public User.Entity.User User { get; set; } = default!;
    public DateTime VisitedAt { get; set; }
    public int Duration { get; set; }
    public int Cycles { get; set; }
    public int? Rating { get; set; }
    public string? Review { get; set; }
    public string? Note { get; set; }
}
