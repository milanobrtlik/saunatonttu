using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v24 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "date",
                table: "opening_hour");

            migrationBuilder.DropColumn(
                name: "is_opening",
                table: "opening_hour");

            migrationBuilder.DropColumn(
                name: "label",
                table: "opening_hour");

            migrationBuilder.RenameColumn(
                name: "time",
                table: "opening_hour",
                newName: "open");

            migrationBuilder.AddColumn<TimeOnly>(
                name: "close",
                table: "opening_hour",
                type: "time without time zone",
                nullable: false,
                defaultValue: new TimeOnly(0, 0, 0));

            migrationBuilder.CreateTable(
                name: "opening_hour_override",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    open = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    close = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    explanation = table.Column<string>(type: "text", nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_opening_hour_override", x => x.id);
                    table.ForeignKey(
                        name: "fk_opening_hour_override_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_opening_hour_override_sauna_id",
                table: "opening_hour_override",
                column: "sauna_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "opening_hour_override");

            migrationBuilder.DropColumn(
                name: "close",
                table: "opening_hour");

            migrationBuilder.RenameColumn(
                name: "open",
                table: "opening_hour",
                newName: "time");

            migrationBuilder.AddColumn<DateOnly>(
                name: "date",
                table: "opening_hour",
                type: "date",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "is_opening",
                table: "opening_hour",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "label",
                table: "opening_hour",
                type: "text",
                nullable: true);
        }
    }
}
