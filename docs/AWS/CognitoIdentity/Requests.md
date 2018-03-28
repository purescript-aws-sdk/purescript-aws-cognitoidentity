## Module AWS.CognitoIdentity.Requests

#### `createIdentityPool`

``` purescript
createIdentityPool :: forall eff. Service -> CreateIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for <code>SupportedLoginProviders</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul> <p>You must use AWS Developer credentials to call this API.</p>

#### `deleteIdentities`

``` purescript
deleteIdentities :: forall eff. Service -> DeleteIdentitiesInput -> Aff (exception :: EXCEPTION | eff) DeleteIdentitiesResponse
```

<p>Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `deleteIdentityPool`

``` purescript
deleteIdentityPool :: forall eff. Service -> DeleteIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `describeIdentity`

``` purescript
describeIdentity :: forall eff. Service -> DescribeIdentityInput -> Aff (exception :: EXCEPTION | eff) IdentityDescription
```

<p>Returns metadata related to the given identity, including when the identity was created and any associated linked logins.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `describeIdentityPool`

``` purescript
describeIdentityPool :: forall eff. Service -> DescribeIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `getCredentialsForIdentity`

``` purescript
getCredentialsForIdentity :: forall eff. Service -> GetCredentialsForIdentityInput -> Aff (exception :: EXCEPTION | eff) GetCredentialsForIdentityResponse
```

<p>Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getId`

``` purescript
getId :: forall eff. Service -> GetIdInput -> Aff (exception :: EXCEPTION | eff) GetIdResponse
```

<p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getIdentityPoolRoles`

``` purescript
getIdentityPoolRoles :: forall eff. Service -> GetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) GetIdentityPoolRolesResponse
```

<p>Gets the roles for an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `getOpenIdToken`

``` purescript
getOpenIdToken :: forall eff. Service -> GetOpenIdTokenInput -> Aff (exception :: EXCEPTION | eff) GetOpenIdTokenResponse
```

<p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by <a>GetId</a>. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.</p> <p>The OpenId token is valid for 15 minutes.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getOpenIdTokenForDeveloperIdentity`

``` purescript
getOpenIdTokenForDeveloperIdentity :: forall eff. Service -> GetOpenIdTokenForDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) GetOpenIdTokenForDeveloperIdentityResponse
```

<p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the <code>Logins</code> map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.</p> <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `listIdentities`

``` purescript
listIdentities :: forall eff. Service -> ListIdentitiesInput -> Aff (exception :: EXCEPTION | eff) ListIdentitiesResponse
```

<p>Lists the identities in a pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `listIdentityPools`

``` purescript
listIdentityPools :: forall eff. Service -> ListIdentityPoolsInput -> Aff (exception :: EXCEPTION | eff) ListIdentityPoolsResponse
```

<p>Lists all of the Cognito identity pools registered for your account.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `lookupDeveloperIdentity`

``` purescript
lookupDeveloperIdentity :: forall eff. Service -> LookupDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) LookupDeveloperIdentityResponse
```

<p>Retrieves the <code>IdentityID</code> associated with a <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>s associated with an <code>IdentityId</code> for an existing identity. Either <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a <code>ResourceConflictException</code> is thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `mergeDeveloperIdentities`

``` purescript
mergeDeveloperIdentities :: forall eff. Service -> MergeDeveloperIdentitiesInput -> Aff (exception :: EXCEPTION | eff) MergeDeveloperIdentitiesResponse
```

<p>Merges two users having different <code>IdentityId</code>s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>) with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `setIdentityPoolRoles`

``` purescript
setIdentityPoolRoles :: forall eff. Service -> SetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `unlinkDeveloperIdentity`

``` purescript
unlinkDeveloperIdentity :: forall eff. Service -> UnlinkDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `unlinkIdentity`

``` purescript
unlinkIdentity :: forall eff. Service -> UnlinkIdentityInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `updateIdentityPool`

``` purescript
updateIdentityPool :: forall eff. Service -> IdentityPool -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Updates a user pool.</p> <p>You must use AWS Developer credentials to call this API.</p>


