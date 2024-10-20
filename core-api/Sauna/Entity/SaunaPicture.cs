using System.ComponentModel.DataAnnotations.Schema;

namespace SaunatonttuAPI.Sauna.Entity;

[Table("sauna_picture")]
public class SaunaPicture
{
    public int SaunaId { get; set; }
    public Sauna Sauna { get; set; } = default!;
    public int PictureId { get; set; }
    public Picture.Entity.Picture Picture { get; set; } = default!;
}
