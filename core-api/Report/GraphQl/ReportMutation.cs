using HotChocolate.Authorization;

namespace SaunatonttuAPI.Report.GraphQl;

[ExtendObjectType(typeof(Mutation))]
public class ReportMutation
{
    [Authorize]
    public async Task<ConfirmationPayload> Report(
        ReportInput input,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var reportEntry = new Entity.Report
        {
            CreatedAt = DateTime.UtcNow,
            Type = input.ReportType,
            Message = input.Message,
            AuthorId = currentUserId,
            SubjectId = input.SubjectId,
            SubjectName = input.SubjectName,
        };

        await db.AddAsync(reportEntry, ct);
        await db.SaveChangesAsync(ct);

        return ConfirmationPayload.Ok();
    }
}
