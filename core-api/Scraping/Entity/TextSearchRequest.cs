using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Scraping.Entity;

[Table("text_search_request")]
public class TextSearchRequest
{
    public int Id { get; set; }
    public string City { get; set; } = default!;
    public double Latitude { get; set; }
    public double Longitude { get; set; }
    public double Radius { get; set; }
    public DateTime? ScrapedAt { get; set; }
}
