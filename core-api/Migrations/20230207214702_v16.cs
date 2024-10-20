using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v16 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "visit_log");

            migrationBuilder.DropIndex(
                name: "ix_sauna_user_sauna_id",
                table: "sauna_user");

            migrationBuilder.CreateTable(
                name: "visit_history",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    userid = table.Column<int>(name: "user_id", type: "integer", nullable: false),
                    visitedat = table.Column<DateTime>(name: "visited_at", type: "timestamp with time zone", nullable: false),
                    visitduration = table.Column<int>(name: "visit_duration", type: "integer", nullable: false),
                    note = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_visit_history", x => x.id);
                    table.ForeignKey(
                        name: "fk_visit_history_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_visit_history_user_user_id",
                        column: x => x.userid,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_visit_history_sauna_id",
                table: "visit_history",
                column: "sauna_id");

            migrationBuilder.CreateIndex(
                name: "ix_visit_history_user_id",
                table: "visit_history",
                column: "user_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "visit_history");

            migrationBuilder.CreateTable(
                name: "visit_log",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    userid = table.Column<int>(name: "user_id", type: "integer", nullable: false),
                    note = table.Column<string>(type: "text", nullable: true),
                    visitduration = table.Column<int>(name: "visit_duration", type: "integer", nullable: false),
                    visitedat = table.Column<DateTime>(name: "visited_at", type: "timestamp with time zone", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_visit_log", x => x.id);
                    table.ForeignKey(
                        name: "fk_visit_log_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_visit_log_user_user_id",
                        column: x => x.userid,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_sauna_user_sauna_id",
                table: "sauna_user",
                column: "sauna_id",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "ix_visit_log_sauna_id",
                table: "visit_log",
                column: "sauna_id");

            migrationBuilder.CreateIndex(
                name: "ix_visit_log_user_id",
                table: "visit_log",
                column: "user_id");
        }
    }
}
