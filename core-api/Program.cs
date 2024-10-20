using GoogleApi.Extensions;
using Microsoft.EntityFrameworkCore;
using Quartz;
using Quartz.AspNetCore;
using SaunatonttuAPI;
using SaunatonttuAPI.Attribute;
using SaunatonttuAPI.Auth;
using SaunatonttuAPI.Auth.Jwt;
using SaunatonttuAPI.OpeningHours;
using SaunatonttuAPI.Picture;
using SaunatonttuAPI.Price;
using SaunatonttuAPI.Report;
using SaunatonttuAPI.Sauna;
using SaunatonttuAPI.Scraping;
using SaunatonttuAPI.User;
using SaunatonttuAPI.UserGroup;
using SaunatonttuAPI.VisitHistory;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddQuartz(q =>
{
    q.UseMicrosoftDependencyInjectionJobFactory();
    // q.Add
});
builder.Services.AddQuartzServer(options =>
{
    options.WaitForJobsToComplete = true;
});

builder.Services.AddPooledDbContextFactory<AppDbContext>(o =>
    o.UseNpgsql(
            builder.Configuration.GetConnectionString("default"),
            x => x.UseNetTopologySuite()
        )
        .UseSnakeCaseNamingConvention()
);

builder.Services
    .AddHttpContextAccessor()
    .AddCors(o => o.AddDefaultPolicy(p => p.AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin()));

JwtConfigurator.Configure(builder.Services, builder.Configuration);
PictureConfigurator.Configure(builder.Services, builder.Configuration);

var graphql = builder.Services.AddGraphQLServer();

GraphQlConfigurator.Configure(graphql);
AuthConfigurator.Configure(graphql);
UserConfigurator.ConfigureGraphQl(graphql);
PictureConfigurator.ConfigureGraphQl(graphql);
SaunaConfigurator.ConfigureGraphQl(graphql);
OpeningHoursConfigurator.ConfigureGraphQl(graphql);
PriceConfigurator.ConfigureGraphQl(graphql);
VisitHistoryConfigurator.ConfigureGraphQl(graphql);
ReportConfigurator.ConfigureGraphQl(graphql);
AttributeConfigurator.ConfigureGraphQ(graphql);
ScrapingConfigurator.ConfigureGraphQl(graphql);
UserGroupConfigurator.ConfigureGraphQl(graphql);

graphql.Services.AddGoogleApiClients();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}

app.UseCors()
    .UseRouting()
    .UseAuthentication()
    .UseEndpoints(routeBuilder => routeBuilder.MapGraphQL());

using (var scope = app.Services.CreateScope())
{
    var factory = scope.ServiceProvider.GetRequiredService<IDbContextFactory<AppDbContext>>();
    factory.CreateDbContext().Database.Migrate();
}

app.Run();
