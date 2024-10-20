﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using NetTopologySuite.Geometries;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using NpgsqlTypes;
using SaunatonttuAPI;
using SaunatonttuAPI.Sauna.Entity;

#nullable disable

namespace SaunatonttuAPI.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20230128134157_v12")]
    partial class v12
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.2")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.HasPostgresEnum(modelBuilder, "sauna_user_kind", new[] { "owner", "staff", "guest" });
            NpgsqlModelBuilderExtensions.HasPostgresExtension(modelBuilder, "postgis");
            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("SaunatonttuAPI.OpeningHours.Entity.OpeningHour", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<DateOnly?>("Date")
                        .HasColumnType("date")
                        .HasColumnName("date");

                    b.Property<int>("DayOfWeek")
                        .HasColumnType("integer")
                        .HasColumnName("day_of_week");

                    b.Property<bool>("IsOpening")
                        .HasColumnType("boolean")
                        .HasColumnName("is_opening");

                    b.Property<string>("Label")
                        .HasColumnType("text")
                        .HasColumnName("label");

                    b.Property<int>("SaunaId")
                        .HasColumnType("integer")
                        .HasColumnName("sauna_id");

                    b.Property<TimeOnly>("Time")
                        .HasColumnType("time without time zone")
                        .HasColumnName("time");

                    b.HasKey("Id")
                        .HasName("pk_opening_hour");

                    b.HasIndex("SaunaId")
                        .HasDatabaseName("ix_opening_hour_sauna_id");

                    b.ToTable("opening_hour", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Picture.Entity.Picture", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("FullSizeUrl")
                        .IsRequired()
                        .HasMaxLength(768)
                        .HasColumnType("character varying(768)")
                        .HasColumnName("full_size_url");

                    b.Property<string>("ThumbnailUrl")
                        .IsRequired()
                        .HasMaxLength(768)
                        .HasColumnType("character varying(768)")
                        .HasColumnName("thumbnail_url");

                    b.HasKey("Id")
                        .HasName("pk_picture");

                    b.ToTable("picture", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Price.Entity.Currency", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Code")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("code");

                    b.Property<decimal>("DollarRatio")
                        .HasColumnType("money")
                        .HasColumnName("dollar_ratio");

                    b.HasKey("Id")
                        .HasName("pk_currency");

                    b.ToTable("currency", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Price.Entity.Price", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<int>("CurrencyId")
                        .HasColumnType("integer")
                        .HasColumnName("currency_id");

                    b.Property<string>("Label")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("label");

                    b.Property<int>("SaunaId")
                        .HasColumnType("integer")
                        .HasColumnName("sauna_id");

                    b.Property<decimal>("Value")
                        .HasColumnType("money")
                        .HasColumnName("value");

                    b.HasKey("Id")
                        .HasName("pk_price");

                    b.HasIndex("CurrencyId")
                        .HasDatabaseName("ix_price_currency_id");

                    b.HasIndex("SaunaId")
                        .HasDatabaseName("ix_price_sauna_id");

                    b.ToTable("price", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Report.Entity.Report", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<int>("AuthorId")
                        .HasColumnType("integer")
                        .HasColumnName("author_id");

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("timestamp with time zone")
                        .HasColumnName("created_at");

                    b.Property<string>("Message")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("message");

                    b.Property<string>("Result")
                        .HasColumnType("text")
                        .HasColumnName("result");

                    b.Property<int>("SubjectId")
                        .HasColumnType("integer")
                        .HasColumnName("subject_id");

                    b.Property<string>("SubjectName")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("subject_name");

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("type");

                    b.HasKey("Id")
                        .HasName("pk_report");

                    b.HasIndex("AuthorId")
                        .HasDatabaseName("ix_report_author_id");

                    b.ToTable("report", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.Sauna", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("address");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("content");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("email");

                    b.Property<bool>("IsPrivate")
                        .HasColumnType("boolean")
                        .HasColumnName("is_private");

                    b.Property<string>("LeadParagraph")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("lead_paragraph");

                    b.Property<Point>("Location")
                        .IsRequired()
                        .HasColumnType("geometry")
                        .HasColumnName("location");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("name");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("phone");

                    b.Property<NpgsqlTsVector>("SearchVector")
                        .IsRequired()
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("tsvector")
                        .HasColumnName("search_vector")
                        .HasAnnotation("Npgsql:TsVectorConfig", "simple")
                        .HasAnnotation("Npgsql:TsVectorProperties", new[] { "Name", "Email", "LeadParagraph", "Content", "Phone" });

                    b.Property<string>("Url")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("url");

                    b.HasKey("Id")
                        .HasName("pk_sauna");

                    b.HasIndex("SearchVector")
                        .HasDatabaseName("ix_sauna_search_vector");

                    NpgsqlIndexBuilderExtensions.HasMethod(b.HasIndex("SearchVector"), "GIN");

                    b.ToTable("sauna", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.SaunaPicture", b =>
                {
                    b.Property<int>("SaunaId")
                        .HasColumnType("integer")
                        .HasColumnName("sauna_id");

                    b.Property<int>("PictureId")
                        .HasColumnType("integer")
                        .HasColumnName("picture_id");

                    b.HasKey("SaunaId", "PictureId")
                        .HasName("pk_sauna_picture");

                    b.HasIndex("PictureId")
                        .HasDatabaseName("ix_sauna_picture_picture_id");

                    b.ToTable("sauna_picture", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.SaunaUser", b =>
                {
                    b.Property<int>("SaunaId")
                        .HasColumnType("integer")
                        .HasColumnName("sauna_id");

                    b.Property<int>("UserId")
                        .HasColumnType("integer")
                        .HasColumnName("user_id");

                    b.Property<SaunaUserKind>("Kind")
                        .HasColumnType("sauna_user_kind")
                        .HasColumnName("kind");

                    b.HasKey("SaunaId", "UserId")
                        .HasName("pk_sauna_user");

                    b.HasIndex("SaunaId")
                        .IsUnique()
                        .HasDatabaseName("ix_sauna_user_sauna_id");

                    b.HasIndex("UserId")
                        .HasDatabaseName("ix_sauna_user_user_id");

                    b.ToTable("sauna_user", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.User.Entity.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("AvatarUrl")
                        .HasColumnType("text")
                        .HasColumnName("avatar_url");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("email");

                    b.Property<string>("Name")
                        .HasColumnType("text")
                        .HasColumnName("name");

                    b.Property<string>("Password")
                        .HasColumnType("text")
                        .HasColumnName("password");

                    b.HasKey("Id")
                        .HasName("pk_user");

                    b.HasIndex("Email")
                        .IsUnique()
                        .HasDatabaseName("ix_user_email");

                    b.ToTable("user", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.VisitLog.Entity.VisitLog", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Note")
                        .HasColumnType("text")
                        .HasColumnName("note");

                    b.Property<int>("SaunaId")
                        .HasColumnType("integer")
                        .HasColumnName("sauna_id");

                    b.Property<int>("UserId")
                        .HasColumnType("integer")
                        .HasColumnName("user_id");

                    b.Property<int>("VisitDuration")
                        .HasColumnType("integer")
                        .HasColumnName("visit_duration");

                    b.Property<DateTime>("VisitedAt")
                        .HasColumnType("timestamp with time zone")
                        .HasColumnName("visited_at");

                    b.HasKey("Id")
                        .HasName("pk_visit_log");

                    b.HasIndex("SaunaId")
                        .HasDatabaseName("ix_visit_log_sauna_id");

                    b.HasIndex("UserId")
                        .HasDatabaseName("ix_visit_log_user_id");

                    b.ToTable("visit_log", (string)null);
                });

            modelBuilder.Entity("SaunatonttuAPI.OpeningHours.Entity.OpeningHour", b =>
                {
                    b.HasOne("SaunatonttuAPI.Sauna.Entity.Sauna", "Sauna")
                        .WithMany("OpeningHours")
                        .HasForeignKey("SaunaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_opening_hour_sauna_sauna_id");

                    b.Navigation("Sauna");
                });

            modelBuilder.Entity("SaunatonttuAPI.Price.Entity.Price", b =>
                {
                    b.HasOne("SaunatonttuAPI.Price.Entity.Currency", "Currency")
                        .WithMany()
                        .HasForeignKey("CurrencyId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_price_currency_currency_id");

                    b.HasOne("SaunatonttuAPI.Sauna.Entity.Sauna", "Sauna")
                        .WithMany("Prices")
                        .HasForeignKey("SaunaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_price_sauna_sauna_id");

                    b.Navigation("Currency");

                    b.Navigation("Sauna");
                });

            modelBuilder.Entity("SaunatonttuAPI.Report.Entity.Report", b =>
                {
                    b.HasOne("SaunatonttuAPI.User.Entity.User", "Author")
                        .WithMany()
                        .HasForeignKey("AuthorId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_report_user_author_id");

                    b.Navigation("Author");
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.SaunaPicture", b =>
                {
                    b.HasOne("SaunatonttuAPI.Picture.Entity.Picture", "Picture")
                        .WithMany()
                        .HasForeignKey("PictureId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_sauna_picture_picture_picture_id");

                    b.HasOne("SaunatonttuAPI.Sauna.Entity.Sauna", "Sauna")
                        .WithMany("SaunaPicture")
                        .HasForeignKey("SaunaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_sauna_picture_sauna_sauna_id");

                    b.Navigation("Picture");

                    b.Navigation("Sauna");
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.SaunaUser", b =>
                {
                    b.HasOne("SaunatonttuAPI.Sauna.Entity.Sauna", "Sauna")
                        .WithOne("Users")
                        .HasForeignKey("SaunatonttuAPI.Sauna.Entity.SaunaUser", "SaunaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_sauna_user_sauna_sauna_id");

                    b.HasOne("SaunatonttuAPI.User.Entity.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_sauna_user_user_user_id");

                    b.Navigation("Sauna");

                    b.Navigation("User");
                });

            modelBuilder.Entity("SaunatonttuAPI.VisitLog.Entity.VisitLog", b =>
                {
                    b.HasOne("SaunatonttuAPI.Sauna.Entity.Sauna", "Sauna")
                        .WithMany()
                        .HasForeignKey("SaunaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_visit_log_sauna_sauna_id");

                    b.HasOne("SaunatonttuAPI.User.Entity.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_visit_log_user_user_id");

                    b.Navigation("Sauna");

                    b.Navigation("User");
                });

            modelBuilder.Entity("SaunatonttuAPI.Sauna.Entity.Sauna", b =>
                {
                    b.Navigation("OpeningHours");

                    b.Navigation("Prices");

                    b.Navigation("SaunaPicture");

                    b.Navigation("Users")
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
