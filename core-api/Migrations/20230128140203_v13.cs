using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v13 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_price_sauna_sauna_id",
                table: "price");

            migrationBuilder.DropIndex(
                name: "ix_price_sauna_id",
                table: "price");

            migrationBuilder.DropColumn(
                name: "sauna_id",
                table: "price");

            migrationBuilder.CreateTable(
                name: "sauna_price",
                columns: table => new
                {
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    priceid = table.Column<int>(name: "price_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_sauna_price", x => new { x.saunaid, x.priceid });
                    table.ForeignKey(
                        name: "fk_sauna_price_price_price_id",
                        column: x => x.priceid,
                        principalTable: "price",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_sauna_price_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_sauna_price_price_id",
                table: "sauna_price",
                column: "price_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "sauna_price");

            migrationBuilder.AddColumn<int>(
                name: "sauna_id",
                table: "price",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "ix_price_sauna_id",
                table: "price",
                column: "sauna_id");

            migrationBuilder.AddForeignKey(
                name: "fk_price_sauna_sauna_id",
                table: "price",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
