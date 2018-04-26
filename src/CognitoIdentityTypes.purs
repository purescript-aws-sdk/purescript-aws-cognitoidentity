
module AWS.CognitoIdentity.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ARNString = ARNString String
derive instance newtypeARNString :: Newtype ARNString _
derive instance repGenericARNString :: Generic ARNString _
instance showARNString :: Show ARNString where show = genericShow
instance decodeARNString :: Decode ARNString where decode = genericDecode options
instance encodeARNString :: Encode ARNString where encode = genericEncode options



newtype AccessKeyString = AccessKeyString String
derive instance newtypeAccessKeyString :: Newtype AccessKeyString _
derive instance repGenericAccessKeyString :: Generic AccessKeyString _
instance showAccessKeyString :: Show AccessKeyString where show = genericShow
instance decodeAccessKeyString :: Decode AccessKeyString where decode = genericDecode options
instance encodeAccessKeyString :: Encode AccessKeyString where encode = genericEncode options



newtype AccountId = AccountId String
derive instance newtypeAccountId :: Newtype AccountId _
derive instance repGenericAccountId :: Generic AccountId _
instance showAccountId :: Show AccountId where show = genericShow
instance decodeAccountId :: Decode AccountId where decode = genericDecode options
instance encodeAccountId :: Encode AccountId where encode = genericEncode options



newtype AmbiguousRoleResolutionType = AmbiguousRoleResolutionType String
derive instance newtypeAmbiguousRoleResolutionType :: Newtype AmbiguousRoleResolutionType _
derive instance repGenericAmbiguousRoleResolutionType :: Generic AmbiguousRoleResolutionType _
instance showAmbiguousRoleResolutionType :: Show AmbiguousRoleResolutionType where show = genericShow
instance decodeAmbiguousRoleResolutionType :: Decode AmbiguousRoleResolutionType where decode = genericDecode options
instance encodeAmbiguousRoleResolutionType :: Encode AmbiguousRoleResolutionType where encode = genericEncode options



newtype ClaimName = ClaimName String
derive instance newtypeClaimName :: Newtype ClaimName _
derive instance repGenericClaimName :: Generic ClaimName _
instance showClaimName :: Show ClaimName where show = genericShow
instance decodeClaimName :: Decode ClaimName where decode = genericDecode options
instance encodeClaimName :: Encode ClaimName where encode = genericEncode options



newtype ClaimValue = ClaimValue String
derive instance newtypeClaimValue :: Newtype ClaimValue _
derive instance repGenericClaimValue :: Generic ClaimValue _
instance showClaimValue :: Show ClaimValue where show = genericShow
instance decodeClaimValue :: Decode ClaimValue where decode = genericDecode options
instance encodeClaimValue :: Encode ClaimValue where encode = genericEncode options



-- | <p>A provider representing an Amazon Cognito Identity User Pool and its client ID.</p>
newtype CognitoIdentityProvider = CognitoIdentityProvider 
  { "ProviderName" :: Maybe (CognitoIdentityProviderName)
  , "ClientId" :: Maybe (CognitoIdentityProviderClientId)
  , "ServerSideTokenCheck" :: Maybe (CognitoIdentityProviderTokenCheck)
  }
derive instance newtypeCognitoIdentityProvider :: Newtype CognitoIdentityProvider _
derive instance repGenericCognitoIdentityProvider :: Generic CognitoIdentityProvider _
instance showCognitoIdentityProvider :: Show CognitoIdentityProvider where show = genericShow
instance decodeCognitoIdentityProvider :: Decode CognitoIdentityProvider where decode = genericDecode options
instance encodeCognitoIdentityProvider :: Encode CognitoIdentityProvider where encode = genericEncode options

-- | Constructs CognitoIdentityProvider from required parameters
newCognitoIdentityProvider :: CognitoIdentityProvider
newCognitoIdentityProvider  = CognitoIdentityProvider { "ClientId": Nothing, "ProviderName": Nothing, "ServerSideTokenCheck": Nothing }

-- | Constructs CognitoIdentityProvider's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCognitoIdentityProvider' :: ( { "ProviderName" :: Maybe (CognitoIdentityProviderName) , "ClientId" :: Maybe (CognitoIdentityProviderClientId) , "ServerSideTokenCheck" :: Maybe (CognitoIdentityProviderTokenCheck) } -> {"ProviderName" :: Maybe (CognitoIdentityProviderName) , "ClientId" :: Maybe (CognitoIdentityProviderClientId) , "ServerSideTokenCheck" :: Maybe (CognitoIdentityProviderTokenCheck) } ) -> CognitoIdentityProvider
newCognitoIdentityProvider'  customize = (CognitoIdentityProvider <<< customize) { "ClientId": Nothing, "ProviderName": Nothing, "ServerSideTokenCheck": Nothing }



newtype CognitoIdentityProviderClientId = CognitoIdentityProviderClientId String
derive instance newtypeCognitoIdentityProviderClientId :: Newtype CognitoIdentityProviderClientId _
derive instance repGenericCognitoIdentityProviderClientId :: Generic CognitoIdentityProviderClientId _
instance showCognitoIdentityProviderClientId :: Show CognitoIdentityProviderClientId where show = genericShow
instance decodeCognitoIdentityProviderClientId :: Decode CognitoIdentityProviderClientId where decode = genericDecode options
instance encodeCognitoIdentityProviderClientId :: Encode CognitoIdentityProviderClientId where encode = genericEncode options



newtype CognitoIdentityProviderList = CognitoIdentityProviderList (Array CognitoIdentityProvider)
derive instance newtypeCognitoIdentityProviderList :: Newtype CognitoIdentityProviderList _
derive instance repGenericCognitoIdentityProviderList :: Generic CognitoIdentityProviderList _
instance showCognitoIdentityProviderList :: Show CognitoIdentityProviderList where show = genericShow
instance decodeCognitoIdentityProviderList :: Decode CognitoIdentityProviderList where decode = genericDecode options
instance encodeCognitoIdentityProviderList :: Encode CognitoIdentityProviderList where encode = genericEncode options



newtype CognitoIdentityProviderName = CognitoIdentityProviderName String
derive instance newtypeCognitoIdentityProviderName :: Newtype CognitoIdentityProviderName _
derive instance repGenericCognitoIdentityProviderName :: Generic CognitoIdentityProviderName _
instance showCognitoIdentityProviderName :: Show CognitoIdentityProviderName where show = genericShow
instance decodeCognitoIdentityProviderName :: Decode CognitoIdentityProviderName where decode = genericDecode options
instance encodeCognitoIdentityProviderName :: Encode CognitoIdentityProviderName where encode = genericEncode options



newtype CognitoIdentityProviderTokenCheck = CognitoIdentityProviderTokenCheck Boolean
derive instance newtypeCognitoIdentityProviderTokenCheck :: Newtype CognitoIdentityProviderTokenCheck _
derive instance repGenericCognitoIdentityProviderTokenCheck :: Generic CognitoIdentityProviderTokenCheck _
instance showCognitoIdentityProviderTokenCheck :: Show CognitoIdentityProviderTokenCheck where show = genericShow
instance decodeCognitoIdentityProviderTokenCheck :: Decode CognitoIdentityProviderTokenCheck where decode = genericDecode options
instance encodeCognitoIdentityProviderTokenCheck :: Encode CognitoIdentityProviderTokenCheck where encode = genericEncode options



-- | <p>Thrown if there are parallel requests to modify a resource.</p>
newtype ConcurrentModificationException = ConcurrentModificationException 
  { "message" :: Maybe (String)
  }
derive instance newtypeConcurrentModificationException :: Newtype ConcurrentModificationException _
derive instance repGenericConcurrentModificationException :: Generic ConcurrentModificationException _
instance showConcurrentModificationException :: Show ConcurrentModificationException where show = genericShow
instance decodeConcurrentModificationException :: Decode ConcurrentModificationException where decode = genericDecode options
instance encodeConcurrentModificationException :: Encode ConcurrentModificationException where encode = genericEncode options

-- | Constructs ConcurrentModificationException from required parameters
newConcurrentModificationException :: ConcurrentModificationException
newConcurrentModificationException  = ConcurrentModificationException { "message": Nothing }

-- | Constructs ConcurrentModificationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModificationException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ConcurrentModificationException
newConcurrentModificationException'  customize = (ConcurrentModificationException <<< customize) { "message": Nothing }



-- | <p>Input to the CreateIdentityPool action.</p>
newtype CreateIdentityPoolInput = CreateIdentityPoolInput 
  { "IdentityPoolName" :: (IdentityPoolName)
  , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated)
  , "SupportedLoginProviders" :: Maybe (IdentityProviders)
  , "DeveloperProviderName" :: Maybe (DeveloperProviderName)
  , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList)
  , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList)
  , "SamlProviderARNs" :: Maybe (SAMLProviderList)
  }
derive instance newtypeCreateIdentityPoolInput :: Newtype CreateIdentityPoolInput _
derive instance repGenericCreateIdentityPoolInput :: Generic CreateIdentityPoolInput _
instance showCreateIdentityPoolInput :: Show CreateIdentityPoolInput where show = genericShow
instance decodeCreateIdentityPoolInput :: Decode CreateIdentityPoolInput where decode = genericDecode options
instance encodeCreateIdentityPoolInput :: Encode CreateIdentityPoolInput where encode = genericEncode options

-- | Constructs CreateIdentityPoolInput from required parameters
newCreateIdentityPoolInput :: IdentityPoolUnauthenticated -> IdentityPoolName -> CreateIdentityPoolInput
newCreateIdentityPoolInput _AllowUnauthenticatedIdentities _IdentityPoolName = CreateIdentityPoolInput { "AllowUnauthenticatedIdentities": _AllowUnauthenticatedIdentities, "IdentityPoolName": _IdentityPoolName, "CognitoIdentityProviders": Nothing, "DeveloperProviderName": Nothing, "OpenIdConnectProviderARNs": Nothing, "SamlProviderARNs": Nothing, "SupportedLoginProviders": Nothing }

-- | Constructs CreateIdentityPoolInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIdentityPoolInput' :: IdentityPoolUnauthenticated -> IdentityPoolName -> ( { "IdentityPoolName" :: (IdentityPoolName) , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated) , "SupportedLoginProviders" :: Maybe (IdentityProviders) , "DeveloperProviderName" :: Maybe (DeveloperProviderName) , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList) , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList) , "SamlProviderARNs" :: Maybe (SAMLProviderList) } -> {"IdentityPoolName" :: (IdentityPoolName) , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated) , "SupportedLoginProviders" :: Maybe (IdentityProviders) , "DeveloperProviderName" :: Maybe (DeveloperProviderName) , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList) , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList) , "SamlProviderARNs" :: Maybe (SAMLProviderList) } ) -> CreateIdentityPoolInput
newCreateIdentityPoolInput' _AllowUnauthenticatedIdentities _IdentityPoolName customize = (CreateIdentityPoolInput <<< customize) { "AllowUnauthenticatedIdentities": _AllowUnauthenticatedIdentities, "IdentityPoolName": _IdentityPoolName, "CognitoIdentityProviders": Nothing, "DeveloperProviderName": Nothing, "OpenIdConnectProviderARNs": Nothing, "SamlProviderARNs": Nothing, "SupportedLoginProviders": Nothing }



