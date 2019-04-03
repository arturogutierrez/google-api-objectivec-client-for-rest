// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Identity and Access Management (IAM) API (iam/v1)
// Description:
//   Manages identity and access control for Google Cloud Platform resources,
//   including the creation of service accounts, which you can use to
//   authenticate to Google and make API calls.
// Documentation:
//   https://cloud.google.com/iam/

#import "GTLRIamObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRIam_AuditLogConfig.logType
NSString * const kGTLRIam_AuditLogConfig_LogType_AdminRead     = @"ADMIN_READ";
NSString * const kGTLRIam_AuditLogConfig_LogType_DataRead      = @"DATA_READ";
NSString * const kGTLRIam_AuditLogConfig_LogType_DataWrite     = @"DATA_WRITE";
NSString * const kGTLRIam_AuditLogConfig_LogType_LogTypeUnspecified = @"LOG_TYPE_UNSPECIFIED";

// GTLRIam_BindingDelta.action
NSString * const kGTLRIam_BindingDelta_Action_ActionUnspecified = @"ACTION_UNSPECIFIED";
NSString * const kGTLRIam_BindingDelta_Action_Add              = @"ADD";
NSString * const kGTLRIam_BindingDelta_Action_Remove           = @"REMOVE";

// GTLRIam_CreateServiceAccountKeyRequest.keyAlgorithm
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_KeyAlgorithm_KeyAlgRsa1024 = @"KEY_ALG_RSA_1024";
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_KeyAlgorithm_KeyAlgRsa2048 = @"KEY_ALG_RSA_2048";
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_KeyAlgorithm_KeyAlgUnspecified = @"KEY_ALG_UNSPECIFIED";

// GTLRIam_CreateServiceAccountKeyRequest.privateKeyType
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_PrivateKeyType_TypeGoogleCredentialsFile = @"TYPE_GOOGLE_CREDENTIALS_FILE";
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_PrivateKeyType_TypePkcs12File = @"TYPE_PKCS12_FILE";
NSString * const kGTLRIam_CreateServiceAccountKeyRequest_PrivateKeyType_TypeUnspecified = @"TYPE_UNSPECIFIED";

// GTLRIam_LintResult.level
NSString * const kGTLRIam_LintResult_Level_Binding          = @"BINDING";
NSString * const kGTLRIam_LintResult_Level_Condition        = @"CONDITION";
NSString * const kGTLRIam_LintResult_Level_LevelUnspecified = @"LEVEL_UNSPECIFIED";
NSString * const kGTLRIam_LintResult_Level_Policy           = @"POLICY";

// GTLRIam_LintResult.severity
NSString * const kGTLRIam_LintResult_Severity_Deprecated       = @"DEPRECATED";
NSString * const kGTLRIam_LintResult_Severity_Error            = @"ERROR";
NSString * const kGTLRIam_LintResult_Severity_Info             = @"INFO";
NSString * const kGTLRIam_LintResult_Severity_Notice           = @"NOTICE";
NSString * const kGTLRIam_LintResult_Severity_SeverityUnspecified = @"SEVERITY_UNSPECIFIED";
NSString * const kGTLRIam_LintResult_Severity_Warning          = @"WARNING";

// GTLRIam_Permission.customRolesSupportLevel
NSString * const kGTLRIam_Permission_CustomRolesSupportLevel_NotSupported = @"NOT_SUPPORTED";
NSString * const kGTLRIam_Permission_CustomRolesSupportLevel_Supported = @"SUPPORTED";
NSString * const kGTLRIam_Permission_CustomRolesSupportLevel_Testing = @"TESTING";

// GTLRIam_Permission.stage
NSString * const kGTLRIam_Permission_Stage_Alpha      = @"ALPHA";
NSString * const kGTLRIam_Permission_Stage_Beta       = @"BETA";
NSString * const kGTLRIam_Permission_Stage_Deprecated = @"DEPRECATED";
NSString * const kGTLRIam_Permission_Stage_Ga         = @"GA";

