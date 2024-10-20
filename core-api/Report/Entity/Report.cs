using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Report.Entity;

[Table("report")]
public class Report
{
    [ID]public int Id { get; set; }
    public DateTime CreatedAt { get; set; }
    [ID]public int SubjectId { get; set; }
    public string SubjectName { get; set; } = default!;
    public string Type { get; set; } = default!;
    public string Message { get; set; } = default!;
    [ID]public int AuthorId { get; set; }
    public User.Entity.User Author { get; set; } = default!;
    public string? Result { get; set; }
}
