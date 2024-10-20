using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v8 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "opening_hours_period");

            migrationBuilder.DropTable(
                name: "special_day");

            migrationBuilder.DropTable(
                name: "opening_hour_detail");

            migrationBuilder.CreateTable(
                name: "opening_hour",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    dayofweek = table.Column<int>(name: "day_of_week", type: "integer", nullable: false),
                    time = table.Column<TimeOnly>(type: "time without time zone", nullable: false),
                    date = table.Column<DateOnly>(type: "date", nullable: true),
                    label = table.Column<string>(type: "text", nullable: true),
                    isopening = table.Column<bool>(name: "is_opening", type: "boolean", nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_opening_hour", x => x.id);
                    table.ForeignKey(
                        name: "fk_opening_hour_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_opening_hour_sauna_id",
                table: "opening_hour",
                column: "sauna_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "opening_hour");

            migrationBuilder.CreateTable(
                name: "opening_hour_detail",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    dayofweek = table.Column<int>(name: "day_of_week", type: "integer", nullable: false),
                    time = table.Column<TimeOnly>(type: "time without time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_opening_hour_detail", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "special_day",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    date = table.Column<DateOnly>(type: "date", nullable: false),
                    label = table.Column<string>(type: "text", nullable: false)
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

            migrationBuilder.CreateTable(
                name: "opening_hours_period",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    closeid = table.Column<int>(name: "close_id", type: "integer", nullable: true),
                    openid = table.Column<int>(name: "open_id", type: "integer", nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_opening_hours_period", x => x.id);
                    table.ForeignKey(
                        name: "fk_opening_hours_period_opening_hour_detail_close_id",
                        column: x => x.closeid,
                        principalTable: "opening_hour_detail",
                        principalColumn: "id");
                    table.ForeignKey(
                        name: "fk_opening_hours_period_opening_hour_detail_open_id",
                        column: x => x.openid,
                        principalTable: "opening_hour_detail",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_opening_hours_period_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_opening_hours_period_close_id",
                table: "opening_hours_period",
                column: "close_id");

            migrationBuilder.CreateIndex(
                name: "ix_opening_hours_period_open_id",
                table: "opening_hours_period",
                column: "open_id");

            migrationBuilder.CreateIndex(
                name: "ix_opening_hours_period_sauna_id",
                table: "opening_hours_period",
                column: "sauna_id");

            migrationBuilder.CreateIndex(
                name: "ix_special_day_sauna_id",
                table: "special_day",
                column: "sauna_id");
        }
    }
}