// GTLRIam_QueryGrantableRolesRequest.view
NSString * const kGTLRIam_QueryGrantableRolesRequest_View_Basic = @"BASIC";
NSString * const kGTLRIam_QueryGrantableRolesRequest_View_Full = @"FULL";

// GTLRIam_Role.stage
NSString * const kGTLRIam_Role_Stage_Alpha      = @"ALPHA";
NSString * const kGTLRIam_Role_Stage_Beta       = @"BETA";
NSString * const kGTLRIam_Role_Stage_Deprecated = @"DEPRECATED";
NSString * const kGTLRIam_Role_Stage_Disabled   = @"DISABLED";
NSString * const kGTLRIam_Role_Stage_Eap        = @"EAP";
NSString * const kGTLRIam_Role_Stage_Ga         = @"GA";

// GTLRIam_ServiceAccountKey.keyAlgorithm
NSString * const kGTLRIam_ServiceAccountKey_KeyAlgorithm_KeyAlgRsa1024 = @"KEY_ALG_RSA_1024";
NSString * const kGTLRIam_ServiceAccountKey_KeyAlgorithm_KeyAlgRsa2048 = @"KEY_ALG_RSA_2048";
NSString * const kGTLRIam_ServiceAccountKey_KeyAlgorithm_KeyAlgUnspecified = @"KEY_ALG_UNSPECIFIED";

// GTLRIam_ServiceAccountKey.privateKeyType
NSString * const kGTLRIam_ServiceAccountKey_PrivateKeyType_TypeGoogleCredentialsFile = @"TYPE_GOOGLE_CREDENTIALS_FILE";
NSString * const kGTLRIam_ServiceAccountKey_PrivateKeyType_TypePkcs12File = @"TYPE_PKCS12_FILE";
NSString * const kGTLRIam_ServiceAccountKey_PrivateKeyType_TypeUnspecified = @"TYPE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRIam_AuditableService
//

@implementation GTLRIam_AuditableService
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_AuditConfig
//

@implementation GTLRIam_AuditConfig
@dynamic auditLogConfigs, service;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditLogConfigs" : [GTLRIam_AuditLogConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_AuditData
//

@implementation GTLRIam_AuditData
@dynamic policyDelta;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_AuditLogConfig
//

@implementation GTLRIam_AuditLogConfig
@dynamic exemptedMembers, logType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"exemptedMembers" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Binding
//

@implementation GTLRIam_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_BindingDelta
//

@implementation GTLRIam_BindingDelta
@dynamic action, condition, member, role;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_CreateRoleRequest
//

@implementation GTLRIam_CreateRoleRequest
@dynamic role, roleId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_CreateServiceAccountKeyRequest
//

@implementation GTLRIam_CreateServiceAccountKeyRequest
@dynamic keyAlgorithm, privateKeyType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_CreateServiceAccountRequest
//

@implementation GTLRIam_CreateServiceAccountRequest
@dynamic accountId, serviceAccount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_DisableServiceAccountRequest
//

@implementation GTLRIam_DisableServiceAccountRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Empty
//

@implementation GTLRIam_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_EnableServiceAccountRequest
//

@implementation GTLRIam_EnableServiceAccountRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Expr
//

@implementation GTLRIam_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_LintPolicyRequest
//

@implementation GTLRIam_LintPolicyRequest
@dynamic binding, condition, context, fullResourceName, policy;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_LintPolicyRequest_Context
//

@implementation GTLRIam_LintPolicyRequest_Context

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_LintPolicyResponse
//

