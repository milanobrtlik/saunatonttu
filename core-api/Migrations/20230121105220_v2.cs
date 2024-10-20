using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_opening_hours_period_sauna_sauna_id",
                table: "opening_hours_period");

            migrationBuilder.DropForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture");

            migrationBuilder.DropForeignKey(
                name: "fk_prices_sauna_sauna_id",
                table: "prices");

            migrationBuilder.DropColumn(
                name: "special_date",
                table: "opening_hour_detail");

            migrationBuilder.DropColumn(
                name: "special_info",
                table: "opening_hour_detail");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "prices",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "picture",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "opening_hours_period",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.CreateTable(
                name: "special_day",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    date = table.Column<DateOnly>(type: "date", nullable: false),
                    label = table.Column<string>(type: "text", nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_special_day", x => x.id);
                    table.ForeignKey(
                        name: "fk_special_day_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_special_day_sauna_id",
                table: "special_day",
                column: "sauna_id");

            migrationBuilder.AddForeignKey(
                name: "fk_opening_hours_period_sauna_sauna_id",
                table: "opening_hours_period",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture",
                column: "sauna_id",
                principalTable: "sauna",
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

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_opening_hours_period_sauna_sauna_id",
                table: "opening_hours_period");

            migrationBuilder.DropForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture");

            migrationBuilder.DropForeignKey(
                name: "fk_prices_sauna_sauna_id",
                table: "prices");

            migrationBuilder.DropTable(
                name: "special_day");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "prices",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "picture",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "sauna_id",
                table: "opening_hours_period",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddColumn<DateOnly>(
                name: "special_date",
                table: "opening_hour_detail",
                type: "date",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "special_info",
                table: "opening_hour_detail",
                type: "text",
                nullable: true);

            migrationBuilder.AddForeignKey(
                name: "fk_opening_hours_period_sauna_sauna_id",
                table: "opening_hours_period",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_picture_sauna_sauna_id",
                table: "picture",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_prices_sauna_sauna_id",
                table: "prices",
                column: "sauna_id",
                principalTable: "sauna",
                principalColumn: "id");
        }
    }
}
