using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Sauna.Entity;

[Table("sauna_price")]
public class SaunaPrice
{
    public int SaunaId { get; set; }
    public Sauna Sauna { get; set; } = default!;
    public int PriceId { get; set; }
    public Price.Entity.Price Price { get; set; } = default!;
}
