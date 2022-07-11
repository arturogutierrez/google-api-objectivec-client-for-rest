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

#import <GoogleAPIClientForREST/GTLRObject.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle;
@class GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName;
@class GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest;
@class GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchema;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey_AdditionalTargetKeys;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicyValue;
@class GTLRChromePolicy_GoogleChromePolicyV1PolicyValue_Value;
@class GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy;
@class GTLRChromePolicy_GoogleTypeDate;
@class GTLRChromePolicy_Proto2DescriptorProto;
@class GTLRChromePolicy_Proto2EnumDescriptorProto;
@class GTLRChromePolicy_Proto2EnumValueDescriptorProto;
@class GTLRChromePolicy_Proto2FieldDescriptorProto;
@class GTLRChromePolicy_Proto2FileDescriptorProto;
@class GTLRChromePolicy_Proto2OneofDescriptorProto;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle.policyApiLifecycleStage

/**
 *  Policy in official format. Policy can change format in backward compatible
 *  way (non-breaking change). Example: this policy can introduce a new field,
 *  which is considered non-breaking change, when field masks are properly
 *  utilized. This stage can transfer to API_DEPRECATED.
 *
 *  Value: "API_CURRENT"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiCurrent;
/**
 *  Please stop using this policy. This policy is deprecated and may/will be
 *  removed in the future. Most likely a new policy was introduced to replace
 *  this one.
 *
 *  Value: "API_DEPRECATED"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDeprecated;
/**
 *  Policy can change format in backward incompatible way (breaking change).
 *  This stage can transfer to API_CURRENT or API_DEPRECATED. This could be used
 *  for policies launched only to TTs or launched to selected customers for
 *  emergency usage.
 *
 *  Value: "API_DEVELOPMENT"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDevelopment;
/**
 *  Policy is not working yet, but giving developers heads up on format. This
 *  stage can transfer to API_DEVELOPEMNT or API_CURRENT.
 *
 *  Value: "API_PREVIEW"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiPreview;
/**
 *  unspecified.
 *
 *  Value: "API_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiUnspecified;

// ----------------------------------------------------------------------------
// GTLRChromePolicy_GoogleChromePolicyV1PolicySchema.validTargetResources

/**
 *  Group target resource.
 *
 *  Value: "GROUP"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_Group;
/**
 *  Organizational Unit target resource.
 *
 *  Value: "ORG_UNIT"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_OrgUnit;
/**
 *  Unspecified target resource.
 *
 *  Value: "TARGET_RESOURCE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_GoogleChromePolicyV1PolicySchema_ValidTargetResources_TargetResourceUnspecified;

// ----------------------------------------------------------------------------
// GTLRChromePolicy_Proto2FieldDescriptorProto.label

/**
 *  0 is reserved for errors
 *
 *  Value: "LABEL_OPTIONAL"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelOptional;
/** Value: "LABEL_REPEATED" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRepeated;
/** Value: "LABEL_REQUIRED" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRequired;

// ----------------------------------------------------------------------------
// GTLRChromePolicy_Proto2FieldDescriptorProto.type

/** Value: "TYPE_BOOL" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBool;
/**
 *  New in version 2.
 *
 *  Value: "TYPE_BYTES"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBytes;
/**
 *  0 is reserved for errors. Order is weird for historical reasons.
 *
 *  Value: "TYPE_DOUBLE"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeDouble;
/** Value: "TYPE_ENUM" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeEnum;
/** Value: "TYPE_FIXED32" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed32;
/** Value: "TYPE_FIXED64" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed64;
/** Value: "TYPE_FLOAT" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFloat;
/**
 *  Tag-delimited aggregate. Group type is deprecated and not supported in
 *  proto3. However, Proto3 implementations should still be able to parse the
 *  group wire format and treat group fields as unknown fields.
 *
 *  Value: "TYPE_GROUP"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeGroup;
/**
 *  Not ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT32 if
 *  negative values are likely.
 *
 *  Value: "TYPE_INT32"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt32;
/**
 *  Not ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT64 if
 *  negative values are likely.
 *
 *  Value: "TYPE_INT64"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt64;
/**
 *  Length-delimited aggregate.
 *
 *  Value: "TYPE_MESSAGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeMessage;
/** Value: "TYPE_SFIXED32" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed32;
/** Value: "TYPE_SFIXED64" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed64;
/**
 *  Uses ZigZag encoding.
 *
 *  Value: "TYPE_SINT32"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint32;
/**
 *  Uses ZigZag encoding.
 *
 *  Value: "TYPE_SINT64"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint64;
/** Value: "TYPE_STRING" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeString;
/** Value: "TYPE_UINT32" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint32;
/** Value: "TYPE_UINT64" */
FOUNDATION_EXTERN NSString * const kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint64;

