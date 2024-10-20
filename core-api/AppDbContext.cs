using Microsoft.EntityFrameworkCore;
using Npgsql;
using SaunatonttuAPI.OpeningHours.Entity;
using SaunatonttuAPI.Price.Entity;
using SaunatonttuAPI.Sauna.Entity;
using SaunatonttuAPI.Scraping.Entity;
using SaunatonttuAPI.UserGroup.Entity;

namespace SaunatonttuAPI;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
        NpgsqlConnection.GlobalTypeMapper.MapEnum<SaunaUserKind>();
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresEnum<SaunaUserKind>();

        modelBuilder.Entity<SaunaUser>()
            .HasKey(su => new { su.SaunaId, su.UserId });

        modelBuilder.Entity<SaunaPicture>()
            .HasKey(sp => new { sp.SaunaId, sp.PictureId });

        modelBuilder.Entity<SaunaPrice>()
            .HasKey(sp => new { sp.SaunaId, sp.PriceId });

        modelBuilder.Entity<SaunaAttribute>()
            .HasKey(sa => new { sa.SaunaId, sa.AttributeId });

        modelBuilder.Entity<Sauna.Entity.Sauna>()
            .Property(s => s.SearchVector)
            .HasComputedColumnSql(
                SqlHelpers.GetTsVectorComputedColumnSql(
                    "simple",
                    new []{"name", "email", "lead_paragraph", "content", "phone"}
                    ),
                true
            );
        // .HasGeneratedTsVectorColumn(
        //     s => s.SearchVector,
        //     "simple",
        //     s => new { s.Name, s.Email, s.LeadParagraph, s.Content, s.Phone })
        modelBuilder.Entity<Sauna.Entity.Sauna>()
            .HasIndex(s => s.SearchVector)
            .HasMethod("GIN");
    }

    public DbSet<User.Entity.User> Users { get; set; } = default!;
    public DbSet<Picture.Entity.Picture> Pictures { get; set; } = default!;
    public DbSet<Currency> Currencies { get; set; } = default!;
    public DbSet<Price.Entity.Price> Prices { get; set; } = default!;
    public DbSet<OpeningHour> OpeningHours { get; set; } = default!;
    public DbSet<OpeningHourOverride> OpeningHourOverrides { get; set; } = default!;
    public DbSet<Sauna.Entity.Sauna> Saunas { get; set; } = default!;
    public DbSet<SaunaUser> SaunaUsers { get; set; } = default!;
    public DbSet<VisitHistory.Entity.VisitHistory> VisitsLog { get; set; } = default!;
    public DbSet<Report.Entity.Report> Reports { get; set; } = default!;
    public DbSet<SaunaPicture> SaunaPictures { get; set; } = default!;
    public DbSet<SaunaPrice> SaunaPrices { get; set; } = default!;
    public DbSet<Attribute.Entity.Attribute> Attributes { get; set; } = default!;
    public DbSet<SaunaAttribute> SaunaAttributes { get; set; } = default!;
    public DbSet<TextSearchRequest> TextSearchRequests { get; set; } = default!;
    public DbSet<ResponseLog> ResponseLogs { get; set; } = default!;
    public DbSet<Group> Groups { get; set; } = default!;
    public DbSet<UserGroup.Entity.UserGroup> UserGroups { get; set; } = default!;
}
