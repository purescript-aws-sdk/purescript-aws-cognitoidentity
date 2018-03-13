## Module AWS.CognitoIdentity

<fullname>Amazon Cognito</fullname> <p>Amazon Cognito is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. Amazon Cognito uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.</p> <p>Using Amazon Cognito, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon), and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.</p> <p>To provide end-user credentials, first make an unsigned call to <a>GetId</a>. If the end user is authenticated with one of the supported identity providers, set the <code>Logins</code> map with the identity provider token. <code>GetId</code> returns a unique identifier for the user.</p> <p>Next, make an unsigned call to <a>GetCredentialsForIdentity</a>. This call expects the same <code>Logins</code> map as the <code>GetId</code> call, as well as the <code>IdentityID</code> originally returned by <code>GetId</code>. Assuming your identity pool has been configured via the <a>SetIdentityPoolRoles</a> operation, <code>GetCredentialsForIdentity</code> will return AWS credentials for your use. If your pool has not been configured with <code>SetIdentityPoolRoles</code>, or if you want to follow legacy flow, make an unsigned call to <a>GetOpenIdToken</a>, which returns the OpenID token necessary to call STS and retrieve AWS credentials. This call expects the same <code>Logins</code> map as the <code>GetId</code> call, as well as the <code>IdentityID</code> originally returned by <code>GetId</code>. The token returned by <code>GetOpenIdToken</code> can be passed to the STS operation <a href="http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html">AssumeRoleWithWebIdentity</a> to retrieve AWS credentials.</p> <p>If you want to use Amazon Cognito in an Android, iOS, or Unity application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/index.html">AWS Mobile SDK Developer Guide</a>.</p>

#### `createIdentityPool`

``` purescript
createIdentityPool :: forall eff. CreateIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for <code>SupportedLoginProviders</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul> <p>You must use AWS Developer credentials to call this API.</p>

#### `deleteIdentities`

``` purescript
deleteIdentities :: forall eff. DeleteIdentitiesInput -> Aff (exception :: EXCEPTION | eff) DeleteIdentitiesResponse
```

<p>Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `deleteIdentityPool`

``` purescript
deleteIdentityPool :: forall eff. DeleteIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `describeIdentity`

``` purescript
describeIdentity :: forall eff. DescribeIdentityInput -> Aff (exception :: EXCEPTION | eff) IdentityDescription
```

<p>Returns metadata related to the given identity, including when the identity was created and any associated linked logins.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `describeIdentityPool`

``` purescript
describeIdentityPool :: forall eff. DescribeIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `getCredentialsForIdentity`

``` purescript
getCredentialsForIdentity :: forall eff. GetCredentialsForIdentityInput -> Aff (exception :: EXCEPTION | eff) GetCredentialsForIdentityResponse
```

<p>Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getId`

``` purescript
getId :: forall eff. GetIdInput -> Aff (exception :: EXCEPTION | eff) GetIdResponse
```

<p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getIdentityPoolRoles`

``` purescript
getIdentityPoolRoles :: forall eff. GetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) GetIdentityPoolRolesResponse
```

<p>Gets the roles for an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `getOpenIdToken`

``` purescript
getOpenIdToken :: forall eff. GetOpenIdTokenInput -> Aff (exception :: EXCEPTION | eff) GetOpenIdTokenResponse
```

<p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by <a>GetId</a>. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.</p> <p>The OpenId token is valid for 15 minutes.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `getOpenIdTokenForDeveloperIdentity`

``` purescript
getOpenIdTokenForDeveloperIdentity :: forall eff. GetOpenIdTokenForDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) GetOpenIdTokenForDeveloperIdentityResponse
```

<p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the <code>Logins</code> map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.</p> <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `listIdentities`

``` purescript
listIdentities :: forall eff. ListIdentitiesInput -> Aff (exception :: EXCEPTION | eff) ListIdentitiesResponse
```

<p>Lists the identities in a pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `listIdentityPools`

``` purescript
listIdentityPools :: forall eff. ListIdentityPoolsInput -> Aff (exception :: EXCEPTION | eff) ListIdentityPoolsResponse
```

<p>Lists all of the Cognito identity pools registered for your account.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `lookupDeveloperIdentity`

``` purescript
lookupDeveloperIdentity :: forall eff. LookupDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) LookupDeveloperIdentityResponse
```

<p>Retrieves the <code>IdentityID</code> associated with a <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>s associated with an <code>IdentityId</code> for an existing identity. Either <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a <code>ResourceConflictException</code> is thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `mergeDeveloperIdentities`

``` purescript
mergeDeveloperIdentities :: forall eff. MergeDeveloperIdentitiesInput -> Aff (exception :: EXCEPTION | eff) MergeDeveloperIdentitiesResponse
```

<p>Merges two users having different <code>IdentityId</code>s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>) with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `setIdentityPoolRoles`

``` purescript
setIdentityPoolRoles :: forall eff. SetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `unlinkDeveloperIdentity`

``` purescript
unlinkDeveloperIdentity :: forall eff. UnlinkDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `unlinkIdentity`

``` purescript
unlinkIdentity :: forall eff. UnlinkIdentityInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

#### `updateIdentityPool`

``` purescript
updateIdentityPool :: forall eff. IdentityPool -> Aff (exception :: EXCEPTION | eff) IdentityPool
```

<p>Updates a user pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

#### `ARNString`

``` purescript
newtype ARNString
  = ARNString String
```

##### Instances
``` purescript
Newtype ARNString _
Generic ARNString _
Show ARNString
Decode ARNString
Encode ARNString
```

#### `AccessKeyString`

``` purescript
newtype AccessKeyString
  = AccessKeyString String
```

##### Instances
``` purescript
Newtype AccessKeyString _
Generic AccessKeyString _
Show AccessKeyString
Decode AccessKeyString
Encode AccessKeyString
```

#### `AccountId`

``` purescript
newtype AccountId
  = AccountId String
```

##### Instances
``` purescript
Newtype AccountId _
Generic AccountId _
Show AccountId
Decode AccountId
Encode AccountId
```

#### `AmbiguousRoleResolutionType`

``` purescript
newtype AmbiguousRoleResolutionType
  = AmbiguousRoleResolutionType String
```

##### Instances
``` purescript
Newtype AmbiguousRoleResolutionType _
Generic AmbiguousRoleResolutionType _
Show AmbiguousRoleResolutionType
Decode AmbiguousRoleResolutionType
Encode AmbiguousRoleResolutionType
```

#### `ClaimName`

``` purescript
newtype ClaimName
  = ClaimName String
```

##### Instances
``` purescript
Newtype ClaimName _
Generic ClaimName _
Show ClaimName
Decode ClaimName
Encode ClaimName
```

#### `ClaimValue`

``` purescript
newtype ClaimValue
  = ClaimValue String
```

##### Instances
``` purescript
Newtype ClaimValue _
Generic ClaimValue _
Show ClaimValue
Decode ClaimValue
Encode ClaimValue
```

#### `CognitoIdentityProvider`

``` purescript
newtype CognitoIdentityProvider
  = CognitoIdentityProvider { "ProviderName" :: NullOrUndefined (CognitoIdentityProviderName), "ClientId" :: NullOrUndefined (CognitoIdentityProviderClientId), "ServerSideTokenCheck" :: NullOrUndefined (CognitoIdentityProviderTokenCheck) }
```

<p>A provider representing an Amazon Cognito Identity User Pool and its client ID.</p>

##### Instances
``` purescript
Newtype CognitoIdentityProvider _
Generic CognitoIdentityProvider _
Show CognitoIdentityProvider
Decode CognitoIdentityProvider
Encode CognitoIdentityProvider
```

#### `newCognitoIdentityProvider`

``` purescript
newCognitoIdentityProvider :: CognitoIdentityProvider
```

Constructs CognitoIdentityProvider from required parameters

#### `newCognitoIdentityProvider'`

``` purescript
newCognitoIdentityProvider' :: ({ "ProviderName" :: NullOrUndefined (CognitoIdentityProviderName), "ClientId" :: NullOrUndefined (CognitoIdentityProviderClientId), "ServerSideTokenCheck" :: NullOrUndefined (CognitoIdentityProviderTokenCheck) } -> { "ProviderName" :: NullOrUndefined (CognitoIdentityProviderName), "ClientId" :: NullOrUndefined (CognitoIdentityProviderClientId), "ServerSideTokenCheck" :: NullOrUndefined (CognitoIdentityProviderTokenCheck) }) -> CognitoIdentityProvider
```

