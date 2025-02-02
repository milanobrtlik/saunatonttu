﻿using HotChocolate.Authorization;

namespace SaunatonttuAPI.Auth.Jwt;

[ExtendObjectType(typeof(Mutation))]
public class JwtMutation
{
    [Authorize]
    public Task<AuthTokenPayload> GetShortLivedToken(
        [GlobalState] int currentUserId,
        [Service] JwtFactory jwtFactory
    ) => Task.FromResult(new AuthTokenPayload(jwtFactory.CreateAuthToken(currentUserId)));
}