-- | <p>Credentials for the provided identity ID.</p>
newtype Credentials = Credentials 
  { "AccessKeyId" :: Maybe (AccessKeyString)
  , "SecretKey" :: Maybe (SecretKeyString)
  , "SessionToken" :: Maybe (SessionTokenString)
  , "Expiration" :: Maybe (DateType)
  }
derive instance newtypeCredentials :: Newtype Credentials _
derive instance repGenericCredentials :: Generic Credentials _
instance showCredentials :: Show Credentials where show = genericShow
instance decodeCredentials :: Decode Credentials where decode = genericDecode options
instance encodeCredentials :: Encode Credentials where encode = genericEncode options

-- | Constructs Credentials from required parameters
newCredentials :: Credentials
newCredentials  = Credentials { "AccessKeyId": Nothing, "Expiration": Nothing, "SecretKey": Nothing, "SessionToken": Nothing }

-- | Constructs Credentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentials' :: ( { "AccessKeyId" :: Maybe (AccessKeyString) , "SecretKey" :: Maybe (SecretKeyString) , "SessionToken" :: Maybe (SessionTokenString) , "Expiration" :: Maybe (DateType) } -> {"AccessKeyId" :: Maybe (AccessKeyString) , "SecretKey" :: Maybe (SecretKeyString) , "SessionToken" :: Maybe (SessionTokenString) , "Expiration" :: Maybe (DateType) } ) -> Credentials
newCredentials'  customize = (Credentials <<< customize) { "AccessKeyId": Nothing, "Expiration": Nothing, "SecretKey": Nothing, "SessionToken": Nothing }



newtype DateType = DateType Types.Timestamp
derive instance newtypeDateType :: Newtype DateType _
derive instance repGenericDateType :: Generic DateType _
instance showDateType :: Show DateType where show = genericShow
instance decodeDateType :: Decode DateType where decode = genericDecode options
instance encodeDateType :: Encode DateType where encode = genericEncode options



-- | <p>Input to the <code>DeleteIdentities</code> action.</p>
newtype DeleteIdentitiesInput = DeleteIdentitiesInput 
  { "IdentityIdsToDelete" :: (IdentityIdList)
  }
derive instance newtypeDeleteIdentitiesInput :: Newtype DeleteIdentitiesInput _
derive instance repGenericDeleteIdentitiesInput :: Generic DeleteIdentitiesInput _
instance showDeleteIdentitiesInput :: Show DeleteIdentitiesInput where show = genericShow
instance decodeDeleteIdentitiesInput :: Decode DeleteIdentitiesInput where decode = genericDecode options
instance encodeDeleteIdentitiesInput :: Encode DeleteIdentitiesInput where encode = genericEncode options

-- | Constructs DeleteIdentitiesInput from required parameters
newDeleteIdentitiesInput :: IdentityIdList -> DeleteIdentitiesInput
newDeleteIdentitiesInput _IdentityIdsToDelete = DeleteIdentitiesInput { "IdentityIdsToDelete": _IdentityIdsToDelete }

-- | Constructs DeleteIdentitiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentitiesInput' :: IdentityIdList -> ( { "IdentityIdsToDelete" :: (IdentityIdList) } -> {"IdentityIdsToDelete" :: (IdentityIdList) } ) -> DeleteIdentitiesInput
newDeleteIdentitiesInput' _IdentityIdsToDelete customize = (DeleteIdentitiesInput <<< customize) { "IdentityIdsToDelete": _IdentityIdsToDelete }



-- | <p>Returned in response to a successful <code>DeleteIdentities</code> operation.</p>
newtype DeleteIdentitiesResponse = DeleteIdentitiesResponse 
  { "UnprocessedIdentityIds" :: Maybe (UnprocessedIdentityIdList)
  }
derive instance newtypeDeleteIdentitiesResponse :: Newtype DeleteIdentitiesResponse _
derive instance repGenericDeleteIdentitiesResponse :: Generic DeleteIdentitiesResponse _
instance showDeleteIdentitiesResponse :: Show DeleteIdentitiesResponse where show = genericShow
instance decodeDeleteIdentitiesResponse :: Decode DeleteIdentitiesResponse where decode = genericDecode options
instance encodeDeleteIdentitiesResponse :: Encode DeleteIdentitiesResponse where encode = genericEncode options

-- | Constructs DeleteIdentitiesResponse from required parameters
newDeleteIdentitiesResponse :: DeleteIdentitiesResponse
newDeleteIdentitiesResponse  = DeleteIdentitiesResponse { "UnprocessedIdentityIds": Nothing }

-- | Constructs DeleteIdentitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentitiesResponse' :: ( { "UnprocessedIdentityIds" :: Maybe (UnprocessedIdentityIdList) } -> {"UnprocessedIdentityIds" :: Maybe (UnprocessedIdentityIdList) } ) -> DeleteIdentitiesResponse
newDeleteIdentitiesResponse'  customize = (DeleteIdentitiesResponse <<< customize) { "UnprocessedIdentityIds": Nothing }



-- | <p>Input to the DeleteIdentityPool action.</p>
newtype DeleteIdentityPoolInput = DeleteIdentityPoolInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeDeleteIdentityPoolInput :: Newtype DeleteIdentityPoolInput _
derive instance repGenericDeleteIdentityPoolInput :: Generic DeleteIdentityPoolInput _
instance showDeleteIdentityPoolInput :: Show DeleteIdentityPoolInput where show = genericShow
instance decodeDeleteIdentityPoolInput :: Decode DeleteIdentityPoolInput where decode = genericDecode options
instance encodeDeleteIdentityPoolInput :: Encode DeleteIdentityPoolInput where encode = genericEncode options

-- | Constructs DeleteIdentityPoolInput from required parameters
newDeleteIdentityPoolInput :: IdentityPoolId -> DeleteIdentityPoolInput
newDeleteIdentityPoolInput _IdentityPoolId = DeleteIdentityPoolInput { "IdentityPoolId": _IdentityPoolId }

-- | Constructs DeleteIdentityPoolInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIdentityPoolInput' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> DeleteIdentityPoolInput
newDeleteIdentityPoolInput' _IdentityPoolId customize = (DeleteIdentityPoolInput <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | <p>Input to the <code>DescribeIdentity</code> action.</p>
newtype DescribeIdentityInput = DescribeIdentityInput 
  { "IdentityId" :: (IdentityId)
  }
derive instance newtypeDescribeIdentityInput :: Newtype DescribeIdentityInput _
derive instance repGenericDescribeIdentityInput :: Generic DescribeIdentityInput _
instance showDescribeIdentityInput :: Show DescribeIdentityInput where show = genericShow
instance decodeDescribeIdentityInput :: Decode DescribeIdentityInput where decode = genericDecode options
instance encodeDescribeIdentityInput :: Encode DescribeIdentityInput where encode = genericEncode options

-- | Constructs DescribeIdentityInput from required parameters
newDescribeIdentityInput :: IdentityId -> DescribeIdentityInput
newDescribeIdentityInput _IdentityId = DescribeIdentityInput { "IdentityId": _IdentityId }

-- | Constructs DescribeIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityInput' :: IdentityId -> ( { "IdentityId" :: (IdentityId) } -> {"IdentityId" :: (IdentityId) } ) -> DescribeIdentityInput
newDescribeIdentityInput' _IdentityId customize = (DescribeIdentityInput <<< customize) { "IdentityId": _IdentityId }



-- | <p>Input to the DescribeIdentityPool action.</p>
newtype DescribeIdentityPoolInput = DescribeIdentityPoolInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeDescribeIdentityPoolInput :: Newtype DescribeIdentityPoolInput _
derive instance repGenericDescribeIdentityPoolInput :: Generic DescribeIdentityPoolInput _
instance showDescribeIdentityPoolInput :: Show DescribeIdentityPoolInput where show = genericShow
instance decodeDescribeIdentityPoolInput :: Decode DescribeIdentityPoolInput where decode = genericDecode options
instance encodeDescribeIdentityPoolInput :: Encode DescribeIdentityPoolInput where encode = genericEncode options

-- | Constructs DescribeIdentityPoolInput from required parameters
newDescribeIdentityPoolInput :: IdentityPoolId -> DescribeIdentityPoolInput
newDescribeIdentityPoolInput _IdentityPoolId = DescribeIdentityPoolInput { "IdentityPoolId": _IdentityPoolId }

-- | Constructs DescribeIdentityPoolInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityPoolInput' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> DescribeIdentityPoolInput
newDescribeIdentityPoolInput' _IdentityPoolId customize = (DescribeIdentityPoolInput <<< customize) { "IdentityPoolId": _IdentityPoolId }



newtype DeveloperProviderName = DeveloperProviderName String
derive instance newtypeDeveloperProviderName :: Newtype DeveloperProviderName _
derive instance repGenericDeveloperProviderName :: Generic DeveloperProviderName _
instance showDeveloperProviderName :: Show DeveloperProviderName where show = genericShow
instance decodeDeveloperProviderName :: Decode DeveloperProviderName where decode = genericDecode options
instance encodeDeveloperProviderName :: Encode DeveloperProviderName where encode = genericEncode options



-- | <p>The provided developer user identifier is already registered with Cognito under a different identity ID.</p>
newtype DeveloperUserAlreadyRegisteredException = DeveloperUserAlreadyRegisteredException 
  { "message" :: Maybe (String)
  }
derive instance newtypeDeveloperUserAlreadyRegisteredException :: Newtype DeveloperUserAlreadyRegisteredException _
derive instance repGenericDeveloperUserAlreadyRegisteredException :: Generic DeveloperUserAlreadyRegisteredException _
instance showDeveloperUserAlreadyRegisteredException :: Show DeveloperUserAlreadyRegisteredException where show = genericShow
instance decodeDeveloperUserAlreadyRegisteredException :: Decode DeveloperUserAlreadyRegisteredException where decode = genericDecode options
instance encodeDeveloperUserAlreadyRegisteredException :: Encode DeveloperUserAlreadyRegisteredException where encode = genericEncode options

-- | Constructs DeveloperUserAlreadyRegisteredException from required parameters
newDeveloperUserAlreadyRegisteredException :: DeveloperUserAlreadyRegisteredException
newDeveloperUserAlreadyRegisteredException  = DeveloperUserAlreadyRegisteredException { "message": Nothing }

-- | Constructs DeveloperUserAlreadyRegisteredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeveloperUserAlreadyRegisteredException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> DeveloperUserAlreadyRegisteredException
newDeveloperUserAlreadyRegisteredException'  customize = (DeveloperUserAlreadyRegisteredException <<< customize) { "message": Nothing }



newtype DeveloperUserIdentifier = DeveloperUserIdentifier String
derive instance newtypeDeveloperUserIdentifier :: Newtype DeveloperUserIdentifier _
derive instance repGenericDeveloperUserIdentifier :: Generic DeveloperUserIdentifier _
instance showDeveloperUserIdentifier :: Show DeveloperUserIdentifier where show = genericShow
instance decodeDeveloperUserIdentifier :: Decode DeveloperUserIdentifier where decode = genericDecode options
instance encodeDeveloperUserIdentifier :: Encode DeveloperUserIdentifier where encode = genericEncode options



