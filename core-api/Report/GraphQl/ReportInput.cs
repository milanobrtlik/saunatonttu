namespace SaunatonttuAPI.Report.GraphQl;

public record ReportInput(
    int SubjectId,
    string SubjectName,
    string ReportType,
    string Message
);