Constructs CognitoIdentityProvider's fields from required parameters

#### `CognitoIdentityProviderClientId`

``` purescript
newtype CognitoIdentityProviderClientId
  = CognitoIdentityProviderClientId String
```

##### Instances
``` purescript
Newtype CognitoIdentityProviderClientId _
Generic CognitoIdentityProviderClientId _
Show CognitoIdentityProviderClientId
Decode CognitoIdentityProviderClientId
Encode CognitoIdentityProviderClientId
```

#### `CognitoIdentityProviderList`

``` purescript
newtype CognitoIdentityProviderList
  = CognitoIdentityProviderList (Array CognitoIdentityProvider)
```

##### Instances
``` purescript
Newtype CognitoIdentityProviderList _
Generic CognitoIdentityProviderList _
Show CognitoIdentityProviderList
Decode CognitoIdentityProviderList
Encode CognitoIdentityProviderList
```

#### `CognitoIdentityProviderName`

``` purescript
newtype CognitoIdentityProviderName
  = CognitoIdentityProviderName String
```

##### Instances
``` purescript
Newtype CognitoIdentityProviderName _
Generic CognitoIdentityProviderName _
Show CognitoIdentityProviderName
Decode CognitoIdentityProviderName
Encode CognitoIdentityProviderName
```

#### `CognitoIdentityProviderTokenCheck`

``` purescript
newtype CognitoIdentityProviderTokenCheck
  = CognitoIdentityProviderTokenCheck Boolean
```

##### Instances
``` purescript
Newtype CognitoIdentityProviderTokenCheck _
Generic CognitoIdentityProviderTokenCheck _
Show CognitoIdentityProviderTokenCheck
Decode CognitoIdentityProviderTokenCheck
Encode CognitoIdentityProviderTokenCheck
```

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { message :: NullOrUndefined (String) }
```

<p>Thrown if there are parallel requests to modify a resource.</p>

##### Instances
``` purescript
Newtype ConcurrentModificationException _
Generic ConcurrentModificationException _
Show ConcurrentModificationException
Decode ConcurrentModificationException
Encode ConcurrentModificationException
```

#### `newConcurrentModificationException`

``` purescript
newConcurrentModificationException :: ConcurrentModificationException
```

Constructs ConcurrentModificationException from required parameters

#### `newConcurrentModificationException'`

