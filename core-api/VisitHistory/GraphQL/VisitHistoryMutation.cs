using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SaunatonttuAPI.VisitHistory.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class VisitHistoryMutation
{
    [Authorize]
    public async Task<VisitHistoryPayload> VisitHistoryCreate(
        VisitHistoryCreateInput input,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var sauna = await db.Saunas
            .Where(s => s.Id.Equals(input.SaunaId))
            .FirstOrDefaultAsync(ct);
        if (sauna is null) return VisitHistoryPayload.SaunaNotFound(input.SaunaId);

        var visitEntry = new Entity.VisitHistory
        {
            Sauna = sauna,
            UserId = currentUserId,
            VisitedAt = input.VisitedAt,
            Cycles = input.Cycles,
            Duration = input.Duration,
            Rating = input.Rating.Value,
            Review = input.Review.Value,
            Note = input.Note.Value,
        };

        await db.AddAsync(visitEntry, ct);
        await db.SaveChangesAsync(ct);

        return VisitHistoryPayload.Ok(visitEntry);
    }

    [Authorize]
    public async Task<VisitHistoryPayload> VisitHistoryUpdate(
        VisitHistoryUpdateInput input,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var logEntry = await db.VisitsLog
            .Where(vl => vl.UserId.Equals(currentUserId))
            .Where(vl => vl.Id.Equals(input.VisitId))
            .FirstOrDefaultAsync(ct);
        if (logEntry is null) return VisitHistoryPayload.NotFound(input.VisitId);

        if (input.VisitedAt.HasValue) logEntry.VisitedAt = input.VisitedAt.Value!.Value;
        if (input.Duration.HasValue) logEntry.Duration = input.Duration.Value!.Value;
        if (input.Note.HasValue) logEntry.Note = input.Note.Value;

        await db.SaveChangesAsync(ct);

        return VisitHistoryPayload.Ok(logEntry);
    }
}
