using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v20 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "result0",
                table: "text_search_request");

            migrationBuilder.DropColumn(
                name: "result1",
                table: "text_search_request");

            migrationBuilder.DropColumn(
                name: "result2",
                table: "text_search_request");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "result0",
                table: "text_search_request",
                type: "text",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "result1",
                table: "text_search_request",
                type: "text",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "result2",
                table: "text_search_request",
                type: "text",
                nullable: true);
        }
    }
}