``` purescript
newConcurrentModificationException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `CreateIdentityPoolInput`

``` purescript
newtype CreateIdentityPoolInput
  = CreateIdentityPoolInput { "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) }
```

<p>Input to the CreateIdentityPool action.</p>

##### Instances
``` purescript
Newtype CreateIdentityPoolInput _
Generic CreateIdentityPoolInput _
Show CreateIdentityPoolInput
Decode CreateIdentityPoolInput
Encode CreateIdentityPoolInput
```

#### `newCreateIdentityPoolInput`

``` purescript
newCreateIdentityPoolInput :: IdentityPoolUnauthenticated -> IdentityPoolName -> CreateIdentityPoolInput
```

Constructs CreateIdentityPoolInput from required parameters

#### `newCreateIdentityPoolInput'`

``` purescript
newCreateIdentityPoolInput' :: IdentityPoolUnauthenticated -> IdentityPoolName -> ({ "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) } -> { "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) }) -> CreateIdentityPoolInput
```

Constructs CreateIdentityPoolInput's fields from required parameters

#### `Credentials`

``` purescript
newtype Credentials
  = Credentials { "AccessKeyId" :: NullOrUndefined (AccessKeyString), "SecretKey" :: NullOrUndefined (SecretKeyString), "SessionToken" :: NullOrUndefined (SessionTokenString), "Expiration" :: NullOrUndefined (DateType) }
```

<p>Credentials for the provided identity ID.</p>

##### Instances
``` purescript
Newtype Credentials _
Generic Credentials _
Show Credentials
Decode Credentials
Encode Credentials
```

#### `newCredentials`

``` purescript
newCredentials :: Credentials
```

Constructs Credentials from required parameters

#### `newCredentials'`

``` purescript
newCredentials' :: ({ "AccessKeyId" :: NullOrUndefined (AccessKeyString), "SecretKey" :: NullOrUndefined (SecretKeyString), "SessionToken" :: NullOrUndefined (SessionTokenString), "Expiration" :: NullOrUndefined (DateType) } -> { "AccessKeyId" :: NullOrUndefined (AccessKeyString), "SecretKey" :: NullOrUndefined (SecretKeyString), "SessionToken" :: NullOrUndefined (SessionTokenString), "Expiration" :: NullOrUndefined (DateType) }) -> Credentials
```

Constructs Credentials's fields from required parameters

#### `DateType`

``` purescript
newtype DateType
  = DateType Timestamp
```

##### Instances
``` purescript
Newtype DateType _
Generic DateType _
Show DateType
Decode DateType
Encode DateType
```

#### `DeleteIdentitiesInput`

``` purescript
newtype DeleteIdentitiesInput
  = DeleteIdentitiesInput { "IdentityIdsToDelete" :: IdentityIdList }
```

<p>Input to the <code>DeleteIdentities</code> action.</p>

##### Instances
``` purescript
Newtype DeleteIdentitiesInput _
Generic DeleteIdentitiesInput _
Show DeleteIdentitiesInput
Decode DeleteIdentitiesInput
Encode DeleteIdentitiesInput
```

#### `newDeleteIdentitiesInput`

``` purescript
newDeleteIdentitiesInput :: IdentityIdList -> DeleteIdentitiesInput
```

Constructs DeleteIdentitiesInput from required parameters

#### `newDeleteIdentitiesInput'`

``` purescript
newDeleteIdentitiesInput' :: IdentityIdList -> ({ "IdentityIdsToDelete" :: IdentityIdList } -> { "IdentityIdsToDelete" :: IdentityIdList }) -> DeleteIdentitiesInput
```

Constructs DeleteIdentitiesInput's fields from required parameters

#### `DeleteIdentitiesResponse`

``` purescript
newtype DeleteIdentitiesResponse
  = DeleteIdentitiesResponse { "UnprocessedIdentityIds" :: NullOrUndefined (UnprocessedIdentityIdList) }
```

<p>Returned in response to a successful <code>DeleteIdentities</code> operation.</p>

##### Instances
``` purescript
Newtype DeleteIdentitiesResponse _
Generic DeleteIdentitiesResponse _
Show DeleteIdentitiesResponse
Decode DeleteIdentitiesResponse
Encode DeleteIdentitiesResponse
```

#### `newDeleteIdentitiesResponse`

``` purescript
newDeleteIdentitiesResponse :: DeleteIdentitiesResponse
```

Constructs DeleteIdentitiesResponse from required parameters

#### `newDeleteIdentitiesResponse'`

``` purescript
newDeleteIdentitiesResponse' :: ({ "UnprocessedIdentityIds" :: NullOrUndefined (UnprocessedIdentityIdList) } -> { "UnprocessedIdentityIds" :: NullOrUndefined (UnprocessedIdentityIdList) }) -> DeleteIdentitiesResponse
```

Constructs DeleteIdentitiesResponse's fields from required parameters

#### `DeleteIdentityPoolInput`

``` purescript
newtype DeleteIdentityPoolInput
  = DeleteIdentityPoolInput { "IdentityPoolId" :: IdentityPoolId }
```

<p>Input to the DeleteIdentityPool action.</p>

##### Instances
``` purescript
Newtype DeleteIdentityPoolInput _
Generic DeleteIdentityPoolInput _
Show DeleteIdentityPoolInput
Decode DeleteIdentityPoolInput
Encode DeleteIdentityPoolInput
```

#### `newDeleteIdentityPoolInput`

``` purescript
newDeleteIdentityPoolInput :: IdentityPoolId -> DeleteIdentityPoolInput
```

Constructs DeleteIdentityPoolInput from required parameters

#### `newDeleteIdentityPoolInput'`

``` purescript
newDeleteIdentityPoolInput' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> DeleteIdentityPoolInput
```

Constructs DeleteIdentityPoolInput's fields from required parameters

#### `DescribeIdentityInput`

``` purescript
newtype DescribeIdentityInput
  = DescribeIdentityInput { "IdentityId" :: IdentityId }
```

<p>Input to the <code>DescribeIdentity</code> action.</p>

##### Instances
``` purescript
Newtype DescribeIdentityInput _
Generic DescribeIdentityInput _
Show DescribeIdentityInput
Decode DescribeIdentityInput
Encode DescribeIdentityInput
```

#### `newDescribeIdentityInput`

``` purescript
newDescribeIdentityInput :: IdentityId -> DescribeIdentityInput
```

Constructs DescribeIdentityInput from required parameters

#### `newDescribeIdentityInput'`

``` purescript
newDescribeIdentityInput' :: IdentityId -> ({ "IdentityId" :: IdentityId } -> { "IdentityId" :: IdentityId }) -> DescribeIdentityInput
```

Constructs DescribeIdentityInput's fields from required parameters

#### `DescribeIdentityPoolInput`

``` purescript
newtype DescribeIdentityPoolInput
  = DescribeIdentityPoolInput { "IdentityPoolId" :: IdentityPoolId }
```

<p>Input to the DescribeIdentityPool action.</p>

##### Instances
``` purescript
Newtype DescribeIdentityPoolInput _
Generic DescribeIdentityPoolInput _
Show DescribeIdentityPoolInput
Decode DescribeIdentityPoolInput
Encode DescribeIdentityPoolInput
```

#### `newDescribeIdentityPoolInput`

``` purescript
newDescribeIdentityPoolInput :: IdentityPoolId -> DescribeIdentityPoolInput
```

Constructs DescribeIdentityPoolInput from required parameters

#### `newDescribeIdentityPoolInput'`

``` purescript
newDescribeIdentityPoolInput' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> DescribeIdentityPoolInput
```

Constructs DescribeIdentityPoolInput's fields from required parameters

#### `DeveloperProviderName`

``` purescript
newtype DeveloperProviderName
  = DeveloperProviderName String
```

##### Instances
``` purescript
Newtype DeveloperProviderName _
Generic DeveloperProviderName _
Show DeveloperProviderName
Decode DeveloperProviderName
Encode DeveloperProviderName
```

#### `DeveloperUserAlreadyRegisteredException`

``` purescript
newtype DeveloperUserAlreadyRegisteredException
  = DeveloperUserAlreadyRegisteredException { message :: NullOrUndefined (String) }
```

<p>The provided developer user identifier is already registered with Cognito under a different identity ID.</p>

##### Instances
``` purescript
Newtype DeveloperUserAlreadyRegisteredException _
Generic DeveloperUserAlreadyRegisteredException _
Show DeveloperUserAlreadyRegisteredException
Decode DeveloperUserAlreadyRegisteredException
Encode DeveloperUserAlreadyRegisteredException
```

#### `newDeveloperUserAlreadyRegisteredException`

``` purescript
newDeveloperUserAlreadyRegisteredException :: DeveloperUserAlreadyRegisteredException
```

Constructs DeveloperUserAlreadyRegisteredException from required parameters

#### `newDeveloperUserAlreadyRegisteredException'`

``` purescript
newDeveloperUserAlreadyRegisteredException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> DeveloperUserAlreadyRegisteredException
```

Constructs DeveloperUserAlreadyRegisteredException's fields from required parameters

#### `DeveloperUserIdentifier`

``` purescript
newtype DeveloperUserIdentifier
  = DeveloperUserIdentifier String
```

##### Instances
``` purescript
Newtype DeveloperUserIdentifier _
Generic DeveloperUserIdentifier _
Show DeveloperUserIdentifier
Decode DeveloperUserIdentifier
Encode DeveloperUserIdentifier
```

#### `DeveloperUserIdentifierList`

``` purescript
newtype DeveloperUserIdentifierList
  = DeveloperUserIdentifierList (Array DeveloperUserIdentifier)
```

##### Instances
``` purescript
Newtype DeveloperUserIdentifierList _
Generic DeveloperUserIdentifierList _
Show DeveloperUserIdentifierList
Decode DeveloperUserIdentifierList
Encode DeveloperUserIdentifierList
```

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ExternalServiceException`

``` purescript
newtype ExternalServiceException
  = ExternalServiceException { message :: NullOrUndefined (String) }
```

<p>An exception thrown when a dependent service such as Facebook or Twitter is not responding</p>

##### Instances
``` purescript
Newtype ExternalServiceException _
Generic ExternalServiceException _
Show ExternalServiceException
Decode ExternalServiceException
Encode ExternalServiceException
```

#### `newExternalServiceException`

``` purescript
newExternalServiceException :: ExternalServiceException
```

Constructs ExternalServiceException from required parameters

#### `newExternalServiceException'`

``` purescript
newExternalServiceException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ExternalServiceException
```

Constructs ExternalServiceException's fields from required parameters

#### `GetCredentialsForIdentityInput`

``` purescript
newtype GetCredentialsForIdentityInput
  = GetCredentialsForIdentityInput { "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap), "CustomRoleArn" :: NullOrUndefined (ARNString) }
```

<p>Input to the <code>GetCredentialsForIdentity</code> action.</p>

##### Instances
``` purescript
Newtype GetCredentialsForIdentityInput _
Generic GetCredentialsForIdentityInput _
Show GetCredentialsForIdentityInput
Decode GetCredentialsForIdentityInput
Encode GetCredentialsForIdentityInput
```

#### `newGetCredentialsForIdentityInput`

``` purescript
newGetCredentialsForIdentityInput :: IdentityId -> GetCredentialsForIdentityInput
```

Constructs GetCredentialsForIdentityInput from required parameters

#### `newGetCredentialsForIdentityInput'`

``` purescript
newGetCredentialsForIdentityInput' :: IdentityId -> ({ "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap), "CustomRoleArn" :: NullOrUndefined (ARNString) } -> { "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap), "CustomRoleArn" :: NullOrUndefined (ARNString) }) -> GetCredentialsForIdentityInput
```

Constructs GetCredentialsForIdentityInput's fields from required parameters

#### `GetCredentialsForIdentityResponse`

``` purescript
newtype GetCredentialsForIdentityResponse
  = GetCredentialsForIdentityResponse { "IdentityId" :: NullOrUndefined (IdentityId), "Credentials" :: NullOrUndefined (Credentials) }
```

<p>Returned in response to a successful <code>GetCredentialsForIdentity</code> operation.</p>

##### Instances
``` purescript
Newtype GetCredentialsForIdentityResponse _
Generic GetCredentialsForIdentityResponse _
Show GetCredentialsForIdentityResponse
Decode GetCredentialsForIdentityResponse
Encode GetCredentialsForIdentityResponse
```

#### `newGetCredentialsForIdentityResponse`

``` purescript
newGetCredentialsForIdentityResponse :: GetCredentialsForIdentityResponse
```

Constructs GetCredentialsForIdentityResponse from required parameters

#### `newGetCredentialsForIdentityResponse'`

``` purescript
newGetCredentialsForIdentityResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "Credentials" :: NullOrUndefined (Credentials) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "Credentials" :: NullOrUndefined (Credentials) }) -> GetCredentialsForIdentityResponse
```

Constructs GetCredentialsForIdentityResponse's fields from required parameters

#### `GetIdInput`

``` purescript
newtype GetIdInput
  = GetIdInput { "AccountId" :: NullOrUndefined (AccountId), "IdentityPoolId" :: IdentityPoolId, "Logins" :: NullOrUndefined (LoginsMap) }
```

<p>Input to the GetId action.</p>

##### Instances
``` purescript
Newtype GetIdInput _
Generic GetIdInput _
Show GetIdInput
Decode GetIdInput
Encode GetIdInput
```

#### `newGetIdInput`

``` purescript
newGetIdInput :: IdentityPoolId -> GetIdInput
```

Constructs GetIdInput from required parameters

#### `newGetIdInput'`

``` purescript
newGetIdInput' :: IdentityPoolId -> ({ "AccountId" :: NullOrUndefined (AccountId), "IdentityPoolId" :: IdentityPoolId, "Logins" :: NullOrUndefined (LoginsMap) } -> { "AccountId" :: NullOrUndefined (AccountId), "IdentityPoolId" :: IdentityPoolId, "Logins" :: NullOrUndefined (LoginsMap) }) -> GetIdInput
```

Constructs GetIdInput's fields from required parameters

#### `GetIdResponse`

``` purescript
newtype GetIdResponse
  = GetIdResponse { "IdentityId" :: NullOrUndefined (IdentityId) }
```

<p>Returned in response to a GetId request.</p>

##### Instances
``` purescript
Newtype GetIdResponse _
Generic GetIdResponse _
Show GetIdResponse
Decode GetIdResponse
Encode GetIdResponse
```

#### `newGetIdResponse`

``` purescript
newGetIdResponse :: GetIdResponse
```

Constructs GetIdResponse from required parameters

#### `newGetIdResponse'`

``` purescript
newGetIdResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId) } -> { "IdentityId" :: NullOrUndefined (IdentityId) }) -> GetIdResponse
```

Constructs GetIdResponse's fields from required parameters

#### `GetIdentityPoolRolesInput`

``` purescript
newtype GetIdentityPoolRolesInput
  = GetIdentityPoolRolesInput { "IdentityPoolId" :: IdentityPoolId }
```

<p>Input to the <code>GetIdentityPoolRoles</code> action.</p>

##### Instances
``` purescript
Newtype GetIdentityPoolRolesInput _
Generic GetIdentityPoolRolesInput _
Show GetIdentityPoolRolesInput
Decode GetIdentityPoolRolesInput
Encode GetIdentityPoolRolesInput
```

#### `newGetIdentityPoolRolesInput`

``` purescript
newGetIdentityPoolRolesInput :: IdentityPoolId -> GetIdentityPoolRolesInput
```

Constructs GetIdentityPoolRolesInput from required parameters

#### `newGetIdentityPoolRolesInput'`

``` purescript
newGetIdentityPoolRolesInput' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> GetIdentityPoolRolesInput
```

Constructs GetIdentityPoolRolesInput's fields from required parameters

#### `GetIdentityPoolRolesResponse`

``` purescript
newtype GetIdentityPoolRolesResponse
  = GetIdentityPoolRolesResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Roles" :: NullOrUndefined (RolesMap), "RoleMappings" :: NullOrUndefined (RoleMappingMap) }
```

<p>Returned in response to a successful <code>GetIdentityPoolRoles</code> operation.</p>

##### Instances
``` purescript
Newtype GetIdentityPoolRolesResponse _
Generic GetIdentityPoolRolesResponse _
Show GetIdentityPoolRolesResponse
Decode GetIdentityPoolRolesResponse
Encode GetIdentityPoolRolesResponse
```

#### `newGetIdentityPoolRolesResponse`

``` purescript
newGetIdentityPoolRolesResponse :: GetIdentityPoolRolesResponse
```

Constructs GetIdentityPoolRolesResponse from required parameters

#### `newGetIdentityPoolRolesResponse'`

``` purescript
newGetIdentityPoolRolesResponse' :: ({ "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Roles" :: NullOrUndefined (RolesMap), "RoleMappings" :: NullOrUndefined (RoleMappingMap) } -> { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Roles" :: NullOrUndefined (RolesMap), "RoleMappings" :: NullOrUndefined (RoleMappingMap) }) -> GetIdentityPoolRolesResponse
```

Constructs GetIdentityPoolRolesResponse's fields from required parameters

#### `GetOpenIdTokenForDeveloperIdentityInput`

``` purescript
newtype GetOpenIdTokenForDeveloperIdentityInput
  = GetOpenIdTokenForDeveloperIdentityInput { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: LoginsMap, "TokenDuration" :: NullOrUndefined (TokenDuration) }
```

<p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>

##### Instances
``` purescript
Newtype GetOpenIdTokenForDeveloperIdentityInput _
Generic GetOpenIdTokenForDeveloperIdentityInput _
Show GetOpenIdTokenForDeveloperIdentityInput
Decode GetOpenIdTokenForDeveloperIdentityInput
Encode GetOpenIdTokenForDeveloperIdentityInput
```

#### `newGetOpenIdTokenForDeveloperIdentityInput`

``` purescript
newGetOpenIdTokenForDeveloperIdentityInput :: IdentityPoolId -> LoginsMap -> GetOpenIdTokenForDeveloperIdentityInput
```

Constructs GetOpenIdTokenForDeveloperIdentityInput from required parameters

#### `newGetOpenIdTokenForDeveloperIdentityInput'`

``` purescript
newGetOpenIdTokenForDeveloperIdentityInput' :: IdentityPoolId -> LoginsMap -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: LoginsMap, "TokenDuration" :: NullOrUndefined (TokenDuration) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: LoginsMap, "TokenDuration" :: NullOrUndefined (TokenDuration) }) -> GetOpenIdTokenForDeveloperIdentityInput
```

Constructs GetOpenIdTokenForDeveloperIdentityInput's fields from required parameters

#### `GetOpenIdTokenForDeveloperIdentityResponse`

``` purescript
newtype GetOpenIdTokenForDeveloperIdentityResponse
  = GetOpenIdTokenForDeveloperIdentityResponse { "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) }
```

<p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code> request.</p>

##### Instances
``` purescript
Newtype GetOpenIdTokenForDeveloperIdentityResponse _
Generic GetOpenIdTokenForDeveloperIdentityResponse _
Show GetOpenIdTokenForDeveloperIdentityResponse
Decode GetOpenIdTokenForDeveloperIdentityResponse
Encode GetOpenIdTokenForDeveloperIdentityResponse
```

#### `newGetOpenIdTokenForDeveloperIdentityResponse`

``` purescript
newGetOpenIdTokenForDeveloperIdentityResponse :: GetOpenIdTokenForDeveloperIdentityResponse
```

Constructs GetOpenIdTokenForDeveloperIdentityResponse from required parameters

#### `newGetOpenIdTokenForDeveloperIdentityResponse'`

``` purescript
newGetOpenIdTokenForDeveloperIdentityResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) }) -> GetOpenIdTokenForDeveloperIdentityResponse
```

Constructs GetOpenIdTokenForDeveloperIdentityResponse's fields from required parameters

#### `GetOpenIdTokenInput`

``` purescript
newtype GetOpenIdTokenInput
  = GetOpenIdTokenInput { "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap) }
```

<p>Input to the GetOpenIdToken action.</p>

##### Instances
``` purescript
Newtype GetOpenIdTokenInput _
Generic GetOpenIdTokenInput _
Show GetOpenIdTokenInput
Decode GetOpenIdTokenInput
Encode GetOpenIdTokenInput
```

#### `newGetOpenIdTokenInput`

``` purescript
newGetOpenIdTokenInput :: IdentityId -> GetOpenIdTokenInput
```

Constructs GetOpenIdTokenInput from required parameters

#### `newGetOpenIdTokenInput'`

``` purescript
newGetOpenIdTokenInput' :: IdentityId -> ({ "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap) } -> { "IdentityId" :: IdentityId, "Logins" :: NullOrUndefined (LoginsMap) }) -> GetOpenIdTokenInput
```

Constructs GetOpenIdTokenInput's fields from required parameters

#### `GetOpenIdTokenResponse`

``` purescript
newtype GetOpenIdTokenResponse
  = GetOpenIdTokenResponse { "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) }
```

<p>Returned in response to a successful GetOpenIdToken request.</p>

##### Instances
``` purescript
Newtype GetOpenIdTokenResponse _
Generic GetOpenIdTokenResponse _
Show GetOpenIdTokenResponse
Decode GetOpenIdTokenResponse
Encode GetOpenIdTokenResponse
```

#### `newGetOpenIdTokenResponse`

``` purescript
newGetOpenIdTokenResponse :: GetOpenIdTokenResponse
```

Constructs GetOpenIdTokenResponse from required parameters

#### `newGetOpenIdTokenResponse'`

``` purescript
newGetOpenIdTokenResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "Token" :: NullOrUndefined (OIDCToken) }) -> GetOpenIdTokenResponse
```

Constructs GetOpenIdTokenResponse's fields from required parameters

#### `HideDisabled`

``` purescript
newtype HideDisabled
  = HideDisabled Boolean
```

##### Instances
``` purescript
Newtype HideDisabled _
Generic HideDisabled _
Show HideDisabled
Decode HideDisabled
Encode HideDisabled
```

#### `IdentitiesList`

``` purescript
newtype IdentitiesList
  = IdentitiesList (Array IdentityDescription)
```

##### Instances
``` purescript
Newtype IdentitiesList _
Generic IdentitiesList _
Show IdentitiesList
Decode IdentitiesList
Encode IdentitiesList
```

#### `IdentityDescription`

``` purescript
newtype IdentityDescription
  = IdentityDescription { "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: NullOrUndefined (LoginsList), "CreationDate" :: NullOrUndefined (DateType), "LastModifiedDate" :: NullOrUndefined (DateType) }
```

<p>A description of the identity.</p>

##### Instances
``` purescript
Newtype IdentityDescription _
Generic IdentityDescription _
Show IdentityDescription
Decode IdentityDescription
Encode IdentityDescription
```

#### `newIdentityDescription`

``` purescript
newIdentityDescription :: IdentityDescription
```

Constructs IdentityDescription from required parameters

#### `newIdentityDescription'`

``` purescript
newIdentityDescription' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: NullOrUndefined (LoginsList), "CreationDate" :: NullOrUndefined (DateType), "LastModifiedDate" :: NullOrUndefined (DateType) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "Logins" :: NullOrUndefined (LoginsList), "CreationDate" :: NullOrUndefined (DateType), "LastModifiedDate" :: NullOrUndefined (DateType) }) -> IdentityDescription
```

Constructs IdentityDescription's fields from required parameters

#### `IdentityId`

``` purescript
newtype IdentityId
  = IdentityId String
```

##### Instances
``` purescript
Newtype IdentityId _
Generic IdentityId _
Show IdentityId
Decode IdentityId
Encode IdentityId
```

#### `IdentityIdList`

``` purescript
newtype IdentityIdList
  = IdentityIdList (Array IdentityId)
```

##### Instances
``` purescript
Newtype IdentityIdList _
Generic IdentityIdList _
Show IdentityIdList
Decode IdentityIdList
Encode IdentityIdList
```

#### `IdentityPool`

``` purescript
newtype IdentityPool
  = IdentityPool { "IdentityPoolId" :: IdentityPoolId, "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) }
```

<p>An object representing an Amazon Cognito identity pool.</p>

##### Instances
``` purescript
Newtype IdentityPool _
Generic IdentityPool _
Show IdentityPool
Decode IdentityPool
Encode IdentityPool
```

#### `newIdentityPool`

``` purescript
newIdentityPool :: IdentityPoolUnauthenticated -> IdentityPoolId -> IdentityPoolName -> IdentityPool
```

Constructs IdentityPool from required parameters

#### `newIdentityPool'`

``` purescript
newIdentityPool' :: IdentityPoolUnauthenticated -> IdentityPoolId -> IdentityPoolName -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityPoolName" :: IdentityPoolName, "AllowUnauthenticatedIdentities" :: IdentityPoolUnauthenticated, "SupportedLoginProviders" :: NullOrUndefined (IdentityProviders), "DeveloperProviderName" :: NullOrUndefined (DeveloperProviderName), "OpenIdConnectProviderARNs" :: NullOrUndefined (OIDCProviderList), "CognitoIdentityProviders" :: NullOrUndefined (CognitoIdentityProviderList), "SamlProviderARNs" :: NullOrUndefined (SAMLProviderList) }) -> IdentityPool
```

Constructs IdentityPool's fields from required parameters

#### `IdentityPoolId`

``` purescript
newtype IdentityPoolId
  = IdentityPoolId String
```

##### Instances
``` purescript
Newtype IdentityPoolId _
Generic IdentityPoolId _
Show IdentityPoolId
Decode IdentityPoolId
Encode IdentityPoolId
```

#### `IdentityPoolName`

``` purescript
newtype IdentityPoolName
  = IdentityPoolName String
```

##### Instances
``` purescript
Newtype IdentityPoolName _
Generic IdentityPoolName _
Show IdentityPoolName
Decode IdentityPoolName
Encode IdentityPoolName
```

#### `IdentityPoolShortDescription`

``` purescript
newtype IdentityPoolShortDescription
  = IdentityPoolShortDescription { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "IdentityPoolName" :: NullOrUndefined (IdentityPoolName) }
```

<p>A description of the identity pool.</p>

##### Instances
``` purescript
Newtype IdentityPoolShortDescription _
Generic IdentityPoolShortDescription _
Show IdentityPoolShortDescription
Decode IdentityPoolShortDescription
Encode IdentityPoolShortDescription
```

#### `newIdentityPoolShortDescription`

``` purescript
newIdentityPoolShortDescription :: IdentityPoolShortDescription
```

Constructs IdentityPoolShortDescription from required parameters

#### `newIdentityPoolShortDescription'`

``` purescript
newIdentityPoolShortDescription' :: ({ "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "IdentityPoolName" :: NullOrUndefined (IdentityPoolName) } -> { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "IdentityPoolName" :: NullOrUndefined (IdentityPoolName) }) -> IdentityPoolShortDescription
```

Constructs IdentityPoolShortDescription's fields from required parameters

#### `IdentityPoolUnauthenticated`

``` purescript
newtype IdentityPoolUnauthenticated
  = IdentityPoolUnauthenticated Boolean
```

##### Instances
``` purescript
Newtype IdentityPoolUnauthenticated _
Generic IdentityPoolUnauthenticated _
Show IdentityPoolUnauthenticated
Decode IdentityPoolUnauthenticated
Encode IdentityPoolUnauthenticated
```

#### `IdentityPoolsList`

``` purescript
newtype IdentityPoolsList
  = IdentityPoolsList (Array IdentityPoolShortDescription)
```

##### Instances
``` purescript
Newtype IdentityPoolsList _
Generic IdentityPoolsList _
Show IdentityPoolsList
Decode IdentityPoolsList
Encode IdentityPoolsList
```

#### `IdentityProviderId`

``` purescript
newtype IdentityProviderId
  = IdentityProviderId String
```

##### Instances
``` purescript
Newtype IdentityProviderId _
Generic IdentityProviderId _
Show IdentityProviderId
Decode IdentityProviderId
Encode IdentityProviderId
```

#### `IdentityProviderName`

``` purescript
newtype IdentityProviderName
  = IdentityProviderName String
```

##### Instances
``` purescript
Newtype IdentityProviderName _
Generic IdentityProviderName _
Show IdentityProviderName
Decode IdentityProviderName
Encode IdentityProviderName
```

#### `IdentityProviderToken`

``` purescript
newtype IdentityProviderToken
  = IdentityProviderToken String
```

##### Instances
``` purescript
Newtype IdentityProviderToken _
Generic IdentityProviderToken _
Show IdentityProviderToken
Decode IdentityProviderToken
Encode IdentityProviderToken
```

#### `IdentityProviders`

``` purescript
newtype IdentityProviders
  = IdentityProviders (StrMap IdentityProviderId)
```

##### Instances
``` purescript
Newtype IdentityProviders _
Generic IdentityProviders _
Show IdentityProviders
Decode IdentityProviders
Encode IdentityProviders
```

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: NullOrUndefined (String) }
```

<p>Thrown when the service encounters an error during processing the request.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidIdentityPoolConfigurationException`

``` purescript
newtype InvalidIdentityPoolConfigurationException
  = InvalidIdentityPoolConfigurationException { message :: NullOrUndefined (String) }
```

<p>Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.</p>

##### Instances
``` purescript
Newtype InvalidIdentityPoolConfigurationException _
Generic InvalidIdentityPoolConfigurationException _
Show InvalidIdentityPoolConfigurationException
Decode InvalidIdentityPoolConfigurationException
Encode InvalidIdentityPoolConfigurationException
```

#### `newInvalidIdentityPoolConfigurationException`

``` purescript
newInvalidIdentityPoolConfigurationException :: InvalidIdentityPoolConfigurationException
```

Constructs InvalidIdentityPoolConfigurationException from required parameters

#### `newInvalidIdentityPoolConfigurationException'`

``` purescript
newInvalidIdentityPoolConfigurationException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InvalidIdentityPoolConfigurationException
```

Constructs InvalidIdentityPoolConfigurationException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (String) }
```

<p>Thrown for missing or bad input parameter(s).</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (String) }
```

<p>Thrown when the total number of user pools has exceeded a preset limit.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListIdentitiesInput`

``` purescript
newtype ListIdentitiesInput
  = ListIdentitiesInput { "IdentityPoolId" :: IdentityPoolId, "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey), "HideDisabled" :: NullOrUndefined (HideDisabled) }
```

<p>Input to the ListIdentities action.</p>

##### Instances
``` purescript
Newtype ListIdentitiesInput _
Generic ListIdentitiesInput _
Show ListIdentitiesInput
Decode ListIdentitiesInput
Encode ListIdentitiesInput
```

#### `newListIdentitiesInput`

``` purescript
newListIdentitiesInput :: IdentityPoolId -> QueryLimit -> ListIdentitiesInput
```

Constructs ListIdentitiesInput from required parameters

#### `newListIdentitiesInput'`

``` purescript
newListIdentitiesInput' :: IdentityPoolId -> QueryLimit -> ({ "IdentityPoolId" :: IdentityPoolId, "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey), "HideDisabled" :: NullOrUndefined (HideDisabled) } -> { "IdentityPoolId" :: IdentityPoolId, "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey), "HideDisabled" :: NullOrUndefined (HideDisabled) }) -> ListIdentitiesInput
```

Constructs ListIdentitiesInput's fields from required parameters

#### `ListIdentitiesResponse`

``` purescript
newtype ListIdentitiesResponse
  = ListIdentitiesResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Identities" :: NullOrUndefined (IdentitiesList), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>The response to a ListIdentities request.</p>

##### Instances
``` purescript
Newtype ListIdentitiesResponse _
Generic ListIdentitiesResponse _
Show ListIdentitiesResponse
Decode ListIdentitiesResponse
Encode ListIdentitiesResponse
```

#### `newListIdentitiesResponse`

``` purescript
newListIdentitiesResponse :: ListIdentitiesResponse
```

Constructs ListIdentitiesResponse from required parameters

#### `newListIdentitiesResponse'`

``` purescript
newListIdentitiesResponse' :: ({ "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Identities" :: NullOrUndefined (IdentitiesList), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "Identities" :: NullOrUndefined (IdentitiesList), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListIdentitiesResponse
```

Constructs ListIdentitiesResponse's fields from required parameters

#### `ListIdentityPoolsInput`

``` purescript
newtype ListIdentityPoolsInput
  = ListIdentityPoolsInput { "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>Input to the ListIdentityPools action.</p>

##### Instances
``` purescript
Newtype ListIdentityPoolsInput _
Generic ListIdentityPoolsInput _
Show ListIdentityPoolsInput
Decode ListIdentityPoolsInput
Encode ListIdentityPoolsInput
```

#### `newListIdentityPoolsInput`

``` purescript
newListIdentityPoolsInput :: QueryLimit -> ListIdentityPoolsInput
```

Constructs ListIdentityPoolsInput from required parameters

#### `newListIdentityPoolsInput'`

``` purescript
newListIdentityPoolsInput' :: QueryLimit -> ({ "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey) } -> { "MaxResults" :: QueryLimit, "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListIdentityPoolsInput
```

Constructs ListIdentityPoolsInput's fields from required parameters

#### `ListIdentityPoolsResponse`

``` purescript
newtype ListIdentityPoolsResponse
  = ListIdentityPoolsResponse { "IdentityPools" :: NullOrUndefined (IdentityPoolsList), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>The result of a successful ListIdentityPools action.</p>

##### Instances
``` purescript
Newtype ListIdentityPoolsResponse _
Generic ListIdentityPoolsResponse _
Show ListIdentityPoolsResponse
Decode ListIdentityPoolsResponse
Encode ListIdentityPoolsResponse
```

#### `newListIdentityPoolsResponse`

``` purescript
newListIdentityPoolsResponse :: ListIdentityPoolsResponse
```

Constructs ListIdentityPoolsResponse from required parameters

#### `newListIdentityPoolsResponse'`

``` purescript
newListIdentityPoolsResponse' :: ({ "IdentityPools" :: NullOrUndefined (IdentityPoolsList), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "IdentityPools" :: NullOrUndefined (IdentityPoolsList), "NextToken" :: NullOrUndefined (PaginationKey) }) -> ListIdentityPoolsResponse
```

Constructs ListIdentityPoolsResponse's fields from required parameters

#### `LoginsList`

``` purescript
newtype LoginsList
  = LoginsList (Array IdentityProviderName)
```

##### Instances
``` purescript
Newtype LoginsList _
Generic LoginsList _
Show LoginsList
Decode LoginsList
Encode LoginsList
```

#### `LoginsMap`

``` purescript
newtype LoginsMap
  = LoginsMap (StrMap IdentityProviderToken)
```

##### Instances
``` purescript
Newtype LoginsMap _
Generic LoginsMap _
Show LoginsMap
Decode LoginsMap
Encode LoginsMap
```

#### `LookupDeveloperIdentityInput`

``` purescript
newtype LookupDeveloperIdentityInput
  = LookupDeveloperIdentityInput { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifier" :: NullOrUndefined (DeveloperUserIdentifier), "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>

##### Instances
``` purescript
Newtype LookupDeveloperIdentityInput _
Generic LookupDeveloperIdentityInput _
Show LookupDeveloperIdentityInput
Decode LookupDeveloperIdentityInput
Encode LookupDeveloperIdentityInput
```

#### `newLookupDeveloperIdentityInput`

``` purescript
newLookupDeveloperIdentityInput :: IdentityPoolId -> LookupDeveloperIdentityInput
```

Constructs LookupDeveloperIdentityInput from required parameters

#### `newLookupDeveloperIdentityInput'`

``` purescript
newLookupDeveloperIdentityInput' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifier" :: NullOrUndefined (DeveloperUserIdentifier), "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifier" :: NullOrUndefined (DeveloperUserIdentifier), "MaxResults" :: NullOrUndefined (QueryLimit), "NextToken" :: NullOrUndefined (PaginationKey) }) -> LookupDeveloperIdentityInput
```

Constructs LookupDeveloperIdentityInput's fields from required parameters

#### `LookupDeveloperIdentityResponse`

``` purescript
newtype LookupDeveloperIdentityResponse
  = LookupDeveloperIdentityResponse { "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifierList" :: NullOrUndefined (DeveloperUserIdentifierList), "NextToken" :: NullOrUndefined (PaginationKey) }
```

<p>Returned in response to a successful <code>LookupDeveloperIdentity</code> action.</p>

##### Instances
``` purescript
Newtype LookupDeveloperIdentityResponse _
Generic LookupDeveloperIdentityResponse _
Show LookupDeveloperIdentityResponse
Decode LookupDeveloperIdentityResponse
Encode LookupDeveloperIdentityResponse
```

#### `newLookupDeveloperIdentityResponse`

``` purescript
newLookupDeveloperIdentityResponse :: LookupDeveloperIdentityResponse
```

Constructs LookupDeveloperIdentityResponse from required parameters

#### `newLookupDeveloperIdentityResponse'`

``` purescript
newLookupDeveloperIdentityResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifierList" :: NullOrUndefined (DeveloperUserIdentifierList), "NextToken" :: NullOrUndefined (PaginationKey) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "DeveloperUserIdentifierList" :: NullOrUndefined (DeveloperUserIdentifierList), "NextToken" :: NullOrUndefined (PaginationKey) }) -> LookupDeveloperIdentityResponse
```

Constructs LookupDeveloperIdentityResponse's fields from required parameters

#### `MappingRule`

``` purescript
newtype MappingRule
  = MappingRule { "Claim" :: ClaimName, "MatchType" :: MappingRuleMatchType, "Value" :: ClaimValue, "RoleARN" :: ARNString }
```

<p>A rule that maps a claim name, a claim value, and a match type to a role ARN.</p>

##### Instances
``` purescript
Newtype MappingRule _
Generic MappingRule _
Show MappingRule
Decode MappingRule
Encode MappingRule
```

#### `newMappingRule`

``` purescript
newMappingRule :: ClaimName -> MappingRuleMatchType -> ARNString -> ClaimValue -> MappingRule
```

Constructs MappingRule from required parameters

#### `newMappingRule'`

``` purescript
newMappingRule' :: ClaimName -> MappingRuleMatchType -> ARNString -> ClaimValue -> ({ "Claim" :: ClaimName, "MatchType" :: MappingRuleMatchType, "Value" :: ClaimValue, "RoleARN" :: ARNString } -> { "Claim" :: ClaimName, "MatchType" :: MappingRuleMatchType, "Value" :: ClaimValue, "RoleARN" :: ARNString }) -> MappingRule
```

Constructs MappingRule's fields from required parameters

#### `MappingRuleMatchType`

``` purescript
newtype MappingRuleMatchType
  = MappingRuleMatchType String
```

##### Instances
``` purescript
Newtype MappingRuleMatchType _
Generic MappingRuleMatchType _
Show MappingRuleMatchType
Decode MappingRuleMatchType
Encode MappingRuleMatchType
```

#### `MappingRulesList`

``` purescript
newtype MappingRulesList
  = MappingRulesList (Array MappingRule)
```

##### Instances
``` purescript
Newtype MappingRulesList _
Generic MappingRulesList _
Show MappingRulesList
Decode MappingRulesList
Encode MappingRulesList
```

#### `MergeDeveloperIdentitiesInput`

``` purescript
newtype MergeDeveloperIdentitiesInput
  = MergeDeveloperIdentitiesInput { "SourceUserIdentifier" :: DeveloperUserIdentifier, "DestinationUserIdentifier" :: DeveloperUserIdentifier, "DeveloperProviderName" :: DeveloperProviderName, "IdentityPoolId" :: IdentityPoolId }
```

<p>Input to the <code>MergeDeveloperIdentities</code> action.</p>

##### Instances
``` purescript
Newtype MergeDeveloperIdentitiesInput _
Generic MergeDeveloperIdentitiesInput _
Show MergeDeveloperIdentitiesInput
Decode MergeDeveloperIdentitiesInput
Encode MergeDeveloperIdentitiesInput
```

#### `newMergeDeveloperIdentitiesInput`

``` purescript
newMergeDeveloperIdentitiesInput :: DeveloperUserIdentifier -> DeveloperProviderName -> IdentityPoolId -> DeveloperUserIdentifier -> MergeDeveloperIdentitiesInput
```

Constructs MergeDeveloperIdentitiesInput from required parameters

#### `newMergeDeveloperIdentitiesInput'`

``` purescript
newMergeDeveloperIdentitiesInput' :: DeveloperUserIdentifier -> DeveloperProviderName -> IdentityPoolId -> DeveloperUserIdentifier -> ({ "SourceUserIdentifier" :: DeveloperUserIdentifier, "DestinationUserIdentifier" :: DeveloperUserIdentifier, "DeveloperProviderName" :: DeveloperProviderName, "IdentityPoolId" :: IdentityPoolId } -> { "SourceUserIdentifier" :: DeveloperUserIdentifier, "DestinationUserIdentifier" :: DeveloperUserIdentifier, "DeveloperProviderName" :: DeveloperProviderName, "IdentityPoolId" :: IdentityPoolId }) -> MergeDeveloperIdentitiesInput
```

Constructs MergeDeveloperIdentitiesInput's fields from required parameters

#### `MergeDeveloperIdentitiesResponse`

``` purescript
newtype MergeDeveloperIdentitiesResponse
  = MergeDeveloperIdentitiesResponse { "IdentityId" :: NullOrUndefined (IdentityId) }
```

<p>Returned in response to a successful <code>MergeDeveloperIdentities</code> action.</p>

##### Instances
``` purescript
Newtype MergeDeveloperIdentitiesResponse _
Generic MergeDeveloperIdentitiesResponse _
Show MergeDeveloperIdentitiesResponse
Decode MergeDeveloperIdentitiesResponse
Encode MergeDeveloperIdentitiesResponse
```

#### `newMergeDeveloperIdentitiesResponse`

``` purescript
newMergeDeveloperIdentitiesResponse :: MergeDeveloperIdentitiesResponse
```

Constructs MergeDeveloperIdentitiesResponse from required parameters

#### `newMergeDeveloperIdentitiesResponse'`

``` purescript
newMergeDeveloperIdentitiesResponse' :: ({ "IdentityId" :: NullOrUndefined (IdentityId) } -> { "IdentityId" :: NullOrUndefined (IdentityId) }) -> MergeDeveloperIdentitiesResponse
```

Constructs MergeDeveloperIdentitiesResponse's fields from required parameters

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { message :: NullOrUndefined (String) }
```

<p>Thrown when a user is not authorized to access the requested resource.</p>

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `OIDCProviderList`

``` purescript
newtype OIDCProviderList
  = OIDCProviderList (Array ARNString)
```

##### Instances
``` purescript
Newtype OIDCProviderList _
Generic OIDCProviderList _
Show OIDCProviderList
Decode OIDCProviderList
Encode OIDCProviderList
```

#### `OIDCToken`

``` purescript
newtype OIDCToken
  = OIDCToken String
```

##### Instances
``` purescript
Newtype OIDCToken _
Generic OIDCToken _
Show OIDCToken
Decode OIDCToken
Encode OIDCToken
```

#### `PaginationKey`

``` purescript
newtype PaginationKey
  = PaginationKey String
```

##### Instances
``` purescript
Newtype PaginationKey _
Generic PaginationKey _
Show PaginationKey
Decode PaginationKey
Encode PaginationKey
```

#### `QueryLimit`

``` purescript
newtype QueryLimit
  = QueryLimit Int
```

##### Instances
``` purescript
Newtype QueryLimit _
Generic QueryLimit _
Show QueryLimit
Decode QueryLimit
Encode QueryLimit
```

#### `ResourceConflictException`

``` purescript
newtype ResourceConflictException
  = ResourceConflictException { message :: NullOrUndefined (String) }
```

<p>Thrown when a user tries to use a login which is already linked to another account.</p>

##### Instances
``` purescript
Newtype ResourceConflictException _
Generic ResourceConflictException _
Show ResourceConflictException
Decode ResourceConflictException
Encode ResourceConflictException
```

#### `newResourceConflictException`

``` purescript
newResourceConflictException :: ResourceConflictException
```

Constructs ResourceConflictException from required parameters

#### `newResourceConflictException'`

``` purescript
newResourceConflictException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ResourceConflictException
```

Constructs ResourceConflictException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (String) }
```

<p>Thrown when the requested resource (for example, a dataset or record) does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RoleMapping`