@implementation GTLRIam_LintPolicyResponse
@dynamic lintResults;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"lintResults" : [GTLRIam_LintResult class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_LintResult
//

@implementation GTLRIam_LintResult
@dynamic bindingOrdinal, debugMessage, fieldName, level, locationOffset,
         severity, validationUnitName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_ListRolesResponse
//

@implementation GTLRIam_ListRolesResponse
@dynamic nextPageToken, roles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"roles" : [GTLRIam_Role class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"roles";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_ListServiceAccountKeysResponse
//

@implementation GTLRIam_ListServiceAccountKeysResponse
@dynamic keys;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"keys" : [GTLRIam_ServiceAccountKey class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_ListServiceAccountsResponse
//

@implementation GTLRIam_ListServiceAccountsResponse
@dynamic accounts, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accounts" : [GTLRIam_ServiceAccount class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"accounts";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_PatchServiceAccountRequest
//

@implementation GTLRIam_PatchServiceAccountRequest
@dynamic serviceAccount, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Permission
//

@implementation GTLRIam_Permission
@dynamic apiDisabled, customRolesSupportLevel, descriptionProperty, name,
         onlyInPredefinedRoles, stage, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Policy
//

@implementation GTLRIam_Policy
@dynamic auditConfigs, bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditConfigs" : [GTLRIam_AuditConfig class],
    @"bindings" : [GTLRIam_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_PolicyDelta
//

@implementation GTLRIam_PolicyDelta
@dynamic bindingDeltas;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bindingDeltas" : [GTLRIam_BindingDelta class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryAuditableServicesRequest
//

@implementation GTLRIam_QueryAuditableServicesRequest
@dynamic fullResourceName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryAuditableServicesResponse
//

@implementation GTLRIam_QueryAuditableServicesResponse
@dynamic services;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"services" : [GTLRIam_AuditableService class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryGrantableRolesRequest
//

@implementation GTLRIam_QueryGrantableRolesRequest
@dynamic fullResourceName, pageSize, pageToken, view;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryGrantableRolesResponse
//

@implementation GTLRIam_QueryGrantableRolesResponse
@dynamic nextPageToken, roles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"roles" : [GTLRIam_Role class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"roles";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryTestablePermissionsRequest
//

@implementation GTLRIam_QueryTestablePermissionsRequest
@dynamic fullResourceName, pageSize, pageToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_QueryTestablePermissionsResponse
//

@implementation GTLRIam_QueryTestablePermissionsResponse
@dynamic nextPageToken, permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [GTLRIam_Permission class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"permissions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_Role
//

@implementation GTLRIam_Role
@dynamic deleted, descriptionProperty, ETag, includedPermissions, name, stage,
         title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"ETag" : @"etag"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"includedPermissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_ServiceAccount
//

@implementation GTLRIam_ServiceAccount
@dynamic descriptionProperty, disabled, displayName, email, ETag, name,
         oauth2ClientId, projectId, uniqueId;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"ETag" : @"etag"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_ServiceAccountKey
//

@implementation GTLRIam_ServiceAccountKey
@dynamic keyAlgorithm, name, privateKeyData, privateKeyType, publicKeyData,
         validAfterTime, validBeforeTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_SetIamPolicyRequest
//

@implementation GTLRIam_SetIamPolicyRequest
@dynamic policy, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_SignBlobRequest
//

@implementation GTLRIam_SignBlobRequest
@dynamic bytesToSign;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_SignBlobResponse
//

@implementation GTLRIam_SignBlobResponse
@dynamic keyId, signature;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_SignJwtRequest
//

@implementation GTLRIam_SignJwtRequest
@dynamic payload;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_SignJwtResponse
//

@implementation GTLRIam_SignJwtResponse
@dynamic keyId, signedJwt;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_TestIamPermissionsRequest
//

@implementation GTLRIam_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_TestIamPermissionsResponse
//

@implementation GTLRIam_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_UndeleteRoleRequest
//

@implementation GTLRIam_UndeleteRoleRequest
@dynamic ETag;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_UndeleteServiceAccountRequest
//

@implementation GTLRIam_UndeleteServiceAccountRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRIam_UndeleteServiceAccountResponse
//

@implementation GTLRIam_UndeleteServiceAccountResponse
@dynamic restoredAccount;
@end
