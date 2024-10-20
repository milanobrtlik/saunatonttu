using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v3 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_prices_currencies_currency_id",
                table: "prices");

            migrationBuilder.DropForeignKey(
                name: "fk_prices_sauna_sauna_id",
                table: "prices");

            migrationBuilder.DropPrimaryKey(
                name: "pk_prices",
                table: "prices");

            migrationBuilder.DropPrimaryKey(
                name: "pk_currencies",
                table: "currencies");

            migrationBuilder.RenameTable(
                name: "prices",
                newName: "price");

            migrationBuilder.RenameTable(
                name: "currencies",
                newName: "currency");

            migrationBuilder.RenameIndex(
                name: "ix_prices_sauna_id",
                table: "price",
                newName: "ix_price_sauna_id");

            migrationBuilder.RenameIndex(
                name: "ix_prices_currency_id",
                table: "price",
                newName: "ix_price_currency_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_price",
                table: "price",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_currency",
                table: "currency",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_price_currency_currency_id",
                table: "price",
                column: "currency_id",
                principalTable: "currency",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_price_sauna_sauna_id",
                table: "price",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_price_currency_currency_id",
                table: "price");

            migrationBuilder.DropForeignKey(
                name: "fk_price_sauna_sauna_id",
                table: "price");

            migrationBuilder.DropPrimaryKey(
                name: "pk_price",
                table: "price");

            migrationBuilder.DropPrimaryKey(
                name: "pk_currency",
                table: "currency");

            migrationBuilder.RenameTable(
                name: "price",
                newName: "prices");

            migrationBuilder.RenameTable(
                name: "currency",
                newName: "currencies");

            migrationBuilder.RenameIndex(
                name: "ix_price_sauna_id",
                table: "prices",
                newName: "ix_prices_sauna_id");

            migrationBuilder.RenameIndex(
                name: "ix_price_currency_id",
                table: "prices",
                newName: "ix_prices_currency_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_prices",
                table: "prices",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_currencies",
                table: "currencies",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_prices_currencies_currency_id",
                table: "prices",
                column: "currency_id",
                principalTable: "currencies",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_prices_sauna_sauna_id",
                table: "prices",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
