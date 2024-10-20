using HotChocolate.Execution.Configuration;
using SaunatonttuAPI.Auth.Email;
using SaunatonttuAPI.Auth.Google;
using SaunatonttuAPI.Auth.Jwt;

namespace SaunatonttuAPI.Auth;

public static class AuthConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddTypeExtension<GoogleMutation>()
            .AddTypeExtension<JwtMutation>()
            .AddTypeExtension<EmailAuthMutation>()
            ;
    }
}
