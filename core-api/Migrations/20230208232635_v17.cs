using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v17 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "google_id",
                table: "sauna",
                type: "text",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "google_place_detail_response",
                table: "sauna",
                type: "text",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "google_id",
                table: "sauna");

            migrationBuilder.DropColumn(
                name: "google_place_detail_response",
                table: "sauna");
        }
    }
}
