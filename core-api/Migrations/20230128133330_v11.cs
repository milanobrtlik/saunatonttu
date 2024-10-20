using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v11 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture");

            migrationBuilder.DropIndex(
                name: "ix_picture_sauna_id",
                table: "picture");

            migrationBuilder.DropColumn(
                name: "sauna_id",
                table: "picture");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "sauna_id",
                table: "picture",
                type: "integer",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "ix_picture_sauna_id",
                table: "picture",
                column: "sauna_id");

            migrationBuilder.AddForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id");
        }
    }
}