/**
 *  GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle
 */
@interface GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle : GTLRObject

/**
 *  Description about current life cycle.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/** End supporting date for current policy. */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleTypeDate *endSupport;

/**
 *  Indicate current life cycle stage of the policy API.
 *
 *  Likely values:
 *    @arg @c kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiCurrent
 *        Policy in official format. Policy can change format in backward
 *        compatible way (non-breaking change). Example: this policy can
 *        introduce a new field, which is considered non-breaking change, when
 *        field masks are properly utilized. This stage can transfer to
 *        API_DEPRECATED. (Value: "API_CURRENT")
 *    @arg @c kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDeprecated
 *        Please stop using this policy. This policy is deprecated and may/will
 *        be removed in the future. Most likely a new policy was introduced to
 *        replace this one. (Value: "API_DEPRECATED")
 *    @arg @c kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiDevelopment
 *        Policy can change format in backward incompatible way (breaking
 *        change). This stage can transfer to API_CURRENT or API_DEPRECATED.
 *        This could be used for policies launched only to TTs or launched to
 *        selected customers for emergency usage. (Value: "API_DEVELOPMENT")
 *    @arg @c kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiPreview
 *        Policy is not working yet, but giving developers heads up on format.
 *        This stage can transfer to API_DEVELOPEMNT or API_CURRENT. (Value:
 *        "API_PREVIEW")
 *    @arg @c kGTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle_PolicyApiLifecycleStage_ApiUnspecified
 *        unspecified. (Value: "API_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *policyApiLifecycleStage;

@end


/**
 *  Additional key names that will be used to identify the target of the policy
 *  value.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName : GTLRObject

/** Key name. */
@property(nonatomic, copy, nullable) NSString *key;

/** Key description. */
@property(nonatomic, copy, nullable) NSString *keyDescription;

@end


/**
 *  Request message for specifying that multiple policy values inherit their
 *  value from their parents.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest : GTLRObject

/**
 *  List of policies that have to inherit their values as defined by the
 *  `requests`. All requests in the list must follow these restrictions: 1. All
 *  schemas in the list must have the same root namespace. 2. All
 *  `policyTargetKey.targetResource` values must point to an org unit resource.
 *  3. All `policyTargetKey` values must have the same key names in the `
 *  additionalTargetKeys`. This also means if one of the targets has an empty
 *  `additionalTargetKeys` map, all of the targets must have an empty
 *  `additionalTargetKeys` map. 4. No two modification requests can reference
 *  the same `policySchema` + ` policyTargetKey` pair.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest *> *requests;

@end


/**
 *  Request message for modifying multiple policy values for a specific target.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest : GTLRObject

/**
 *  List of policies to modify as defined by the `requests`. All requests in the
 *  list must follow these restrictions: 1. All schemas in the list must have
 *  the same root namespace. 2. All `policyTargetKey.targetResource` values must
 *  point to an org unit resource. 3. All `policyTargetKey` values must have the
 *  same key names in the ` additionalTargetKeys`. This also means if one of the
 *  targets has an empty `additionalTargetKeys` map, all of the targets must
 *  have an empty `additionalTargetKeys` map. 4. No two modification requests
 *  can reference the same `policySchema` + ` policyTargetKey` pair.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest *> *requests;

@end


/**
 *  Request parameters for inheriting policy value of a specific org unit target
 *  from the policy value of its parent org unit.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1InheritOrgUnitPolicyRequest : GTLRObject

/** The fully qualified name of the policy schema that is being inherited. */
@property(nonatomic, copy, nullable) NSString *policySchema;

