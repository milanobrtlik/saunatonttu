using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Price.Entity;

[Table("currency")]
public class Currency
{
    [ID]public int Id { get; set; }
    public string Code { get; set; } = default!;
    public float DollarRatio { get; set; }
}