``` purescript
newtype RoleMapping
  = RoleMapping { "Type" :: RoleMappingType, "AmbiguousRoleResolution" :: NullOrUndefined (AmbiguousRoleResolutionType), "RulesConfiguration" :: NullOrUndefined (RulesConfigurationType) }
```

<p>A role mapping.</p>

##### Instances
``` purescript
Newtype RoleMapping _
Generic RoleMapping _
Show RoleMapping
Decode RoleMapping
Encode RoleMapping
```

#### `newRoleMapping`

``` purescript
newRoleMapping :: RoleMappingType -> RoleMapping
```

Constructs RoleMapping from required parameters

#### `newRoleMapping'`

``` purescript
newRoleMapping' :: RoleMappingType -> ({ "Type" :: RoleMappingType, "AmbiguousRoleResolution" :: NullOrUndefined (AmbiguousRoleResolutionType), "RulesConfiguration" :: NullOrUndefined (RulesConfigurationType) } -> { "Type" :: RoleMappingType, "AmbiguousRoleResolution" :: NullOrUndefined (AmbiguousRoleResolutionType), "RulesConfiguration" :: NullOrUndefined (RulesConfigurationType) }) -> RoleMapping
```

Constructs RoleMapping's fields from required parameters

#### `RoleMappingMap`