/**
 *  Required. The key of the target for which we want to modify a policy. The
 *  target resource must point to an Org Unit.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *policyTargetKey;

@end


/**
 *  Response message for listing policy schemas that match a filter.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "policySchemas" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1ListPolicySchemasResponse : GTLRCollectionObject

/** The page token used to get the next page of policy schemas. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The list of policy schemas that match the query.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchema *> *policySchemas;

@end


/**
 *  Request parameters for modifying a policy value for a specific org unit
 *  target.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1ModifyOrgUnitPolicyRequest : GTLRObject

/**
 *  Required. The key of the target for which we want to modify a policy. The
 *  target resource must point to an Org Unit.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *policyTargetKey;

/** The new value for the policy. */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyValue *policyValue;

/**
 *  Required. Policy fields to update. Only fields in this mask will be updated;
 *  other fields in `policy_value` will be ignored (even if they have values).
 *  If a field is in this list it must have a value in 'policy_value'.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

@end


/**
 *  Resource representing a policy schema. Next ID: 12
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchema : GTLRObject

/** Output only. Specific access restrictions related to this policy. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *accessRestrictions;

/**
 *  Output only. Additional key names that will be used to identify the target
 *  of the policy value. When specifying a `policyTargetKey`, each of the
 *  additional keys specified here will have to be included in the
 *  `additionalTargetKeys` map.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1AdditionalTargetKeyName *> *additionalTargetKeyNames;

/** Schema definition using proto descriptor. */
@property(nonatomic, strong, nullable) GTLRChromePolicy_Proto2FileDescriptorProto *definition;

/**
 *  Output only. Detailed description of each field that is part of the schema.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription *> *fieldDescriptions;

/** Format: name=customers/{customer}/policySchemas/{schema_namespace} */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Output only. Special notice messages related to setting certain values in
 *  certain fields in the schema.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription *> *notices;

/** Output only. Current life cycle information. */
@property(nonatomic, strong, nullable) GTLRChromePolicy_ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle *policyApiLifeycle;

/** Output only. Description about the policy schema for user consumption. */
@property(nonatomic, copy, nullable) NSString *policyDescription;

/**
 *  Output only. The fully qualified name of the policy schema. This value is
 *  used to fill the field `policy_schema` in PolicyValue when calling
 *  BatchInheritOrgUnitPolicies or BatchModifyOrgUnitPolicies
 */
@property(nonatomic, copy, nullable) NSString *schemaName;

/** Output only. URI to related support article for this schema. */
@property(nonatomic, copy, nullable) NSString *supportUri;

/**
 *  Output only. Information about applicable target resources for the policy.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *validTargetResources;

@end


/**
 *  The field and the value it must have for another field to be allowed to be
 *  set.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies : GTLRObject

/** The source field which this field depends on. */
@property(nonatomic, copy, nullable) NSString *sourceField;

/**
 *  The value which the source field must have for this field to be allowed to
 *  be set.
 */
@property(nonatomic, copy, nullable) NSString *sourceFieldValue;

@end


/**
 *  Provides detailed information for a particular field that is part of a
 *  PolicySchema.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription : GTLRObject

/**
 *  Output only. The description for the field.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Output only. The name of the field for associated with this description.
 */
@property(nonatomic, copy, nullable) NSString *field;

/**
 *  Output only. Provides a list of fields and values. At least one of the
 *  fields must have the corresponding value in order for this field to be
 *  allowed to be set.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDependencies *> *fieldDependencies;

/**
 *  Output only. Any input constraints associated on the values for the field.
 */
@property(nonatomic, copy, nullable) NSString *inputConstraint;

/**
 *  Output only. If the field has a set of known values, this field will provide
 *  a description for these values.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription *> *knownValueDescriptions;

/**
 *  Output only. Provides the description of the fields nested in this field, if
 *  the field is a message type that defines multiple fields.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldDescription *> *nestedFieldDescriptions;

/**
 *  Output only. Provides a list of fields that are required to be set if this
 *  field has a certain value.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems *> *requiredItems;

@end


/**
 *  Provides detailed information about a known value that is allowed for a
 *  particular field in a PolicySchema.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription : GTLRObject

/**
 *  Output only. Additional description for this value.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Output only. The string represenstation of the value that can be set for the
 *  field.
 */
