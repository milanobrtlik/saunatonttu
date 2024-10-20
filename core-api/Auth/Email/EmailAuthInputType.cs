namespace SaunatonttuAPI.Auth.Email;

public record EmailSignInInputType(
    string Email,
    string Password
);

public record EmailSignUpInputType(
    string Name,
    string Email,
    string Password
);
