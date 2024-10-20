using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.UserGroup.Entity;

public enum UserGroupKind
{
    Founder,
    Member,
}

[Table("user_group")]
public class UserGroup
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public User.Entity.User User { get; set; } = default!;
    public int GroupId { get; set; }
    public Group Group { get; set; } = default!;
    public UserGroupKind Kind { get; set; }
}
