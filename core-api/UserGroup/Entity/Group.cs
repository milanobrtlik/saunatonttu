using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.UserGroup.Entity;

[Table("group")]
public class Group
{
    [ID] public int Id { get; set; }
    public string Name { get; set; } = default!;
    [GraphQLIgnore]public ICollection<UserGroup> UserGroups { get; set; } = default!;
}