newtype DeveloperUserIdentifierList = DeveloperUserIdentifierList (Array DeveloperUserIdentifier)
derive instance newtypeDeveloperUserIdentifierList :: Newtype DeveloperUserIdentifierList _
derive instance repGenericDeveloperUserIdentifierList :: Generic DeveloperUserIdentifierList _
instance showDeveloperUserIdentifierList :: Show DeveloperUserIdentifierList where show = genericShow
instance decodeDeveloperUserIdentifierList :: Decode DeveloperUserIdentifierList where decode = genericDecode options
instance encodeDeveloperUserIdentifierList :: Encode DeveloperUserIdentifierList where encode = genericEncode options



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



-- | <p>An exception thrown when a dependent service such as Facebook or Twitter is not responding</p>
newtype ExternalServiceException = ExternalServiceException 
  { "message" :: Maybe (String)
  }
derive instance newtypeExternalServiceException :: Newtype ExternalServiceException _
derive instance repGenericExternalServiceException :: Generic ExternalServiceException _
instance showExternalServiceException :: Show ExternalServiceException where show = genericShow
instance decodeExternalServiceException :: Decode ExternalServiceException where decode = genericDecode options
instance encodeExternalServiceException :: Encode ExternalServiceException where encode = genericEncode options

-- | Constructs ExternalServiceException from required parameters
newExternalServiceException :: ExternalServiceException
newExternalServiceException  = ExternalServiceException { "message": Nothing }

-- | Constructs ExternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExternalServiceException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ExternalServiceException
newExternalServiceException'  customize = (ExternalServiceException <<< customize) { "message": Nothing }



-- | <p>Input to the <code>GetCredentialsForIdentity</code> action.</p>
newtype GetCredentialsForIdentityInput = GetCredentialsForIdentityInput 
  { "IdentityId" :: (IdentityId)
  , "Logins" :: Maybe (LoginsMap)
  , "CustomRoleArn" :: Maybe (ARNString)
  }
derive instance newtypeGetCredentialsForIdentityInput :: Newtype GetCredentialsForIdentityInput _
derive instance repGenericGetCredentialsForIdentityInput :: Generic GetCredentialsForIdentityInput _
instance showGetCredentialsForIdentityInput :: Show GetCredentialsForIdentityInput where show = genericShow
instance decodeGetCredentialsForIdentityInput :: Decode GetCredentialsForIdentityInput where decode = genericDecode options
instance encodeGetCredentialsForIdentityInput :: Encode GetCredentialsForIdentityInput where encode = genericEncode options

-- | Constructs GetCredentialsForIdentityInput from required parameters
newGetCredentialsForIdentityInput :: IdentityId -> GetCredentialsForIdentityInput
newGetCredentialsForIdentityInput _IdentityId = GetCredentialsForIdentityInput { "IdentityId": _IdentityId, "CustomRoleArn": Nothing, "Logins": Nothing }

-- | Constructs GetCredentialsForIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCredentialsForIdentityInput' :: IdentityId -> ( { "IdentityId" :: (IdentityId) , "Logins" :: Maybe (LoginsMap) , "CustomRoleArn" :: Maybe (ARNString) } -> {"IdentityId" :: (IdentityId) , "Logins" :: Maybe (LoginsMap) , "CustomRoleArn" :: Maybe (ARNString) } ) -> GetCredentialsForIdentityInput
newGetCredentialsForIdentityInput' _IdentityId customize = (GetCredentialsForIdentityInput <<< customize) { "IdentityId": _IdentityId, "CustomRoleArn": Nothing, "Logins": Nothing }



-- | <p>Returned in response to a successful <code>GetCredentialsForIdentity</code> operation.</p>
newtype GetCredentialsForIdentityResponse = GetCredentialsForIdentityResponse 
  { "IdentityId" :: Maybe (IdentityId)
  , "Credentials" :: Maybe (Credentials)
  }
derive instance newtypeGetCredentialsForIdentityResponse :: Newtype GetCredentialsForIdentityResponse _
derive instance repGenericGetCredentialsForIdentityResponse :: Generic GetCredentialsForIdentityResponse _
instance showGetCredentialsForIdentityResponse :: Show GetCredentialsForIdentityResponse where show = genericShow
instance decodeGetCredentialsForIdentityResponse :: Decode GetCredentialsForIdentityResponse where decode = genericDecode options
instance encodeGetCredentialsForIdentityResponse :: Encode GetCredentialsForIdentityResponse where encode = genericEncode options

-- | Constructs GetCredentialsForIdentityResponse from required parameters
newGetCredentialsForIdentityResponse :: GetCredentialsForIdentityResponse
newGetCredentialsForIdentityResponse  = GetCredentialsForIdentityResponse { "Credentials": Nothing, "IdentityId": Nothing }

-- | Constructs GetCredentialsForIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCredentialsForIdentityResponse' :: ( { "IdentityId" :: Maybe (IdentityId) , "Credentials" :: Maybe (Credentials) } -> {"IdentityId" :: Maybe (IdentityId) , "Credentials" :: Maybe (Credentials) } ) -> GetCredentialsForIdentityResponse
newGetCredentialsForIdentityResponse'  customize = (GetCredentialsForIdentityResponse <<< customize) { "Credentials": Nothing, "IdentityId": Nothing }



-- | <p>Input to the GetId action.</p>
newtype GetIdInput = GetIdInput 
  { "AccountId" :: Maybe (AccountId)
  , "IdentityPoolId" :: (IdentityPoolId)
  , "Logins" :: Maybe (LoginsMap)
  }
derive instance newtypeGetIdInput :: Newtype GetIdInput _
derive instance repGenericGetIdInput :: Generic GetIdInput _
instance showGetIdInput :: Show GetIdInput where show = genericShow
instance decodeGetIdInput :: Decode GetIdInput where decode = genericDecode options
instance encodeGetIdInput :: Encode GetIdInput where encode = genericEncode options

-- | Constructs GetIdInput from required parameters
newGetIdInput :: IdentityPoolId -> GetIdInput
newGetIdInput _IdentityPoolId = GetIdInput { "IdentityPoolId": _IdentityPoolId, "AccountId": Nothing, "Logins": Nothing }

-- | Constructs GetIdInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdInput' :: IdentityPoolId -> ( { "AccountId" :: Maybe (AccountId) , "IdentityPoolId" :: (IdentityPoolId) , "Logins" :: Maybe (LoginsMap) } -> {"AccountId" :: Maybe (AccountId) , "IdentityPoolId" :: (IdentityPoolId) , "Logins" :: Maybe (LoginsMap) } ) -> GetIdInput
newGetIdInput' _IdentityPoolId customize = (GetIdInput <<< customize) { "IdentityPoolId": _IdentityPoolId, "AccountId": Nothing, "Logins": Nothing }



-- | <p>Returned in response to a GetId request.</p>
newtype GetIdResponse = GetIdResponse 
  { "IdentityId" :: Maybe (IdentityId)
  }
derive instance newtypeGetIdResponse :: Newtype GetIdResponse _
derive instance repGenericGetIdResponse :: Generic GetIdResponse _
instance showGetIdResponse :: Show GetIdResponse where show = genericShow
instance decodeGetIdResponse :: Decode GetIdResponse where decode = genericDecode options
instance encodeGetIdResponse :: Encode GetIdResponse where encode = genericEncode options

-- | Constructs GetIdResponse from required parameters
newGetIdResponse :: GetIdResponse
newGetIdResponse  = GetIdResponse { "IdentityId": Nothing }

-- | Constructs GetIdResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdResponse' :: ( { "IdentityId" :: Maybe (IdentityId) } -> {"IdentityId" :: Maybe (IdentityId) } ) -> GetIdResponse
newGetIdResponse'  customize = (GetIdResponse <<< customize) { "IdentityId": Nothing }



-- | <p>Input to the <code>GetIdentityPoolRoles</code> action.</p>
newtype GetIdentityPoolRolesInput = GetIdentityPoolRolesInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeGetIdentityPoolRolesInput :: Newtype GetIdentityPoolRolesInput _
derive instance repGenericGetIdentityPoolRolesInput :: Generic GetIdentityPoolRolesInput _
instance showGetIdentityPoolRolesInput :: Show GetIdentityPoolRolesInput where show = genericShow
instance decodeGetIdentityPoolRolesInput :: Decode GetIdentityPoolRolesInput where decode = genericDecode options
instance encodeGetIdentityPoolRolesInput :: Encode GetIdentityPoolRolesInput where encode = genericEncode options

-- | Constructs GetIdentityPoolRolesInput from required parameters
newGetIdentityPoolRolesInput :: IdentityPoolId -> GetIdentityPoolRolesInput
newGetIdentityPoolRolesInput _IdentityPoolId = GetIdentityPoolRolesInput { "IdentityPoolId": _IdentityPoolId }

-- | Constructs GetIdentityPoolRolesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoolRolesInput' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> GetIdentityPoolRolesInput
newGetIdentityPoolRolesInput' _IdentityPoolId customize = (GetIdentityPoolRolesInput <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | <p>Returned in response to a successful <code>GetIdentityPoolRoles</code> operation.</p>
newtype GetIdentityPoolRolesResponse = GetIdentityPoolRolesResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "Roles" :: Maybe (RolesMap)
  , "RoleMappings" :: Maybe (RoleMappingMap)
  }
derive instance newtypeGetIdentityPoolRolesResponse :: Newtype GetIdentityPoolRolesResponse _
derive instance repGenericGetIdentityPoolRolesResponse :: Generic GetIdentityPoolRolesResponse _
instance showGetIdentityPoolRolesResponse :: Show GetIdentityPoolRolesResponse where show = genericShow
instance decodeGetIdentityPoolRolesResponse :: Decode GetIdentityPoolRolesResponse where decode = genericDecode options
instance encodeGetIdentityPoolRolesResponse :: Encode GetIdentityPoolRolesResponse where encode = genericEncode options

-- | Constructs GetIdentityPoolRolesResponse from required parameters
newGetIdentityPoolRolesResponse :: GetIdentityPoolRolesResponse
newGetIdentityPoolRolesResponse  = GetIdentityPoolRolesResponse { "IdentityPoolId": Nothing, "RoleMappings": Nothing, "Roles": Nothing }

-- | Constructs GetIdentityPoolRolesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoolRolesResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "Roles" :: Maybe (RolesMap) , "RoleMappings" :: Maybe (RoleMappingMap) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "Roles" :: Maybe (RolesMap) , "RoleMappings" :: Maybe (RoleMappingMap) } ) -> GetIdentityPoolRolesResponse
newGetIdentityPoolRolesResponse'  customize = (GetIdentityPoolRolesResponse <<< customize) { "IdentityPoolId": Nothing, "RoleMappings": Nothing, "Roles": Nothing }



-- | <p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>
newtype GetOpenIdTokenForDeveloperIdentityInput = GetOpenIdTokenForDeveloperIdentityInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: Maybe (IdentityId)
  , "Logins" :: (LoginsMap)
  , "TokenDuration" :: Maybe (TokenDuration)
  }
