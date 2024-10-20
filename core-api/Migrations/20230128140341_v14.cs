using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    /// <inheritdoc />
    public partial class v14 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<float>(
                name: "dollar_ratio",
                table: "currency",
                type: "real",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "money");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<decimal>(
                name: "dollar_ratio",
                table: "currency",
                type: "money",
                nullable: false,
                oldClrType: typeof(float),
                oldType: "real");
        }
    }
}