``` purescript
newtype RoleMappingMap
  = RoleMappingMap (StrMap RoleMapping)
```

##### Instances
``` purescript
Newtype RoleMappingMap _
Generic RoleMappingMap _
Show RoleMappingMap
Decode RoleMappingMap
Encode RoleMappingMap
```

#### `RoleMappingType`

``` purescript
newtype RoleMappingType
  = RoleMappingType String
```

##### Instances
``` purescript
Newtype RoleMappingType _
Generic RoleMappingType _
Show RoleMappingType
Decode RoleMappingType
Encode RoleMappingType
```

#### `RoleType`

``` purescript
newtype RoleType
  = RoleType String
```

##### Instances
``` purescript
Newtype RoleType _
Generic RoleType _
Show RoleType
Decode RoleType
Encode RoleType
```

#### `RolesMap`

``` purescript
newtype RolesMap
  = RolesMap (StrMap ARNString)
```

##### Instances
``` purescript
Newtype RolesMap _
Generic RolesMap _
Show RolesMap
Decode RolesMap
Encode RolesMap
```

#### `RulesConfigurationType`

``` purescript
newtype RulesConfigurationType
  = RulesConfigurationType { "Rules" :: MappingRulesList }
```

<p>A container for rules.</p>

##### Instances
``` purescript
Newtype RulesConfigurationType _
Generic RulesConfigurationType _
Show RulesConfigurationType
Decode RulesConfigurationType
Encode RulesConfigurationType
```