derive instance newtypeGetOpenIdTokenForDeveloperIdentityInput :: Newtype GetOpenIdTokenForDeveloperIdentityInput _
derive instance repGenericGetOpenIdTokenForDeveloperIdentityInput :: Generic GetOpenIdTokenForDeveloperIdentityInput _
instance showGetOpenIdTokenForDeveloperIdentityInput :: Show GetOpenIdTokenForDeveloperIdentityInput where show = genericShow
instance decodeGetOpenIdTokenForDeveloperIdentityInput :: Decode GetOpenIdTokenForDeveloperIdentityInput where decode = genericDecode options
instance encodeGetOpenIdTokenForDeveloperIdentityInput :: Encode GetOpenIdTokenForDeveloperIdentityInput where encode = genericEncode options

-- | Constructs GetOpenIdTokenForDeveloperIdentityInput from required parameters
newGetOpenIdTokenForDeveloperIdentityInput :: IdentityPoolId -> LoginsMap -> GetOpenIdTokenForDeveloperIdentityInput
newGetOpenIdTokenForDeveloperIdentityInput _IdentityPoolId _Logins = GetOpenIdTokenForDeveloperIdentityInput { "IdentityPoolId": _IdentityPoolId, "Logins": _Logins, "IdentityId": Nothing, "TokenDuration": Nothing }

-- | Constructs GetOpenIdTokenForDeveloperIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIdTokenForDeveloperIdentityInput' :: IdentityPoolId -> LoginsMap -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: Maybe (IdentityId) , "Logins" :: (LoginsMap) , "TokenDuration" :: Maybe (TokenDuration) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: Maybe (IdentityId) , "Logins" :: (LoginsMap) , "TokenDuration" :: Maybe (TokenDuration) } ) -> GetOpenIdTokenForDeveloperIdentityInput
newGetOpenIdTokenForDeveloperIdentityInput' _IdentityPoolId _Logins customize = (GetOpenIdTokenForDeveloperIdentityInput <<< customize) { "IdentityPoolId": _IdentityPoolId, "Logins": _Logins, "IdentityId": Nothing, "TokenDuration": Nothing }



-- | <p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code> request.</p>
newtype GetOpenIdTokenForDeveloperIdentityResponse = GetOpenIdTokenForDeveloperIdentityResponse 
  { "IdentityId" :: Maybe (IdentityId)
  , "Token" :: Maybe (OIDCToken)
  }
derive instance newtypeGetOpenIdTokenForDeveloperIdentityResponse :: Newtype GetOpenIdTokenForDeveloperIdentityResponse _
derive instance repGenericGetOpenIdTokenForDeveloperIdentityResponse :: Generic GetOpenIdTokenForDeveloperIdentityResponse _
instance showGetOpenIdTokenForDeveloperIdentityResponse :: Show GetOpenIdTokenForDeveloperIdentityResponse where show = genericShow
instance decodeGetOpenIdTokenForDeveloperIdentityResponse :: Decode GetOpenIdTokenForDeveloperIdentityResponse where decode = genericDecode options
instance encodeGetOpenIdTokenForDeveloperIdentityResponse :: Encode GetOpenIdTokenForDeveloperIdentityResponse where encode = genericEncode options

-- | Constructs GetOpenIdTokenForDeveloperIdentityResponse from required parameters
newGetOpenIdTokenForDeveloperIdentityResponse :: GetOpenIdTokenForDeveloperIdentityResponse
newGetOpenIdTokenForDeveloperIdentityResponse  = GetOpenIdTokenForDeveloperIdentityResponse { "IdentityId": Nothing, "Token": Nothing }

-- | Constructs GetOpenIdTokenForDeveloperIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIdTokenForDeveloperIdentityResponse' :: ( { "IdentityId" :: Maybe (IdentityId) , "Token" :: Maybe (OIDCToken) } -> {"IdentityId" :: Maybe (IdentityId) , "Token" :: Maybe (OIDCToken) } ) -> GetOpenIdTokenForDeveloperIdentityResponse
newGetOpenIdTokenForDeveloperIdentityResponse'  customize = (GetOpenIdTokenForDeveloperIdentityResponse <<< customize) { "IdentityId": Nothing, "Token": Nothing }



-- | <p>Input to the GetOpenIdToken action.</p>
newtype GetOpenIdTokenInput = GetOpenIdTokenInput 
  { "IdentityId" :: (IdentityId)
  , "Logins" :: Maybe (LoginsMap)
  }
derive instance newtypeGetOpenIdTokenInput :: Newtype GetOpenIdTokenInput _
derive instance repGenericGetOpenIdTokenInput :: Generic GetOpenIdTokenInput _
instance showGetOpenIdTokenInput :: Show GetOpenIdTokenInput where show = genericShow
instance decodeGetOpenIdTokenInput :: Decode GetOpenIdTokenInput where decode = genericDecode options
instance encodeGetOpenIdTokenInput :: Encode GetOpenIdTokenInput where encode = genericEncode options

-- | Constructs GetOpenIdTokenInput from required parameters
newGetOpenIdTokenInput :: IdentityId -> GetOpenIdTokenInput
newGetOpenIdTokenInput _IdentityId = GetOpenIdTokenInput { "IdentityId": _IdentityId, "Logins": Nothing }

-- | Constructs GetOpenIdTokenInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIdTokenInput' :: IdentityId -> ( { "IdentityId" :: (IdentityId) , "Logins" :: Maybe (LoginsMap) } -> {"IdentityId" :: (IdentityId) , "Logins" :: Maybe (LoginsMap) } ) -> GetOpenIdTokenInput
newGetOpenIdTokenInput' _IdentityId customize = (GetOpenIdTokenInput <<< customize) { "IdentityId": _IdentityId, "Logins": Nothing }



-- | <p>Returned in response to a successful GetOpenIdToken request.</p>
newtype GetOpenIdTokenResponse = GetOpenIdTokenResponse 
  { "IdentityId" :: Maybe (IdentityId)
  , "Token" :: Maybe (OIDCToken)
  }
derive instance newtypeGetOpenIdTokenResponse :: Newtype GetOpenIdTokenResponse _
derive instance repGenericGetOpenIdTokenResponse :: Generic GetOpenIdTokenResponse _
instance showGetOpenIdTokenResponse :: Show GetOpenIdTokenResponse where show = genericShow
instance decodeGetOpenIdTokenResponse :: Decode GetOpenIdTokenResponse where decode = genericDecode options
instance encodeGetOpenIdTokenResponse :: Encode GetOpenIdTokenResponse where encode = genericEncode options

-- | Constructs GetOpenIdTokenResponse from required parameters
newGetOpenIdTokenResponse :: GetOpenIdTokenResponse
newGetOpenIdTokenResponse  = GetOpenIdTokenResponse { "IdentityId": Nothing, "Token": Nothing }

-- | Constructs GetOpenIdTokenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIdTokenResponse' :: ( { "IdentityId" :: Maybe (IdentityId) , "Token" :: Maybe (OIDCToken) } -> {"IdentityId" :: Maybe (IdentityId) , "Token" :: Maybe (OIDCToken) } ) -> GetOpenIdTokenResponse
newGetOpenIdTokenResponse'  customize = (GetOpenIdTokenResponse <<< customize) { "IdentityId": Nothing, "Token": Nothing }



newtype HideDisabled = HideDisabled Boolean
derive instance newtypeHideDisabled :: Newtype HideDisabled _
derive instance repGenericHideDisabled :: Generic HideDisabled _
instance showHideDisabled :: Show HideDisabled where show = genericShow
instance decodeHideDisabled :: Decode HideDisabled where decode = genericDecode options
instance encodeHideDisabled :: Encode HideDisabled where encode = genericEncode options



newtype IdentitiesList = IdentitiesList (Array IdentityDescription)
derive instance newtypeIdentitiesList :: Newtype IdentitiesList _
derive instance repGenericIdentitiesList :: Generic IdentitiesList _
instance showIdentitiesList :: Show IdentitiesList where show = genericShow
instance decodeIdentitiesList :: Decode IdentitiesList where decode = genericDecode options
instance encodeIdentitiesList :: Encode IdentitiesList where encode = genericEncode options



-- | <p>A description of the identity.</p>
newtype IdentityDescription = IdentityDescription 
  { "IdentityId" :: Maybe (IdentityId)
  , "Logins" :: Maybe (LoginsList)
  , "CreationDate" :: Maybe (DateType)
  , "LastModifiedDate" :: Maybe (DateType)
  }
derive instance newtypeIdentityDescription :: Newtype IdentityDescription _
derive instance repGenericIdentityDescription :: Generic IdentityDescription _
instance showIdentityDescription :: Show IdentityDescription where show = genericShow
instance decodeIdentityDescription :: Decode IdentityDescription where decode = genericDecode options
instance encodeIdentityDescription :: Encode IdentityDescription where encode = genericEncode options

-- | Constructs IdentityDescription from required parameters
newIdentityDescription :: IdentityDescription
newIdentityDescription  = IdentityDescription { "CreationDate": Nothing, "IdentityId": Nothing, "LastModifiedDate": Nothing, "Logins": Nothing }

-- | Constructs IdentityDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityDescription' :: ( { "IdentityId" :: Maybe (IdentityId) , "Logins" :: Maybe (LoginsList) , "CreationDate" :: Maybe (DateType) , "LastModifiedDate" :: Maybe (DateType) } -> {"IdentityId" :: Maybe (IdentityId) , "Logins" :: Maybe (LoginsList) , "CreationDate" :: Maybe (DateType) , "LastModifiedDate" :: Maybe (DateType) } ) -> IdentityDescription
newIdentityDescription'  customize = (IdentityDescription <<< customize) { "CreationDate": Nothing, "IdentityId": Nothing, "LastModifiedDate": Nothing, "Logins": Nothing }



newtype IdentityId = IdentityId String
derive instance newtypeIdentityId :: Newtype IdentityId _
derive instance repGenericIdentityId :: Generic IdentityId _
instance showIdentityId :: Show IdentityId where show = genericShow
instance decodeIdentityId :: Decode IdentityId where decode = genericDecode options
instance encodeIdentityId :: Encode IdentityId where encode = genericEncode options



newtype IdentityIdList = IdentityIdList (Array IdentityId)
derive instance newtypeIdentityIdList :: Newtype IdentityIdList _
derive instance repGenericIdentityIdList :: Generic IdentityIdList _
instance showIdentityIdList :: Show IdentityIdList where show = genericShow
instance decodeIdentityIdList :: Decode IdentityIdList where decode = genericDecode options
instance encodeIdentityIdList :: Encode IdentityIdList where encode = genericEncode options



-- | <p>An object representing an Amazon Cognito identity pool.</p>
newtype IdentityPool = IdentityPool 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityPoolName" :: (IdentityPoolName)
  , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated)
  , "SupportedLoginProviders" :: Maybe (IdentityProviders)
  , "DeveloperProviderName" :: Maybe (DeveloperProviderName)
  , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList)
  , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList)
  , "SamlProviderARNs" :: Maybe (SAMLProviderList)
  }
derive instance newtypeIdentityPool :: Newtype IdentityPool _
derive instance repGenericIdentityPool :: Generic IdentityPool _
instance showIdentityPool :: Show IdentityPool where show = genericShow
instance decodeIdentityPool :: Decode IdentityPool where decode = genericDecode options
instance encodeIdentityPool :: Encode IdentityPool where encode = genericEncode options

