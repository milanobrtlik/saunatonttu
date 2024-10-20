using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Sauna.Entity;

public enum SaunaUserKind
{
    Owner,
    Staff,
    Guest
}

[Table("sauna_user")]
public class SaunaUser
{
    public int SaunaId { get; set; }
    public Sauna Sauna { get; set; } = default!;
    public int UserId { get; set; }
    public User.Entity.User User { get; set; } = default!;
    public SaunaUserKind Kind { get; set; }
}