#### `newRulesConfigurationType`

``` purescript
newRulesConfigurationType :: MappingRulesList -> RulesConfigurationType
```

Constructs RulesConfigurationType from required parameters

#### `newRulesConfigurationType'`

``` purescript
newRulesConfigurationType' :: MappingRulesList -> ({ "Rules" :: MappingRulesList } -> { "Rules" :: MappingRulesList }) -> RulesConfigurationType
```

Constructs RulesConfigurationType's fields from required parameters

#### `SAMLProviderList`

``` purescript
newtype SAMLProviderList
  = SAMLProviderList (Array ARNString)
```

##### Instances
``` purescript
Newtype SAMLProviderList _
Generic SAMLProviderList _
Show SAMLProviderList
Decode SAMLProviderList
Encode SAMLProviderList
```

#### `SecretKeyString`

``` purescript
newtype SecretKeyString
  = SecretKeyString String
```

##### Instances
``` purescript
Newtype SecretKeyString _
Generic SecretKeyString _
Show SecretKeyString
Decode SecretKeyString
Encode SecretKeyString
```

#### `SessionTokenString`

``` purescript
newtype SessionTokenString
  = SessionTokenString String
```

##### Instances
``` purescript
Newtype SessionTokenString _
Generic SessionTokenString _
Show SessionTokenString
Decode SessionTokenString
Encode SessionTokenString
```

