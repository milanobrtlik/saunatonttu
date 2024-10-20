using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Scraping.Entity;

[Table("response_log")]
public class ResponseLog
{
    public int Id { get; set; }
    public string RequestUid { get; set; } = default!;
    public DateTime ReceivedAt { get; set; }
    public string Response { get; set; } = default!;
}
