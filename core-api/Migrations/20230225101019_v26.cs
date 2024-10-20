using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v26 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "visit_duration",
                table: "visit_history",
                newName: "duration");

            migrationBuilder.AddColumn<int>(
                name: "cycles",
                table: "visit_history",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "rating",
                table: "visit_history",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "review",
                table: "visit_history",
                type: "text",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "cycles",
                table: "visit_history");

            migrationBuilder.DropColumn(
                name: "rating",
                table: "visit_history");

            migrationBuilder.DropColumn(
                name: "review",
                table: "visit_history");

            migrationBuilder.RenameColumn(
                name: "duration",
                table: "visit_history",
                newName: "visit_duration");
        }
    }
}