@property(nonatomic, copy, nullable) NSString *value;

@end


/**
 *  Provides special notice messages related to a particular value in a field
 *  that is part of a PolicySchema.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaNoticeDescription : GTLRObject

/**
 *  Output only. Whether the user needs to acknowledge the notice message before
 *  the value can be set.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *acknowledgementRequired;

/** Output only. The field name associated with the notice. */
@property(nonatomic, copy, nullable) NSString *field;

/** Output only. The notice message associate with the value of the field. */
@property(nonatomic, copy, nullable) NSString *noticeMessage;

/**
 *  Output only. The value of the field that has a notice. When setting the
 *  field to this value, the user may be required to acknowledge the notice
 *  message in order for the value to be set.
 */
@property(nonatomic, copy, nullable) NSString *noticeValue;

@end


/**
 *  The fields that will become required based on the value of this field.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicySchemaRequiredItems : GTLRObject

/**
 *  The value(s) of the field that provoke required field enforcement. An empty
 *  field_conditions implies that any value assigned to this field will provoke
 *  required field enforcement.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *fieldConditions;

/** The fields that are required as a consequence of the field conditions. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *requiredFields;

@end


/**
 *  The key used to identify the target on which the policy will be applied.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey : GTLRObject

/**
 *  Map containing the additional target key name and value pairs used to
 *  further identify the target of the policy.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey_AdditionalTargetKeys *additionalTargetKeys;

/**
 *  The target resource on which this policy is applied. The following resources
 *  are supported: * Organizational Unit ("orgunits/{orgunit_id}")
 */
@property(nonatomic, copy, nullable) NSString *targetResource;

@end


/**
 *  Map containing the additional target key name and value pairs used to
 *  further identify the target of the policy.
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey_AdditionalTargetKeys : GTLRObject
@end


/**
 *  A particular value for a policy managed by the service.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicyValue : GTLRObject

/**
 *  The fully qualified name of the policy schema associated with this policy.
 */
@property(nonatomic, copy, nullable) NSString *policySchema;

/**
 *  The value of the policy that is compatible with the schema that it is
 *  associated with.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyValue_Value *value;

@end


/**
 *  The value of the policy that is compatible with the schema that it is
 *  associated with.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1PolicyValue_Value : GTLRObject
@end


/**
 *  The resolved value of a policy for a given target.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy : GTLRObject

/**
 *  Output only. The added source key establishes at which level an entity was
 *  explicitly added for management. This is useful for certain type of policies
 *  that are only applied if they are explicitly added for management. For
 *  example: apps and networks. An entity can only be deleted from management in
 *  an Organizational Unit that it was explicitly added to. If this is not
 *  present it means that the policy is managed without the need to explicitly
 *  add an entity, for example: standard user or device policies.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *addedSourceKey;

/**
 *  Output only. The source resource from which this policy value is obtained.
 *  May be the same as `targetKey` if the policy is directly modified on the
 *  target, otherwise it would be another resource from which the policy gets
 *  its value (if applicable). If not present, the source is the default value
 *  for the customer.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *sourceKey;

/**
 *  Output only. The target resource for which the resolved policy value
 *  applies.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *targetKey;

/** Output only. The resolved value of the policy. */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyValue *value;

@end


/**
 *  Request message for getting the resolved policy value for a specific target.
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1ResolveRequest : GTLRObject

/**
 *  The maximum number of policies to return, defaults to 100 and has a maximum
 *  of 1000.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *pageSize;

/** The page token used to retrieve a specific page of the request. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  The schema filter to apply to the resolve request. Specify a schema name to
 *  view a particular schema, for example: chrome.users.ShowLogoutButton
 *  Wildcards are supported, but only in the leaf portion of the schema name.
 *  Wildcards cannot be used in namespace directly. Please read
 *  https://developers.google.com/chrome/policy/guides/policy-schemas for
 *  details on schema namepsaces. For example: Valid: "chrome.users.*",
 *  "chrome.users.apps.*", "chrome.printers.*" Invalid: "*", "*.users",
 *  "chrome.*", "chrome.*.apps.*"
 */
