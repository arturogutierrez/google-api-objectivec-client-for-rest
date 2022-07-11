// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Chrome Policy API (chromepolicy/v1)
// Description:
//   The Chrome Policy API is a suite of services that allows Chrome
//   administrators to control the policies applied to their managed Chrome OS
//   devices and Chrome browsers.
// Documentation:
//   http://developers.google.com/chrome/policy

#import <GoogleAPIClientForREST/GTLRChromePolicyObjects.h>

// ----------------------------------------------------------------------------
// Constants

// GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle.policyApiLifecycleStage
NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiCurrent = @"API_CURRENT";
NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDeprecated = @"API_DEPRECATED";
NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDevelopment = @"API_DEVELOPMENT";
NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiPreview = @"API_PREVIEW";
NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiUnspecified = @"API_UNSPECIFIED";

// GTLRChromePolicy_GoogleChromePolicyV1PolicySchema.validTargetResources
NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_Group = @"GROUP";
NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_OrgUnit = @"ORG_UNIT";
NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_TargetResourceUnspecified = @"TARGET_RESOURCE_UNSPECIFIED";

// GTLRChromePolicy_Proto2FieldDescriptorProto.label
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelOptional = @"LABEL_OPTIONAL";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRepeated = @"LABEL_REPEATED";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRequired = @"LABEL_REQUIRED";

// GTLRChromePolicy_Proto2FieldDescriptorProto.type
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBool = @"TYPE_BOOL";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBytes = @"TYPE_BYTES";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeDouble = @"TYPE_DOUBLE";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeEnum = @"TYPE_ENUM";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed32 = @"TYPE_FIXED32";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed64 = @"TYPE_FIXED64";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFloat = @"TYPE_FLOAT";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeGroup = @"TYPE_GROUP";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt32 = @"TYPE_INT32";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt64 = @"TYPE_INT64";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeMessage = @"TYPE_MESSAGE";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed32 = @"TYPE_SFIXED32";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed64 = @"TYPE_SFIXED64";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint32 = @"TYPE_SINT32";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint64 = @"TYPE_SINT64";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeString = @"TYPE_STRING";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint32 = @"TYPE_UINT32";
NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint64 = @"TYPE_UINT64";

// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle
//

@implementation GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle
@dynamic descriptionProperty, endSupport, policyApiLifecycleStage;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName
@dynamic key, keyDescription;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
@dynamic requests;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"requests" : [GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
@dynamic requests;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"requests" : [GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest
@dynamic policySchema, policyTargetKey;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1ListPolicySchemasResponse
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1ListPolicySchemasResponse
@dynamic nextPageToken, policySchemas;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"policySchemas" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchema class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"policySchemas";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
@dynamic policyTargetKey, policyValue, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchema
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchema
@dynamic accessRestrictions, additionalTargetKeyNames, definition,
         fieldDescriptions, name, notices, policyApiLifeycle, policyDescription,
         schemaName, supportUri, validTargetResources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accessRestrictions" : [NSString class],
    @"additionalTargetKeyNames" : [GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName class],
    @"fieldDescriptions" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription class],
    @"notices" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription class],
    @"validTargetResources" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies
@dynamic sourceField, sourceFieldValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription
@dynamic descriptionProperty, field, fieldDependencies, inputConstraint,
         knownValueDescriptions, nestedFieldDescriptions, requiredItems;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"fieldDependencies" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies class],
    @"knownValueDescriptions" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription class],
    @"nestedFieldDescriptions" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription class],
    @"requiredItems" : [GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
@dynamic descriptionProperty, value;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription
@dynamic acknowledgementRequired, field, noticeMessage, noticeValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems
@dynamic fieldConditions, requiredFields;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"fieldConditions" : [NSString class],
    @"requiredFields" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey
@dynamic additionalTargetKeys, targetResource;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey_AdditionalTargetKeys
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey_AdditionalTargetKeys

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicyValue
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicyValue
@dynamic policySchema, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1PolicyValue_Value
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1PolicyValue_Value

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy
@dynamic addedSourceKey, sourceKey, targetKey, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1ResolveRequest
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1ResolveRequest
@dynamic pageSize, pageToken, policySchemaFilter, policyTargetKey;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleChromePolicyV1ResolveResponse
//

@implementation GTLRChromePolicy_GoogleChromePolicyV1ResolveResponse
@dynamic nextPageToken, resolvedPolicies;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resolvedPolicies" : [GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resolvedPolicies";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleProtobufEmpty
//

@implementation GTLRChromePolicy_GoogleProtobufEmpty
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_GoogleTypeDate
//

@implementation GTLRChromePolicy_GoogleTypeDate
@dynamic day, month, year;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2DescriptorProto
//

@implementation GTLRChromePolicy_Proto2DescriptorProto
@dynamic enumType, field, name, nestedType, oneofDecl;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"enumType" : [GTLRChromePolicy_Proto2EnumDescriptorProto class],
    @"field" : [GTLRChromePolicy_Proto2FieldDescriptorProto class],
    @"nestedType" : [GTLRChromePolicy_Proto2DescriptorProto class],
    @"oneofDecl" : [GTLRChromePolicy_Proto2OneofDescriptorProto class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2EnumDescriptorProto
//

@implementation GTLRChromePolicy_Proto2EnumDescriptorProto
@dynamic name, value;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"value" : [GTLRChromePolicy_Proto2EnumValueDescriptorProto class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2EnumValueDescriptorProto
//

@implementation GTLRChromePolicy_Proto2EnumValueDescriptorProto
@dynamic name, number;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2FieldDescriptorProto
//

@implementation GTLRChromePolicy_Proto2FieldDescriptorProto
@dynamic defaultValue, jsonName, label, name, number, oneofIndex,
         proto3Optional, type, typeName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2FileDescriptorProto
//

@implementation GTLRChromePolicy_Proto2FileDescriptorProto
@dynamic enumType, messageType, name, package, syntax;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"enumType" : [GTLRChromePolicy_Proto2EnumDescriptorProto class],
    @"messageType" : [GTLRChromePolicy_Proto2DescriptorProto class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromePolicy_Proto2OneofDescriptorProto
//

@implementation GTLRChromePolicy_Proto2OneofDescriptorProto
@dynamic name;
@end
