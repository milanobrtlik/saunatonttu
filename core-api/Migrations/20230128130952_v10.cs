using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v10 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "picture",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.CreateTable(
                name: "sauna_picture",
                columns: table => new
                {
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    pictureid = table.Column<int>(name: "picture_id", type: "integer", nullable: false),
                    id = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_sauna_picture", x => new { x.saunaid, x.pictureid });
                    table.ForeignKey(
                        name: "fk_sauna_picture_picture_picture_id",
                        column: x => x.pictureid,
                        principalTable: "picture",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_sauna_picture_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_sauna_picture_picture_id",
                table: "sauna_picture",
                column: "picture_id");

            migrationBuilder.AddForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture");

            migrationBuilder.DropTable(
                name: "sauna_picture");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "picture",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