-- | Constructs IdentityPool from required parameters
newIdentityPool :: IdentityPoolUnauthenticated -> IdentityPoolId -> IdentityPoolName -> IdentityPool
newIdentityPool _AllowUnauthenticatedIdentities _IdentityPoolId _IdentityPoolName = IdentityPool { "AllowUnauthenticatedIdentities": _AllowUnauthenticatedIdentities, "IdentityPoolId": _IdentityPoolId, "IdentityPoolName": _IdentityPoolName, "CognitoIdentityProviders": Nothing, "DeveloperProviderName": Nothing, "OpenIdConnectProviderARNs": Nothing, "SamlProviderARNs": Nothing, "SupportedLoginProviders": Nothing }

-- | Constructs IdentityPool's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityPool' :: IdentityPoolUnauthenticated -> IdentityPoolId -> IdentityPoolName -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityPoolName" :: (IdentityPoolName) , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated) , "SupportedLoginProviders" :: Maybe (IdentityProviders) , "DeveloperProviderName" :: Maybe (DeveloperProviderName) , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList) , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList) , "SamlProviderARNs" :: Maybe (SAMLProviderList) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityPoolName" :: (IdentityPoolName) , "AllowUnauthenticatedIdentities" :: (IdentityPoolUnauthenticated) , "SupportedLoginProviders" :: Maybe (IdentityProviders) , "DeveloperProviderName" :: Maybe (DeveloperProviderName) , "OpenIdConnectProviderARNs" :: Maybe (OIDCProviderList) , "CognitoIdentityProviders" :: Maybe (CognitoIdentityProviderList) , "SamlProviderARNs" :: Maybe (SAMLProviderList) } ) -> IdentityPool
newIdentityPool' _AllowUnauthenticatedIdentities _IdentityPoolId _IdentityPoolName customize = (IdentityPool <<< customize) { "AllowUnauthenticatedIdentities": _AllowUnauthenticatedIdentities, "IdentityPoolId": _IdentityPoolId, "IdentityPoolName": _IdentityPoolName, "CognitoIdentityProviders": Nothing, "DeveloperProviderName": Nothing, "OpenIdConnectProviderARNs": Nothing, "SamlProviderARNs": Nothing, "SupportedLoginProviders": Nothing }



newtype IdentityPoolId = IdentityPoolId String
derive instance newtypeIdentityPoolId :: Newtype IdentityPoolId _
derive instance repGenericIdentityPoolId :: Generic IdentityPoolId _
instance showIdentityPoolId :: Show IdentityPoolId where show = genericShow
instance decodeIdentityPoolId :: Decode IdentityPoolId where decode = genericDecode options
instance encodeIdentityPoolId :: Encode IdentityPoolId where encode = genericEncode options



newtype IdentityPoolName = IdentityPoolName String
derive instance newtypeIdentityPoolName :: Newtype IdentityPoolName _
derive instance repGenericIdentityPoolName :: Generic IdentityPoolName _
instance showIdentityPoolName :: Show IdentityPoolName where show = genericShow
instance decodeIdentityPoolName :: Decode IdentityPoolName where decode = genericDecode options
instance encodeIdentityPoolName :: Encode IdentityPoolName where encode = genericEncode options



-- | <p>A description of the identity pool.</p>
newtype IdentityPoolShortDescription = IdentityPoolShortDescription 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "IdentityPoolName" :: Maybe (IdentityPoolName)
  }
derive instance newtypeIdentityPoolShortDescription :: Newtype IdentityPoolShortDescription _
derive instance repGenericIdentityPoolShortDescription :: Generic IdentityPoolShortDescription _
instance showIdentityPoolShortDescription :: Show IdentityPoolShortDescription where show = genericShow
instance decodeIdentityPoolShortDescription :: Decode IdentityPoolShortDescription where decode = genericDecode options
instance encodeIdentityPoolShortDescription :: Encode IdentityPoolShortDescription where encode = genericEncode options

-- | Constructs IdentityPoolShortDescription from required parameters
newIdentityPoolShortDescription :: IdentityPoolShortDescription
newIdentityPoolShortDescription  = IdentityPoolShortDescription { "IdentityPoolId": Nothing, "IdentityPoolName": Nothing }

-- | Constructs IdentityPoolShortDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityPoolShortDescription' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "IdentityPoolName" :: Maybe (IdentityPoolName) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "IdentityPoolName" :: Maybe (IdentityPoolName) } ) -> IdentityPoolShortDescription
newIdentityPoolShortDescription'  customize = (IdentityPoolShortDescription <<< customize) { "IdentityPoolId": Nothing, "IdentityPoolName": Nothing }



newtype IdentityPoolUnauthenticated = IdentityPoolUnauthenticated Boolean
derive instance newtypeIdentityPoolUnauthenticated :: Newtype IdentityPoolUnauthenticated _
derive instance repGenericIdentityPoolUnauthenticated :: Generic IdentityPoolUnauthenticated _
instance showIdentityPoolUnauthenticated :: Show IdentityPoolUnauthenticated where show = genericShow
instance decodeIdentityPoolUnauthenticated :: Decode IdentityPoolUnauthenticated where decode = genericDecode options
instance encodeIdentityPoolUnauthenticated :: Encode IdentityPoolUnauthenticated where encode = genericEncode options



newtype IdentityPoolsList = IdentityPoolsList (Array IdentityPoolShortDescription)
derive instance newtypeIdentityPoolsList :: Newtype IdentityPoolsList _
derive instance repGenericIdentityPoolsList :: Generic IdentityPoolsList _
instance showIdentityPoolsList :: Show IdentityPoolsList where show = genericShow
instance decodeIdentityPoolsList :: Decode IdentityPoolsList where decode = genericDecode options
instance encodeIdentityPoolsList :: Encode IdentityPoolsList where encode = genericEncode options



newtype IdentityProviderId = IdentityProviderId String
derive instance newtypeIdentityProviderId :: Newtype IdentityProviderId _
derive instance repGenericIdentityProviderId :: Generic IdentityProviderId _
instance showIdentityProviderId :: Show IdentityProviderId where show = genericShow
instance decodeIdentityProviderId :: Decode IdentityProviderId where decode = genericDecode options
instance encodeIdentityProviderId :: Encode IdentityProviderId where encode = genericEncode options



newtype IdentityProviderName = IdentityProviderName String
derive instance newtypeIdentityProviderName :: Newtype IdentityProviderName _
derive instance repGenericIdentityProviderName :: Generic IdentityProviderName _
instance showIdentityProviderName :: Show IdentityProviderName where show = genericShow
instance decodeIdentityProviderName :: Decode IdentityProviderName where decode = genericDecode options
instance encodeIdentityProviderName :: Encode IdentityProviderName where encode = genericEncode options



newtype IdentityProviderToken = IdentityProviderToken String
derive instance newtypeIdentityProviderToken :: Newtype IdentityProviderToken _
derive instance repGenericIdentityProviderToken :: Generic IdentityProviderToken _
instance showIdentityProviderToken :: Show IdentityProviderToken where show = genericShow
instance decodeIdentityProviderToken :: Decode IdentityProviderToken where decode = genericDecode options
instance encodeIdentityProviderToken :: Encode IdentityProviderToken where encode = genericEncode options



newtype IdentityProviders = IdentityProviders (StrMap.StrMap IdentityProviderId)
derive instance newtypeIdentityProviders :: Newtype IdentityProviders _
derive instance repGenericIdentityProviders :: Generic IdentityProviders _
instance showIdentityProviders :: Show IdentityProviders where show = genericShow
instance decodeIdentityProviders :: Decode IdentityProviders where decode = genericDecode options
instance encodeIdentityProviders :: Encode IdentityProviders where encode = genericEncode options



-- | <p>Thrown when the service encounters an error during processing the request.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: Maybe (String)
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": Nothing }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": Nothing }



-- | <p>Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.</p>
newtype InvalidIdentityPoolConfigurationException = InvalidIdentityPoolConfigurationException 
  { "message" :: Maybe (String)
  }
derive instance newtypeInvalidIdentityPoolConfigurationException :: Newtype InvalidIdentityPoolConfigurationException _
derive instance repGenericInvalidIdentityPoolConfigurationException :: Generic InvalidIdentityPoolConfigurationException _
instance showInvalidIdentityPoolConfigurationException :: Show InvalidIdentityPoolConfigurationException where show = genericShow
instance decodeInvalidIdentityPoolConfigurationException :: Decode InvalidIdentityPoolConfigurationException where decode = genericDecode options
instance encodeInvalidIdentityPoolConfigurationException :: Encode InvalidIdentityPoolConfigurationException where encode = genericEncode options

-- | Constructs InvalidIdentityPoolConfigurationException from required parameters
newInvalidIdentityPoolConfigurationException :: InvalidIdentityPoolConfigurationException
newInvalidIdentityPoolConfigurationException  = InvalidIdentityPoolConfigurationException { "message": Nothing }

-- | Constructs InvalidIdentityPoolConfigurationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidIdentityPoolConfigurationException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> InvalidIdentityPoolConfigurationException
newInvalidIdentityPoolConfigurationException'  customize = (InvalidIdentityPoolConfigurationException <<< customize) { "message": Nothing }



-- | <p>Thrown for missing or bad input parameter(s).</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (String)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



-- | <p>Input to the ListIdentities action.</p>
newtype ListIdentitiesInput = ListIdentitiesInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "MaxResults" :: (QueryLimit)
  , "NextToken" :: Maybe (PaginationKey)
  , "HideDisabled" :: Maybe (HideDisabled)
  }
derive instance newtypeListIdentitiesInput :: Newtype ListIdentitiesInput _
derive instance repGenericListIdentitiesInput :: Generic ListIdentitiesInput _
instance showListIdentitiesInput :: Show ListIdentitiesInput where show = genericShow
instance decodeListIdentitiesInput :: Decode ListIdentitiesInput where decode = genericDecode options
instance encodeListIdentitiesInput :: Encode ListIdentitiesInput where encode = genericEncode options

-- | Constructs ListIdentitiesInput from required parameters
newListIdentitiesInput :: IdentityPoolId -> QueryLimit -> ListIdentitiesInput
newListIdentitiesInput _IdentityPoolId _MaxResults = ListIdentitiesInput { "IdentityPoolId": _IdentityPoolId, "MaxResults": _MaxResults, "HideDisabled": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentitiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentitiesInput' :: IdentityPoolId -> QueryLimit -> ( { "IdentityPoolId" :: (IdentityPoolId) , "MaxResults" :: (QueryLimit) , "NextToken" :: Maybe (PaginationKey) , "HideDisabled" :: Maybe (HideDisabled) } -> {"IdentityPoolId" :: (IdentityPoolId) , "MaxResults" :: (QueryLimit) , "NextToken" :: Maybe (PaginationKey) , "HideDisabled" :: Maybe (HideDisabled) } ) -> ListIdentitiesInput
newListIdentitiesInput' _IdentityPoolId _MaxResults customize = (ListIdentitiesInput <<< customize) { "IdentityPoolId": _IdentityPoolId, "MaxResults": _MaxResults, "HideDisabled": Nothing, "NextToken": Nothing }



-- | <p>The response to a ListIdentities request.</p>
newtype ListIdentitiesResponse = ListIdentitiesResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "Identities" :: Maybe (IdentitiesList)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListIdentitiesResponse :: Newtype ListIdentitiesResponse _
derive instance repGenericListIdentitiesResponse :: Generic ListIdentitiesResponse _
instance showListIdentitiesResponse :: Show ListIdentitiesResponse where show = genericShow
instance decodeListIdentitiesResponse :: Decode ListIdentitiesResponse where decode = genericDecode options
instance encodeListIdentitiesResponse :: Encode ListIdentitiesResponse where encode = genericEncode options

-- | Constructs ListIdentitiesResponse from required parameters
newListIdentitiesResponse :: ListIdentitiesResponse
newListIdentitiesResponse  = ListIdentitiesResponse { "Identities": Nothing, "IdentityPoolId": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentitiesResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "Identities" :: Maybe (IdentitiesList) , "NextToken" :: Maybe (PaginationKey) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "Identities" :: Maybe (IdentitiesList) , "NextToken" :: Maybe (PaginationKey) } ) -> ListIdentitiesResponse
newListIdentitiesResponse'  customize = (ListIdentitiesResponse <<< customize) { "Identities": Nothing, "IdentityPoolId": Nothing, "NextToken": Nothing }