@property(nonatomic, copy, nullable) NSString *policySchemaFilter;

/**
 *  Required. The key of the target resource on which the policies should be
 *  resolved. The target resource must point to an Org Unit.
 */
@property(nonatomic, strong, nullable) GTLRChromePolicy_GoogleChromePolicyV1PolicyTargetKey *policyTargetKey;

@end


/**
 *  Response message for getting the resolved policy value for a specific
 *  target.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "resolvedPolicies" property. If returned as the result of a query,
 *        it should support automatic pagination (when @c shouldFetchNextPages
 *        is enabled).
 */
@interface GTLRChromePolicy_GoogleChromePolicyV1ResolveResponse : GTLRCollectionObject

/**
 *  The page token used to get the next set of resolved policies found by the
 *  request.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The list of resolved policies found by the resolve request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_GoogleChromePolicyV1ResolvedPolicy *> *resolvedPolicies;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
@interface GTLRChromePolicy_GoogleProtobufEmpty : GTLRObject
@end


/**
 *  Represents a whole or partial calendar date, such as a birthday. The time of
 *  day and time zone are either specified elsewhere or are insignificant. The
 *  date is relative to the Gregorian Calendar. This can represent one of the
 *  following: * A full date, with non-zero year, month, and day values. * A
 *  month and day, with a zero year (for example, an anniversary). * A year on
 *  its own, with a zero month and a zero day. * A year and month, with a zero
 *  day (for example, a credit card expiration date). Related types: *
 *  google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
 */
@interface GTLRChromePolicy_GoogleTypeDate : GTLRObject

/**
 *  Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
 *  to specify a year by itself or a year and month where the day isn't
 *  significant.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *day;

/**
 *  Month of a year. Must be from 1 to 12, or 0 to specify a year without a
 *  month and day.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *month;

/**
 *  Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
 *  year.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *year;

@end


/**
 *  Describes a message type.
 */
@interface GTLRChromePolicy_Proto2DescriptorProto : GTLRObject

@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2EnumDescriptorProto *> *enumType;
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2FieldDescriptorProto *> *field;
@property(nonatomic, copy, nullable) NSString *name;
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2DescriptorProto *> *nestedType;
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2OneofDescriptorProto *> *oneofDecl;

@end


/**
 *  Describes an enum type.
 */
@interface GTLRChromePolicy_Proto2EnumDescriptorProto : GTLRObject

@property(nonatomic, copy, nullable) NSString *name;
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2EnumValueDescriptorProto *> *value;

@end


/**
 *  Describes a value within an enum.
 */
@interface GTLRChromePolicy_Proto2EnumValueDescriptorProto : GTLRObject

@property(nonatomic, copy, nullable) NSString *name;

/**
 *  number
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *number;

@end


/**
 *  Describes a field within a message.
 */
@interface GTLRChromePolicy_Proto2FieldDescriptorProto : GTLRObject

/**
 *  For numeric types, contains the original text representation of the value.
 *  For booleans, "true" or "false". For strings, contains the default text
 *  contents (not escaped in any way). For bytes, contains the C escaped value.
 *  All bytes >= 128 are escaped.
 */
@property(nonatomic, copy, nullable) NSString *defaultValue;

/**
 *  JSON name of this field. The value is set by protocol compiler. If the user
 *  has set a "json_name" option on this field, that option's value will be
 *  used. Otherwise, it's deduced from the field's name by converting it to
 *  camelCase.
 */
@property(nonatomic, copy, nullable) NSString *jsonName;

/**
 *  label
 *
 *  Likely values:
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelOptional 0
 *        is reserved for errors (Value: "LABEL_OPTIONAL")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRepeated
 *        Value "LABEL_REPEATED"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Label_LabelRequired
 *        Value "LABEL_REQUIRED"
 */
@property(nonatomic, copy, nullable) NSString *label;

@property(nonatomic, copy, nullable) NSString *name;