#### `SetIdentityPoolRolesInput`

``` purescript
newtype SetIdentityPoolRolesInput
  = SetIdentityPoolRolesInput { "IdentityPoolId" :: IdentityPoolId, "Roles" :: RolesMap, "RoleMappings" :: NullOrUndefined (RoleMappingMap) }
```

<p>Input to the <code>SetIdentityPoolRoles</code> action.</p>

##### Instances
``` purescript
Newtype SetIdentityPoolRolesInput _
Generic SetIdentityPoolRolesInput _
Show SetIdentityPoolRolesInput
Decode SetIdentityPoolRolesInput
Encode SetIdentityPoolRolesInput
```

#### `newSetIdentityPoolRolesInput`

``` purescript
newSetIdentityPoolRolesInput :: IdentityPoolId -> RolesMap -> SetIdentityPoolRolesInput
```

Constructs SetIdentityPoolRolesInput from required parameters

#### `newSetIdentityPoolRolesInput'`

``` purescript
newSetIdentityPoolRolesInput' :: IdentityPoolId -> RolesMap -> ({ "IdentityPoolId" :: IdentityPoolId, "Roles" :: RolesMap, "RoleMappings" :: NullOrUndefined (RoleMappingMap) } -> { "IdentityPoolId" :: IdentityPoolId, "Roles" :: RolesMap, "RoleMappings" :: NullOrUndefined (RoleMappingMap) }) -> SetIdentityPoolRolesInput
```

Constructs SetIdentityPoolRolesInput's fields from required parameters

#### `TokenDuration`

``` purescript
newtype TokenDuration
  = TokenDuration Number
```

##### Instances
``` purescript
Newtype TokenDuration _
Generic TokenDuration _
Show TokenDuration
Decode TokenDuration
Encode TokenDuration
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { message :: NullOrUndefined (String) }
```

<p>Thrown when a request is throttled.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnlinkDeveloperIdentityInput`

``` purescript
newtype UnlinkDeveloperIdentityInput
  = UnlinkDeveloperIdentityInput { "IdentityId" :: IdentityId, "IdentityPoolId" :: IdentityPoolId, "DeveloperProviderName" :: DeveloperProviderName, "DeveloperUserIdentifier" :: DeveloperUserIdentifier }
```

<p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>

##### Instances
``` purescript
Newtype UnlinkDeveloperIdentityInput _
Generic UnlinkDeveloperIdentityInput _
Show UnlinkDeveloperIdentityInput
Decode UnlinkDeveloperIdentityInput
Encode UnlinkDeveloperIdentityInput
```

#### `newUnlinkDeveloperIdentityInput`

``` purescript
newUnlinkDeveloperIdentityInput :: DeveloperProviderName -> DeveloperUserIdentifier -> IdentityId -> IdentityPoolId -> UnlinkDeveloperIdentityInput
```

Constructs UnlinkDeveloperIdentityInput from required parameters

#### `newUnlinkDeveloperIdentityInput'`

``` purescript
newUnlinkDeveloperIdentityInput' :: DeveloperProviderName -> DeveloperUserIdentifier -> IdentityId -> IdentityPoolId -> ({ "IdentityId" :: IdentityId, "IdentityPoolId" :: IdentityPoolId, "DeveloperProviderName" :: DeveloperProviderName, "DeveloperUserIdentifier" :: DeveloperUserIdentifier } -> { "IdentityId" :: IdentityId, "IdentityPoolId" :: IdentityPoolId, "DeveloperProviderName" :: DeveloperProviderName, "DeveloperUserIdentifier" :: DeveloperUserIdentifier }) -> UnlinkDeveloperIdentityInput
```

Constructs UnlinkDeveloperIdentityInput's fields from required parameters

#### `UnlinkIdentityInput`

``` purescript
newtype UnlinkIdentityInput
  = UnlinkIdentityInput { "IdentityId" :: IdentityId, "Logins" :: LoginsMap, "LoginsToRemove" :: LoginsList }
```

<p>Input to the UnlinkIdentity action.</p>

##### Instances
``` purescript
Newtype UnlinkIdentityInput _
Generic UnlinkIdentityInput _
Show UnlinkIdentityInput
Decode UnlinkIdentityInput
Encode UnlinkIdentityInput
```

#### `newUnlinkIdentityInput`

``` purescript
newUnlinkIdentityInput :: IdentityId -> LoginsMap -> LoginsList -> UnlinkIdentityInput
```

Constructs UnlinkIdentityInput from required parameters

#### `newUnlinkIdentityInput'`

``` purescript
newUnlinkIdentityInput' :: IdentityId -> LoginsMap -> LoginsList -> ({ "IdentityId" :: IdentityId, "Logins" :: LoginsMap, "LoginsToRemove" :: LoginsList } -> { "IdentityId" :: IdentityId, "Logins" :: LoginsMap, "LoginsToRemove" :: LoginsList }) -> UnlinkIdentityInput
```

Constructs UnlinkIdentityInput's fields from required parameters

#### `UnprocessedIdentityId`

``` purescript
newtype UnprocessedIdentityId
  = UnprocessedIdentityId { "IdentityId" :: NullOrUndefined (IdentityId), "ErrorCode" :: NullOrUndefined (ErrorCode) }
```

<p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>

##### Instances
``` purescript
Newtype UnprocessedIdentityId _
Generic UnprocessedIdentityId _
Show UnprocessedIdentityId
Decode UnprocessedIdentityId
Encode UnprocessedIdentityId
```

#### `newUnprocessedIdentityId`

``` purescript
newUnprocessedIdentityId :: UnprocessedIdentityId
```

Constructs UnprocessedIdentityId from required parameters

#### `newUnprocessedIdentityId'`

``` purescript
newUnprocessedIdentityId' :: ({ "IdentityId" :: NullOrUndefined (IdentityId), "ErrorCode" :: NullOrUndefined (ErrorCode) } -> { "IdentityId" :: NullOrUndefined (IdentityId), "ErrorCode" :: NullOrUndefined (ErrorCode) }) -> UnprocessedIdentityId
```

Constructs UnprocessedIdentityId's fields from required parameters

#### `UnprocessedIdentityIdList`

``` purescript
newtype UnprocessedIdentityIdList
  = UnprocessedIdentityIdList (Array UnprocessedIdentityId)
```

##### Instances
``` purescript
Newtype UnprocessedIdentityIdList _
Generic UnprocessedIdentityIdList _
Show UnprocessedIdentityIdList
Decode UnprocessedIdentityIdList
Encode UnprocessedIdentityIdList
```