-- | <p>Input to the ListIdentityPools action.</p>
newtype ListIdentityPoolsInput = ListIdentityPoolsInput 
  { "MaxResults" :: (QueryLimit)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListIdentityPoolsInput :: Newtype ListIdentityPoolsInput _
derive instance repGenericListIdentityPoolsInput :: Generic ListIdentityPoolsInput _
instance showListIdentityPoolsInput :: Show ListIdentityPoolsInput where show = genericShow
instance decodeListIdentityPoolsInput :: Decode ListIdentityPoolsInput where decode = genericDecode options
instance encodeListIdentityPoolsInput :: Encode ListIdentityPoolsInput where encode = genericEncode options

-- | Constructs ListIdentityPoolsInput from required parameters
newListIdentityPoolsInput :: QueryLimit -> ListIdentityPoolsInput
newListIdentityPoolsInput _MaxResults = ListIdentityPoolsInput { "MaxResults": _MaxResults, "NextToken": Nothing }

-- | Constructs ListIdentityPoolsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoolsInput' :: QueryLimit -> ( { "MaxResults" :: (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } -> {"MaxResults" :: (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } ) -> ListIdentityPoolsInput
newListIdentityPoolsInput' _MaxResults customize = (ListIdentityPoolsInput <<< customize) { "MaxResults": _MaxResults, "NextToken": Nothing }



-- | <p>The result of a successful ListIdentityPools action.</p>
newtype ListIdentityPoolsResponse = ListIdentityPoolsResponse 
  { "IdentityPools" :: Maybe (IdentityPoolsList)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeListIdentityPoolsResponse :: Newtype ListIdentityPoolsResponse _
derive instance repGenericListIdentityPoolsResponse :: Generic ListIdentityPoolsResponse _
instance showListIdentityPoolsResponse :: Show ListIdentityPoolsResponse where show = genericShow
instance decodeListIdentityPoolsResponse :: Decode ListIdentityPoolsResponse where decode = genericDecode options
instance encodeListIdentityPoolsResponse :: Encode ListIdentityPoolsResponse where encode = genericEncode options

-- | Constructs ListIdentityPoolsResponse from required parameters
newListIdentityPoolsResponse :: ListIdentityPoolsResponse
newListIdentityPoolsResponse  = ListIdentityPoolsResponse { "IdentityPools": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentityPoolsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoolsResponse' :: ( { "IdentityPools" :: Maybe (IdentityPoolsList) , "NextToken" :: Maybe (PaginationKey) } -> {"IdentityPools" :: Maybe (IdentityPoolsList) , "NextToken" :: Maybe (PaginationKey) } ) -> ListIdentityPoolsResponse
newListIdentityPoolsResponse'  customize = (ListIdentityPoolsResponse <<< customize) { "IdentityPools": Nothing, "NextToken": Nothing }



newtype LoginsList = LoginsList (Array IdentityProviderName)
derive instance newtypeLoginsList :: Newtype LoginsList _
derive instance repGenericLoginsList :: Generic LoginsList _
instance showLoginsList :: Show LoginsList where show = genericShow
instance decodeLoginsList :: Decode LoginsList where decode = genericDecode options
instance encodeLoginsList :: Encode LoginsList where encode = genericEncode options



newtype LoginsMap = LoginsMap (StrMap.StrMap IdentityProviderToken)
derive instance newtypeLoginsMap :: Newtype LoginsMap _
derive instance repGenericLoginsMap :: Generic LoginsMap _
instance showLoginsMap :: Show LoginsMap where show = genericShow
instance decodeLoginsMap :: Decode LoginsMap where decode = genericDecode options
instance encodeLoginsMap :: Encode LoginsMap where encode = genericEncode options



-- | <p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>
newtype LookupDeveloperIdentityInput = LookupDeveloperIdentityInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: Maybe (IdentityId)
  , "DeveloperUserIdentifier" :: Maybe (DeveloperUserIdentifier)
  , "MaxResults" :: Maybe (QueryLimit)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeLookupDeveloperIdentityInput :: Newtype LookupDeveloperIdentityInput _
derive instance repGenericLookupDeveloperIdentityInput :: Generic LookupDeveloperIdentityInput _
instance showLookupDeveloperIdentityInput :: Show LookupDeveloperIdentityInput where show = genericShow
instance decodeLookupDeveloperIdentityInput :: Decode LookupDeveloperIdentityInput where decode = genericDecode options
instance encodeLookupDeveloperIdentityInput :: Encode LookupDeveloperIdentityInput where encode = genericEncode options

-- | Constructs LookupDeveloperIdentityInput from required parameters
newLookupDeveloperIdentityInput :: IdentityPoolId -> LookupDeveloperIdentityInput
newLookupDeveloperIdentityInput _IdentityPoolId = LookupDeveloperIdentityInput { "IdentityPoolId": _IdentityPoolId, "DeveloperUserIdentifier": Nothing, "IdentityId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs LookupDeveloperIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLookupDeveloperIdentityInput' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: Maybe (IdentityId) , "DeveloperUserIdentifier" :: Maybe (DeveloperUserIdentifier) , "MaxResults" :: Maybe (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: Maybe (IdentityId) , "DeveloperUserIdentifier" :: Maybe (DeveloperUserIdentifier) , "MaxResults" :: Maybe (QueryLimit) , "NextToken" :: Maybe (PaginationKey) } ) -> LookupDeveloperIdentityInput
newLookupDeveloperIdentityInput' _IdentityPoolId customize = (LookupDeveloperIdentityInput <<< customize) { "IdentityPoolId": _IdentityPoolId, "DeveloperUserIdentifier": Nothing, "IdentityId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



-- | <p>Returned in response to a successful <code>LookupDeveloperIdentity</code> action.</p>
newtype LookupDeveloperIdentityResponse = LookupDeveloperIdentityResponse 
  { "IdentityId" :: Maybe (IdentityId)
  , "DeveloperUserIdentifierList" :: Maybe (DeveloperUserIdentifierList)
  , "NextToken" :: Maybe (PaginationKey)
  }
derive instance newtypeLookupDeveloperIdentityResponse :: Newtype LookupDeveloperIdentityResponse _
derive instance repGenericLookupDeveloperIdentityResponse :: Generic LookupDeveloperIdentityResponse _
instance showLookupDeveloperIdentityResponse :: Show LookupDeveloperIdentityResponse where show = genericShow
instance decodeLookupDeveloperIdentityResponse :: Decode LookupDeveloperIdentityResponse where decode = genericDecode options
instance encodeLookupDeveloperIdentityResponse :: Encode LookupDeveloperIdentityResponse where encode = genericEncode options

-- | Constructs LookupDeveloperIdentityResponse from required parameters
newLookupDeveloperIdentityResponse :: LookupDeveloperIdentityResponse
newLookupDeveloperIdentityResponse  = LookupDeveloperIdentityResponse { "DeveloperUserIdentifierList": Nothing, "IdentityId": Nothing, "NextToken": Nothing }

-- | Constructs LookupDeveloperIdentityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLookupDeveloperIdentityResponse' :: ( { "IdentityId" :: Maybe (IdentityId) , "DeveloperUserIdentifierList" :: Maybe (DeveloperUserIdentifierList) , "NextToken" :: Maybe (PaginationKey) } -> {"IdentityId" :: Maybe (IdentityId) , "DeveloperUserIdentifierList" :: Maybe (DeveloperUserIdentifierList) , "NextToken" :: Maybe (PaginationKey) } ) -> LookupDeveloperIdentityResponse
newLookupDeveloperIdentityResponse'  customize = (LookupDeveloperIdentityResponse <<< customize) { "DeveloperUserIdentifierList": Nothing, "IdentityId": Nothing, "NextToken": Nothing }



-- | <p>A rule that maps a claim name, a claim value, and a match type to a role ARN.</p>
newtype MappingRule = MappingRule 
  { "Claim" :: (ClaimName)
  , "MatchType" :: (MappingRuleMatchType)
  , "Value" :: (ClaimValue)
  , "RoleARN" :: (ARNString)
  }
derive instance newtypeMappingRule :: Newtype MappingRule _
derive instance repGenericMappingRule :: Generic MappingRule _
instance showMappingRule :: Show MappingRule where show = genericShow
instance decodeMappingRule :: Decode MappingRule where decode = genericDecode options
instance encodeMappingRule :: Encode MappingRule where encode = genericEncode options

-- | Constructs MappingRule from required parameters
newMappingRule :: ClaimName -> MappingRuleMatchType -> ARNString -> ClaimValue -> MappingRule
newMappingRule _Claim _MatchType _RoleARN _Value = MappingRule { "Claim": _Claim, "MatchType": _MatchType, "RoleARN": _RoleARN, "Value": _Value }

-- | Constructs MappingRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMappingRule' :: ClaimName -> MappingRuleMatchType -> ARNString -> ClaimValue -> ( { "Claim" :: (ClaimName) , "MatchType" :: (MappingRuleMatchType) , "Value" :: (ClaimValue) , "RoleARN" :: (ARNString) } -> {"Claim" :: (ClaimName) , "MatchType" :: (MappingRuleMatchType) , "Value" :: (ClaimValue) , "RoleARN" :: (ARNString) } ) -> MappingRule
newMappingRule' _Claim _MatchType _RoleARN _Value customize = (MappingRule <<< customize) { "Claim": _Claim, "MatchType": _MatchType, "RoleARN": _RoleARN, "Value": _Value }



newtype MappingRuleMatchType = MappingRuleMatchType String
derive instance newtypeMappingRuleMatchType :: Newtype MappingRuleMatchType _
derive instance repGenericMappingRuleMatchType :: Generic MappingRuleMatchType _
instance showMappingRuleMatchType :: Show MappingRuleMatchType where show = genericShow
instance decodeMappingRuleMatchType :: Decode MappingRuleMatchType where decode = genericDecode options
instance encodeMappingRuleMatchType :: Encode MappingRuleMatchType where encode = genericEncode options



newtype MappingRulesList = MappingRulesList (Array MappingRule)
derive instance newtypeMappingRulesList :: Newtype MappingRulesList _
derive instance repGenericMappingRulesList :: Generic MappingRulesList _
instance showMappingRulesList :: Show MappingRulesList where show = genericShow
instance decodeMappingRulesList :: Decode MappingRulesList where decode = genericDecode options
instance encodeMappingRulesList :: Encode MappingRulesList where encode = genericEncode options



-- | <p>Input to the <code>MergeDeveloperIdentities</code> action.</p>
newtype MergeDeveloperIdentitiesInput = MergeDeveloperIdentitiesInput 
  { "SourceUserIdentifier" :: (DeveloperUserIdentifier)
  , "DestinationUserIdentifier" :: (DeveloperUserIdentifier)
  , "DeveloperProviderName" :: (DeveloperProviderName)
  , "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeMergeDeveloperIdentitiesInput :: Newtype MergeDeveloperIdentitiesInput _
derive instance repGenericMergeDeveloperIdentitiesInput :: Generic MergeDeveloperIdentitiesInput _
instance showMergeDeveloperIdentitiesInput :: Show MergeDeveloperIdentitiesInput where show = genericShow
instance decodeMergeDeveloperIdentitiesInput :: Decode MergeDeveloperIdentitiesInput where decode = genericDecode options
instance encodeMergeDeveloperIdentitiesInput :: Encode MergeDeveloperIdentitiesInput where encode = genericEncode options

-- | Constructs MergeDeveloperIdentitiesInput from required parameters
newMergeDeveloperIdentitiesInput :: DeveloperUserIdentifier -> DeveloperProviderName -> IdentityPoolId -> DeveloperUserIdentifier -> MergeDeveloperIdentitiesInput
newMergeDeveloperIdentitiesInput _DestinationUserIdentifier _DeveloperProviderName _IdentityPoolId _SourceUserIdentifier = MergeDeveloperIdentitiesInput { "DestinationUserIdentifier": _DestinationUserIdentifier, "DeveloperProviderName": _DeveloperProviderName, "IdentityPoolId": _IdentityPoolId, "SourceUserIdentifier": _SourceUserIdentifier }

-- | Constructs MergeDeveloperIdentitiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMergeDeveloperIdentitiesInput' :: DeveloperUserIdentifier -> DeveloperProviderName -> IdentityPoolId -> DeveloperUserIdentifier -> ( { "SourceUserIdentifier" :: (DeveloperUserIdentifier) , "DestinationUserIdentifier" :: (DeveloperUserIdentifier) , "DeveloperProviderName" :: (DeveloperProviderName) , "IdentityPoolId" :: (IdentityPoolId) } -> {"SourceUserIdentifier" :: (DeveloperUserIdentifier) , "DestinationUserIdentifier" :: (DeveloperUserIdentifier) , "DeveloperProviderName" :: (DeveloperProviderName) , "IdentityPoolId" :: (IdentityPoolId) } ) -> MergeDeveloperIdentitiesInput
newMergeDeveloperIdentitiesInput' _DestinationUserIdentifier _DeveloperProviderName _IdentityPoolId _SourceUserIdentifier customize = (MergeDeveloperIdentitiesInput <<< customize) { "DestinationUserIdentifier": _DestinationUserIdentifier, "DeveloperProviderName": _DeveloperProviderName, "IdentityPoolId": _IdentityPoolId, "SourceUserIdentifier": _SourceUserIdentifier }



-- | <p>Returned in response to a successful <code>MergeDeveloperIdentities</code> action.</p>
newtype MergeDeveloperIdentitiesResponse = MergeDeveloperIdentitiesResponse 
  { "IdentityId" :: Maybe (IdentityId)
  }
derive instance newtypeMergeDeveloperIdentitiesResponse :: Newtype MergeDeveloperIdentitiesResponse _
derive instance repGenericMergeDeveloperIdentitiesResponse :: Generic MergeDeveloperIdentitiesResponse _
instance showMergeDeveloperIdentitiesResponse :: Show MergeDeveloperIdentitiesResponse where show = genericShow
instance decodeMergeDeveloperIdentitiesResponse :: Decode MergeDeveloperIdentitiesResponse where decode = genericDecode options
instance encodeMergeDeveloperIdentitiesResponse :: Encode MergeDeveloperIdentitiesResponse where encode = genericEncode options

-- | Constructs MergeDeveloperIdentitiesResponse from required parameters
newMergeDeveloperIdentitiesResponse :: MergeDeveloperIdentitiesResponse
newMergeDeveloperIdentitiesResponse  = MergeDeveloperIdentitiesResponse { "IdentityId": Nothing }

-- | Constructs MergeDeveloperIdentitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMergeDeveloperIdentitiesResponse' :: ( { "IdentityId" :: Maybe (IdentityId) } -> {"IdentityId" :: Maybe (IdentityId) } ) -> MergeDeveloperIdentitiesResponse
newMergeDeveloperIdentitiesResponse'  customize = (MergeDeveloperIdentitiesResponse <<< customize) { "IdentityId": Nothing }



-- | <p>Thrown when a user is not authorized to access the requested resource.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "message" :: Maybe (String)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where decode = genericDecode options
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where encode = genericEncode options

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "message": Nothing }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "message": Nothing }



newtype OIDCProviderList = OIDCProviderList (Array ARNString)
derive instance newtypeOIDCProviderList :: Newtype OIDCProviderList _
derive instance repGenericOIDCProviderList :: Generic OIDCProviderList _
instance showOIDCProviderList :: Show OIDCProviderList where show = genericShow
instance decodeOIDCProviderList :: Decode OIDCProviderList where decode = genericDecode options
instance encodeOIDCProviderList :: Encode OIDCProviderList where encode = genericEncode options



newtype OIDCToken = OIDCToken String
derive instance newtypeOIDCToken :: Newtype OIDCToken _
derive instance repGenericOIDCToken :: Generic OIDCToken _
instance showOIDCToken :: Show OIDCToken where show = genericShow
instance decodeOIDCToken :: Decode OIDCToken where decode = genericDecode options
instance encodeOIDCToken :: Encode OIDCToken where encode = genericEncode options



newtype PaginationKey = PaginationKey String
derive instance newtypePaginationKey :: Newtype PaginationKey _
derive instance repGenericPaginationKey :: Generic PaginationKey _
instance showPaginationKey :: Show PaginationKey where show = genericShow
instance decodePaginationKey :: Decode PaginationKey where decode = genericDecode options
instance encodePaginationKey :: Encode PaginationKey where encode = genericEncode options



newtype QueryLimit = QueryLimit Int
derive instance newtypeQueryLimit :: Newtype QueryLimit _
derive instance repGenericQueryLimit :: Generic QueryLimit _
instance showQueryLimit :: Show QueryLimit where show = genericShow
instance decodeQueryLimit :: Decode QueryLimit where decode = genericDecode options
instance encodeQueryLimit :: Encode QueryLimit where encode = genericEncode options



-- | <p>Thrown when a user tries to use a login which is already linked to another account.</p>
newtype ResourceConflictException = ResourceConflictException 
  { "message" :: Maybe (String)
  }
derive instance newtypeResourceConflictException :: Newtype ResourceConflictException _
derive instance repGenericResourceConflictException :: Generic ResourceConflictException _
instance showResourceConflictException :: Show ResourceConflictException where show = genericShow
instance decodeResourceConflictException :: Decode ResourceConflictException where decode = genericDecode options
instance encodeResourceConflictException :: Encode ResourceConflictException where encode = genericEncode options

-- | Constructs ResourceConflictException from required parameters
newResourceConflictException :: ResourceConflictException
newResourceConflictException  = ResourceConflictException { "message": Nothing }

-- | Constructs ResourceConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceConflictException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ResourceConflictException
newResourceConflictException'  customize = (ResourceConflictException <<< customize) { "message": Nothing }



-- | <p>Thrown when the requested resource (for example, a dataset or record) does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



-- | <p>A role mapping.</p>
newtype RoleMapping = RoleMapping 
  { "Type" :: (RoleMappingType)
  , "AmbiguousRoleResolution" :: Maybe (AmbiguousRoleResolutionType)
  , "RulesConfiguration" :: Maybe (RulesConfigurationType)
  }
derive instance newtypeRoleMapping :: Newtype RoleMapping _
derive instance repGenericRoleMapping :: Generic RoleMapping _
instance showRoleMapping :: Show RoleMapping where show = genericShow
instance decodeRoleMapping :: Decode RoleMapping where decode = genericDecode options
instance encodeRoleMapping :: Encode RoleMapping where encode = genericEncode options

-- | Constructs RoleMapping from required parameters
newRoleMapping :: RoleMappingType -> RoleMapping
newRoleMapping _Type = RoleMapping { "Type": _Type, "AmbiguousRoleResolution": Nothing, "RulesConfiguration": Nothing }

-- | Constructs RoleMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleMapping' :: RoleMappingType -> ( { "Type" :: (RoleMappingType) , "AmbiguousRoleResolution" :: Maybe (AmbiguousRoleResolutionType) , "RulesConfiguration" :: Maybe (RulesConfigurationType) } -> {"Type" :: (RoleMappingType) , "AmbiguousRoleResolution" :: Maybe (AmbiguousRoleResolutionType) , "RulesConfiguration" :: Maybe (RulesConfigurationType) } ) -> RoleMapping
newRoleMapping' _Type customize = (RoleMapping <<< customize) { "Type": _Type, "AmbiguousRoleResolution": Nothing, "RulesConfiguration": Nothing }



newtype RoleMappingMap = RoleMappingMap (StrMap.StrMap RoleMapping)
derive instance newtypeRoleMappingMap :: Newtype RoleMappingMap _
derive instance repGenericRoleMappingMap :: Generic RoleMappingMap _
instance showRoleMappingMap :: Show RoleMappingMap where show = genericShow
instance decodeRoleMappingMap :: Decode RoleMappingMap where decode = genericDecode options
instance encodeRoleMappingMap :: Encode RoleMappingMap where encode = genericEncode options



newtype RoleMappingType = RoleMappingType String
derive instance newtypeRoleMappingType :: Newtype RoleMappingType _
derive instance repGenericRoleMappingType :: Generic RoleMappingType _
instance showRoleMappingType :: Show RoleMappingType where show = genericShow
instance decodeRoleMappingType :: Decode RoleMappingType where decode = genericDecode options
instance encodeRoleMappingType :: Encode RoleMappingType where encode = genericEncode options



newtype RoleType = RoleType String
derive instance newtypeRoleType :: Newtype RoleType _
derive instance repGenericRoleType :: Generic RoleType _
instance showRoleType :: Show RoleType where show = genericShow
instance decodeRoleType :: Decode RoleType where decode = genericDecode options
instance encodeRoleType :: Encode RoleType where encode = genericEncode options



newtype RolesMap = RolesMap (StrMap.StrMap ARNString)
derive instance newtypeRolesMap :: Newtype RolesMap _
derive instance repGenericRolesMap :: Generic RolesMap _
instance showRolesMap :: Show RolesMap where show = genericShow
instance decodeRolesMap :: Decode RolesMap where decode = genericDecode options
instance encodeRolesMap :: Encode RolesMap where encode = genericEncode options



-- | <p>A container for rules.</p>
newtype RulesConfigurationType = RulesConfigurationType 
  { "Rules" :: (MappingRulesList)
  }
derive instance newtypeRulesConfigurationType :: Newtype RulesConfigurationType _
derive instance repGenericRulesConfigurationType :: Generic RulesConfigurationType _
instance showRulesConfigurationType :: Show RulesConfigurationType where show = genericShow
instance decodeRulesConfigurationType :: Decode RulesConfigurationType where decode = genericDecode options
instance encodeRulesConfigurationType :: Encode RulesConfigurationType where encode = genericEncode options

-- | Constructs RulesConfigurationType from required parameters
newRulesConfigurationType :: MappingRulesList -> RulesConfigurationType
newRulesConfigurationType _Rules = RulesConfigurationType { "Rules": _Rules }

-- | Constructs RulesConfigurationType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRulesConfigurationType' :: MappingRulesList -> ( { "Rules" :: (MappingRulesList) } -> {"Rules" :: (MappingRulesList) } ) -> RulesConfigurationType
newRulesConfigurationType' _Rules customize = (RulesConfigurationType <<< customize) { "Rules": _Rules }



newtype SAMLProviderList = SAMLProviderList (Array ARNString)
derive instance newtypeSAMLProviderList :: Newtype SAMLProviderList _
derive instance repGenericSAMLProviderList :: Generic SAMLProviderList _
instance showSAMLProviderList :: Show SAMLProviderList where show = genericShow
instance decodeSAMLProviderList :: Decode SAMLProviderList where decode = genericDecode options
instance encodeSAMLProviderList :: Encode SAMLProviderList where encode = genericEncode options



newtype SecretKeyString = SecretKeyString String
derive instance newtypeSecretKeyString :: Newtype SecretKeyString _
derive instance repGenericSecretKeyString :: Generic SecretKeyString _
instance showSecretKeyString :: Show SecretKeyString where show = genericShow
instance decodeSecretKeyString :: Decode SecretKeyString where decode = genericDecode options
instance encodeSecretKeyString :: Encode SecretKeyString where encode = genericEncode options



newtype SessionTokenString = SessionTokenString String
derive instance newtypeSessionTokenString :: Newtype SessionTokenString _
derive instance repGenericSessionTokenString :: Generic SessionTokenString _
instance showSessionTokenString :: Show SessionTokenString where show = genericShow
instance decodeSessionTokenString :: Decode SessionTokenString where decode = genericDecode options
instance encodeSessionTokenString :: Encode SessionTokenString where encode = genericEncode options



-- | <p>Input to the <code>SetIdentityPoolRoles</code> action.</p>
newtype SetIdentityPoolRolesInput = SetIdentityPoolRolesInput 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "Roles" :: (RolesMap)
  , "RoleMappings" :: Maybe (RoleMappingMap)
  }
derive instance newtypeSetIdentityPoolRolesInput :: Newtype SetIdentityPoolRolesInput _
derive instance repGenericSetIdentityPoolRolesInput :: Generic SetIdentityPoolRolesInput _
instance showSetIdentityPoolRolesInput :: Show SetIdentityPoolRolesInput where show = genericShow
instance decodeSetIdentityPoolRolesInput :: Decode SetIdentityPoolRolesInput where decode = genericDecode options
instance encodeSetIdentityPoolRolesInput :: Encode SetIdentityPoolRolesInput where encode = genericEncode options

-- | Constructs SetIdentityPoolRolesInput from required parameters
newSetIdentityPoolRolesInput :: IdentityPoolId -> RolesMap -> SetIdentityPoolRolesInput
newSetIdentityPoolRolesInput _IdentityPoolId _Roles = SetIdentityPoolRolesInput { "IdentityPoolId": _IdentityPoolId, "Roles": _Roles, "RoleMappings": Nothing }

-- | Constructs SetIdentityPoolRolesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityPoolRolesInput' :: IdentityPoolId -> RolesMap -> ( { "IdentityPoolId" :: (IdentityPoolId) , "Roles" :: (RolesMap) , "RoleMappings" :: Maybe (RoleMappingMap) } -> {"IdentityPoolId" :: (IdentityPoolId) , "Roles" :: (RolesMap) , "RoleMappings" :: Maybe (RoleMappingMap) } ) -> SetIdentityPoolRolesInput
newSetIdentityPoolRolesInput' _IdentityPoolId _Roles customize = (SetIdentityPoolRolesInput <<< customize) { "IdentityPoolId": _IdentityPoolId, "Roles": _Roles, "RoleMappings": Nothing }



newtype TokenDuration = TokenDuration Number
derive instance newtypeTokenDuration :: Newtype TokenDuration _
derive instance repGenericTokenDuration :: Generic TokenDuration _
instance showTokenDuration :: Show TokenDuration where show = genericShow
instance decodeTokenDuration :: Decode TokenDuration where decode = genericDecode options
instance encodeTokenDuration :: Encode TokenDuration where encode = genericEncode options



-- | <p>Thrown when a request is throttled.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "message" :: Maybe (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "message": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "message": Nothing }



-- | <p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>
newtype UnlinkDeveloperIdentityInput = UnlinkDeveloperIdentityInput 
  { "IdentityId" :: (IdentityId)
  , "IdentityPoolId" :: (IdentityPoolId)
  , "DeveloperProviderName" :: (DeveloperProviderName)
  , "DeveloperUserIdentifier" :: (DeveloperUserIdentifier)
  }
derive instance newtypeUnlinkDeveloperIdentityInput :: Newtype UnlinkDeveloperIdentityInput _
derive instance repGenericUnlinkDeveloperIdentityInput :: Generic UnlinkDeveloperIdentityInput _
instance showUnlinkDeveloperIdentityInput :: Show UnlinkDeveloperIdentityInput where show = genericShow
instance decodeUnlinkDeveloperIdentityInput :: Decode UnlinkDeveloperIdentityInput where decode = genericDecode options
instance encodeUnlinkDeveloperIdentityInput :: Encode UnlinkDeveloperIdentityInput where encode = genericEncode options

-- | Constructs UnlinkDeveloperIdentityInput from required parameters
newUnlinkDeveloperIdentityInput :: DeveloperProviderName -> DeveloperUserIdentifier -> IdentityId -> IdentityPoolId -> UnlinkDeveloperIdentityInput
newUnlinkDeveloperIdentityInput _DeveloperProviderName _DeveloperUserIdentifier _IdentityId _IdentityPoolId = UnlinkDeveloperIdentityInput { "DeveloperProviderName": _DeveloperProviderName, "DeveloperUserIdentifier": _DeveloperUserIdentifier, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs UnlinkDeveloperIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnlinkDeveloperIdentityInput' :: DeveloperProviderName -> DeveloperUserIdentifier -> IdentityId -> IdentityPoolId -> ( { "IdentityId" :: (IdentityId) , "IdentityPoolId" :: (IdentityPoolId) , "DeveloperProviderName" :: (DeveloperProviderName) , "DeveloperUserIdentifier" :: (DeveloperUserIdentifier) } -> {"IdentityId" :: (IdentityId) , "IdentityPoolId" :: (IdentityPoolId) , "DeveloperProviderName" :: (DeveloperProviderName) , "DeveloperUserIdentifier" :: (DeveloperUserIdentifier) } ) -> UnlinkDeveloperIdentityInput
newUnlinkDeveloperIdentityInput' _DeveloperProviderName _DeveloperUserIdentifier _IdentityId _IdentityPoolId customize = (UnlinkDeveloperIdentityInput <<< customize) { "DeveloperProviderName": _DeveloperProviderName, "DeveloperUserIdentifier": _DeveloperUserIdentifier, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | <p>Input to the UnlinkIdentity action.</p>
newtype UnlinkIdentityInput = UnlinkIdentityInput 
  { "IdentityId" :: (IdentityId)
  , "Logins" :: (LoginsMap)
  , "LoginsToRemove" :: (LoginsList)
  }
derive instance newtypeUnlinkIdentityInput :: Newtype UnlinkIdentityInput _
derive instance repGenericUnlinkIdentityInput :: Generic UnlinkIdentityInput _
instance showUnlinkIdentityInput :: Show UnlinkIdentityInput where show = genericShow
instance decodeUnlinkIdentityInput :: Decode UnlinkIdentityInput where decode = genericDecode options
instance encodeUnlinkIdentityInput :: Encode UnlinkIdentityInput where encode = genericEncode options

-- | Constructs UnlinkIdentityInput from required parameters
newUnlinkIdentityInput :: IdentityId -> LoginsMap -> LoginsList -> UnlinkIdentityInput
newUnlinkIdentityInput _IdentityId _Logins _LoginsToRemove = UnlinkIdentityInput { "IdentityId": _IdentityId, "Logins": _Logins, "LoginsToRemove": _LoginsToRemove }

-- | Constructs UnlinkIdentityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnlinkIdentityInput' :: IdentityId -> LoginsMap -> LoginsList -> ( { "IdentityId" :: (IdentityId) , "Logins" :: (LoginsMap) , "LoginsToRemove" :: (LoginsList) } -> {"IdentityId" :: (IdentityId) , "Logins" :: (LoginsMap) , "LoginsToRemove" :: (LoginsList) } ) -> UnlinkIdentityInput
newUnlinkIdentityInput' _IdentityId _Logins _LoginsToRemove customize = (UnlinkIdentityInput <<< customize) { "IdentityId": _IdentityId, "Logins": _Logins, "LoginsToRemove": _LoginsToRemove }



-- | <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>
newtype UnprocessedIdentityId = UnprocessedIdentityId 
  { "IdentityId" :: Maybe (IdentityId)
  , "ErrorCode" :: Maybe (ErrorCode)
  }
derive instance newtypeUnprocessedIdentityId :: Newtype UnprocessedIdentityId _
derive instance repGenericUnprocessedIdentityId :: Generic UnprocessedIdentityId _
instance showUnprocessedIdentityId :: Show UnprocessedIdentityId where show = genericShow
instance decodeUnprocessedIdentityId :: Decode UnprocessedIdentityId where decode = genericDecode options
instance encodeUnprocessedIdentityId :: Encode UnprocessedIdentityId where encode = genericEncode options

-- | Constructs UnprocessedIdentityId from required parameters
newUnprocessedIdentityId :: UnprocessedIdentityId
newUnprocessedIdentityId  = UnprocessedIdentityId { "ErrorCode": Nothing, "IdentityId": Nothing }

-- | Constructs UnprocessedIdentityId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedIdentityId' :: ( { "IdentityId" :: Maybe (IdentityId) , "ErrorCode" :: Maybe (ErrorCode) } -> {"IdentityId" :: Maybe (IdentityId) , "ErrorCode" :: Maybe (ErrorCode) } ) -> UnprocessedIdentityId
newUnprocessedIdentityId'  customize = (UnprocessedIdentityId <<< customize) { "ErrorCode": Nothing, "IdentityId": Nothing }



newtype UnprocessedIdentityIdList = UnprocessedIdentityIdList (Array UnprocessedIdentityId)
derive instance newtypeUnprocessedIdentityIdList :: Newtype UnprocessedIdentityIdList _
derive instance repGenericUnprocessedIdentityIdList :: Generic UnprocessedIdentityIdList _
instance showUnprocessedIdentityIdList :: Show UnprocessedIdentityIdList where show = genericShow
instance decodeUnprocessedIdentityIdList :: Decode UnprocessedIdentityIdList where decode = genericDecode options
instance encodeUnprocessedIdentityIdList :: Encode UnprocessedIdentityIdList where encode = genericEncode options

