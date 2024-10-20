using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.User.Entity;

[Table("user")]
[Index(nameof(Email), IsUnique = true)]
public class User
{
    [ID]public int Id { get; set; }
    public string? Name { get; set; }
    public string Email { get; set; } = default!;
    [GraphQLIgnore]public string? Password { get; set; }
    public string? AvatarUrl { get; set; }
    [GraphQLIgnore]public ICollection<UserGroup.Entity.UserGroup> UserGroups { get; set; } = default!;
}
