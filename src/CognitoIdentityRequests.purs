
module AWS.CognitoIdentity.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CognitoIdentity as CognitoIdentity
import AWS.CognitoIdentity.Types as CognitoIdentityTypes


-- | <p>Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for <code>SupportedLoginProviders</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul> <p>You must use AWS Developer credentials to call this API.</p>
createIdentityPool :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.CreateIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.IdentityPool
createIdentityPool (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createIdentityPool"


-- | <p>Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.</p> <p>You must use AWS Developer credentials to call this API.</p>
deleteIdentities :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.DeleteIdentitiesInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.DeleteIdentitiesResponse
deleteIdentities (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIdentities"


-- | <p>Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.</p> <p>You must use AWS Developer credentials to call this API.</p>
deleteIdentityPool :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.DeleteIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) Unit
deleteIdentityPool (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIdentityPool"


-- | <p>Returns metadata related to the given identity, including when the identity was created and any associated linked logins.</p> <p>You must use AWS Developer credentials to call this API.</p>
describeIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.DescribeIdentityInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.IdentityDescription
describeIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentity"


-- | <p>Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.</p> <p>You must use AWS Developer credentials to call this API.</p>
describeIdentityPool :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.DescribeIdentityPoolInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.IdentityPool
describeIdentityPool (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentityPool"


-- | <p>Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>
getCredentialsForIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.GetCredentialsForIdentityInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.GetCredentialsForIdentityResponse
getCredentialsForIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCredentialsForIdentity"


-- | <p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.</p> <p>This is a public API. You do not need any credentials to call this API.</p>
getId :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.GetIdInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.GetIdResponse
getId (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getId"


-- | <p>Gets the roles for an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>
getIdentityPoolRoles :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.GetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.GetIdentityPoolRolesResponse
getIdentityPoolRoles (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIdentityPoolRoles"


-- | <p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by <a>GetId</a>. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.</p> <p>The OpenId token is valid for 15 minutes.</p> <p>This is a public API. You do not need any credentials to call this API.</p>
getOpenIdToken :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.GetOpenIdTokenInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.GetOpenIdTokenResponse
getOpenIdToken (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOpenIdToken"


-- | <p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the <code>Logins</code> map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.</p> <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>
getOpenIdTokenForDeveloperIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.GetOpenIdTokenForDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.GetOpenIdTokenForDeveloperIdentityResponse
getOpenIdTokenForDeveloperIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOpenIdTokenForDeveloperIdentity"


-- | <p>Lists the identities in a pool.</p> <p>You must use AWS Developer credentials to call this API.</p>
listIdentities :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.ListIdentitiesInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.ListIdentitiesResponse
listIdentities (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIdentities"


-- | <p>Lists all of the Cognito identity pools registered for your account.</p> <p>You must use AWS Developer credentials to call this API.</p>
listIdentityPools :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.ListIdentityPoolsInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.ListIdentityPoolsResponse
listIdentityPools (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIdentityPools"


-- | <p>Retrieves the <code>IdentityID</code> associated with a <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>s associated with an <code>IdentityId</code> for an existing identity. Either <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a <code>ResourceConflictException</code> is thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>
lookupDeveloperIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.LookupDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.LookupDeveloperIdentityResponse
lookupDeveloperIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "lookupDeveloperIdentity"


-- | <p>Merges two users having different <code>IdentityId</code>s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>) with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>
mergeDeveloperIdentities :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.MergeDeveloperIdentitiesInput -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.MergeDeveloperIdentitiesResponse
mergeDeveloperIdentities (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "mergeDeveloperIdentities"


-- | <p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>
setIdentityPoolRoles :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.SetIdentityPoolRolesInput -> Aff (exception :: EXCEPTION | eff) Unit
setIdentityPoolRoles (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setIdentityPoolRoles"


-- | <p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.</p> <p>You must use AWS Developer credentials to call this API.</p>
unlinkDeveloperIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.UnlinkDeveloperIdentityInput -> Aff (exception :: EXCEPTION | eff) Unit
unlinkDeveloperIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unlinkDeveloperIdentity"


-- | <p>Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.</p> <p>This is a public API. You do not need any credentials to call this API.</p>
unlinkIdentity :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.UnlinkIdentityInput -> Aff (exception :: EXCEPTION | eff) Unit
unlinkIdentity (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unlinkIdentity"


-- | <p>Updates a user pool.</p> <p>You must use AWS Developer credentials to call this API.</p>
updateIdentityPool :: forall eff. CognitoIdentity.Service -> CognitoIdentityTypes.IdentityPool -> Aff (exception :: EXCEPTION | eff) CognitoIdentityTypes.IdentityPool
updateIdentityPool (CognitoIdentity.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateIdentityPool"
