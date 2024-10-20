using System;
using Microsoft.EntityFrameworkCore.Migrations;
using NetTopologySuite.Geometries;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using SaunatonttuAPI.Sauna.Entity;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:sauna_user_kind", "owner,staff,guest")
                .Annotation("Npgsql:PostgresExtension:postgis", ",,");

            migrationBuilder.CreateTable(
                name: "currencies",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    code = table.Column<string>(type: "text", nullable: false),
                    dollarratio = table.Column<decimal>(name: "dollar_ratio", type: "money", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_currencies", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "opening_hour_detail",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    dayofweek = table.Column<int>(name: "day_of_week", type: "integer", nullable: false),
                    time = table.Column<TimeOnly>(type: "time without time zone", nullable: false),
                    specialdate = table.Column<DateOnly>(name: "special_date", type: "date", nullable: true),
                    specialinfo = table.Column<string>(name: "special_info", type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_opening_hour_detail", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "sauna",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: false),
                    address = table.Column<string>(type: "text", nullable: false),
                    email = table.Column<string>(type: "text", nullable: false),
                    phone = table.Column<string>(type: "text", nullable: false),
                    url = table.Column<string>(type: "text", nullable: false),
                    leadparagraph = table.Column<string>(name: "lead_paragraph", type: "text", nullable: false),
                    content = table.Column<string>(type: "text", nullable: false),
                    isprivate = table.Column<bool>(name: "is_private", type: "boolean", nullable: false),
                    location = table.Column<Point>(type: "geometry", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_sauna", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "user",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: true),
                    email = table.Column<string>(type: "text", nullable: false),
                    password = table.Column<string>(type: "text", nullable: true),
                    avatarurl = table.Column<string>(name: "avatar_url", type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_user", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "opening_hours_period",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    openid = table.Column<int>(name: "open_id", type: "integer", nullable: false),
                    closeid = table.Column<int>(name: "close_id", type: "integer", nullable: true),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: true)
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
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "picture",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    fullsizeurl = table.Column<string>(name: "full_size_url", type: "character varying(768)", maxLength: 768, nullable: false),
                    thumbnailurl = table.Column<string>(name: "thumbnail_url", type: "character varying(768)", maxLength: 768, nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_picture", x => x.id);
                    table.ForeignKey(
                        name: "fk_picture_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "prices",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    label = table.Column<string>(type: "text", nullable: false),
                    currencyid = table.Column<int>(name: "currency_id", type: "integer", nullable: false),
                    value = table.Column<decimal>(type: "money", nullable: false),
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_prices", x => x.id);
                    table.ForeignKey(
                        name: "fk_prices_currencies_currency_id",
                        column: x => x.currencyid,
                        principalTable: "currencies",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_prices_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "sauna_user",
                columns: table => new
                {
                    saunaid = table.Column<int>(name: "sauna_id", type: "integer", nullable: false),
                    userid = table.Column<int>(name: "user_id", type: "integer", nullable: false),
                    kind = table.Column<SaunaUserKind>(type: "sauna_user_kind", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_sauna_user", x => new { x.saunaid, x.userid });
                    table.ForeignKey(
                        name: "fk_sauna_user_sauna_sauna_id",
                        column: x => x.saunaid,
                        principalTable: "sauna",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_sauna_user_user_user_id",
                        column: x => x.userid,
                        principalTable: "user",
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
                name: "ix_picture_sauna_id",
                table: "picture",
                column: "sauna_id");

            migrationBuilder.CreateIndex(
                name: "ix_prices_currency_id",
                table: "prices",
                column: "currency_id");

            migrationBuilder.CreateIndex(
                name: "ix_prices_sauna_id",
                table: "prices",
                column: "sauna_id");

            migrationBuilder.CreateIndex(
                name: "ix_sauna_user_sauna_id",
                table: "sauna_user",
                column: "sauna_id",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "ix_sauna_user_user_id",
                table: "sauna_user",
                column: "user_id");

            migrationBuilder.CreateIndex(
                name: "ix_user_email",
                table: "user",
                column: "email",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "opening_hours_period");

            migrationBuilder.DropTable(
                name: "picture");

            migrationBuilder.DropTable(
                name: "prices");

            migrationBuilder.DropTable(
                name: "sauna_user");

            migrationBuilder.DropTable(
                name: "opening_hour_detail");

            migrationBuilder.DropTable(
                name: "currencies");

            migrationBuilder.DropTable(
                name: "sauna");

            migrationBuilder.DropTable(
                name: "user");
        }
    }
}