/**
 *  number
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *number;

/**
 *  If set, gives the index of a oneof in the containing type's oneof_decl list.
 *  This field is a member of that oneof.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *oneofIndex;

/**
 *  If true, this is a proto3 "optional". When a proto3 field is optional, it
 *  tracks presence regardless of field type. When proto3_optional is true, this
 *  field must be belong to a oneof to signal to old proto3 clients that
 *  presence is tracked for this field. This oneof is known as a "synthetic"
 *  oneof, and this field must be its sole member (each proto3 optional field
 *  gets its own synthetic oneof). Synthetic oneofs exist in the descriptor
 *  only, and do not generate any API. Synthetic oneofs must be ordered after
 *  all "real" oneofs. For message fields, proto3_optional doesn't create any
 *  semantic change, since non-repeated message fields always track presence.
 *  However it still indicates the semantic detail of whether the user wrote
 *  "optional" or not. This can be useful for round-tripping the .proto file.
 *  For consistency we give message fields a synthetic oneof also, even though
 *  it is not required to track presence. This is especially important because
 *  the parser can't tell if a field is a message or an enum, so it must always
 *  create a synthetic oneof. Proto2 optional fields do not set this flag,
 *  because they already indicate optional with `LABEL_OPTIONAL`.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *proto3Optional;

/**
 *  If type_name is set, this need not be set. If both this and type_name are
 *  set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.
 *
 *  Likely values:
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBool Value
 *        "TYPE_BOOL"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeBytes New in
 *        version 2. (Value: "TYPE_BYTES")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeDouble 0 is
 *        reserved for errors. Order is weird for historical reasons. (Value:
 *        "TYPE_DOUBLE")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeEnum Value
 *        "TYPE_ENUM"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed32
 *        Value "TYPE_FIXED32"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFixed64
 *        Value "TYPE_FIXED64"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeFloat Value
 *        "TYPE_FLOAT"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeGroup
 *        Tag-delimited aggregate. Group type is deprecated and not supported in
 *        proto3. However, Proto3 implementations should still be able to parse
 *        the group wire format and treat group fields as unknown fields.
 *        (Value: "TYPE_GROUP")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt32 Not
 *        ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT32 if
 *        negative values are likely. (Value: "TYPE_INT32")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeInt64 Not
 *        ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT64 if
 *        negative values are likely. (Value: "TYPE_INT64")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeMessage
 *        Length-delimited aggregate. (Value: "TYPE_MESSAGE")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed32
 *        Value "TYPE_SFIXED32"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSfixed64
 *        Value "TYPE_SFIXED64"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint32 Uses
 *        ZigZag encoding. (Value: "TYPE_SINT32")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeSint64 Uses
 *        ZigZag encoding. (Value: "TYPE_SINT64")
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeString Value
 *        "TYPE_STRING"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint32 Value
 *        "TYPE_UINT32"
 *    @arg @c kGTLRChromePolicy_Proto2FieldDescriptorProto_Type_TypeUint64 Value
 *        "TYPE_UINT64"
 */
@property(nonatomic, copy, nullable) NSString *type;

/**
 *  For message and enum types, this is the name of the type. If the name starts
 *  with a '.', it is fully-qualified. Otherwise, C++-like scoping rules are
 *  used to find the type (i.e. first the nested types within this message are
 *  searched, then within the parent, on up to the root namespace).
 */
@property(nonatomic, copy, nullable) NSString *typeName;

@end


/**
 *  Describes a complete .proto file.
 */
@interface GTLRChromePolicy_Proto2FileDescriptorProto : GTLRObject

@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2EnumDescriptorProto *> *enumType;

/** All top-level definitions in this file. */
@property(nonatomic, strong, nullable) NSArray<GTLRChromePolicy_Proto2DescriptorProto *> *messageType;

/** file name, relative to root of source tree */
@property(nonatomic, copy, nullable) NSString *name;

/** e.g. "foo", "foo.bar", etc. */
@property(nonatomic, copy, nullable) NSString *package;

/**
 *  The syntax of the proto file. The supported values are "proto2", "proto3",
 *  and "editions". If `edition` is present, this value must be "editions".
 */
@property(nonatomic, copy, nullable) NSString *syntax;

@end


/**
 *  Describes a oneof.
 */
@interface GTLRChromePolicy_Proto2OneofDescriptorProto : GTLRObject

@property(nonatomic, copy, nullable) NSString *name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
