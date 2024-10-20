using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Price.Entity;

[Table("price")]
public class Price
{
    [ID]public int Id { get; set; }
    public string Label { get; set; } = default!;
    [GraphQLIgnore]public int CurrencyId { get; set; }
    public Currency Currency { get; set; } = default!;
    [Column(TypeName = "money")] public decimal Value { get; set; }
}
