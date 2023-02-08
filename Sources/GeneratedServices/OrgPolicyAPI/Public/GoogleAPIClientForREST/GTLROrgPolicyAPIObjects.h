// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Organization Policy API (orgpolicy/v2)
// Description:
//   The Org Policy API allows users to configure governance rules on their GCP
//   resources across the Cloud Resource Hierarchy.
// Documentation:
//   https://cloud.google.com/orgpolicy/docs/reference/rest/index.html

#import <GoogleAPIClientForREST/GTLRObject.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2AlternatePolicySpec;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintBooleanConstraint;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintListConstraint;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Policy;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpec;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRule;
@class GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues;
@class GTLROrgPolicyAPI_GoogleTypeExpr;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint.constraintDefault

/**
 *  Indicate that all values are allowed for list constraints. Indicate that
 *  enforcement is off for boolean constraints.
 *
 *  Value: "ALLOW"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_Allow;
/**
 *  This is only used for distinguishing unset values and should never be used.
 *
 *  Value: "CONSTRAINT_DEFAULT_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_ConstraintDefaultUnspecified;
/**
 *  Indicate that all values are denied for list constraints. Indicate that
 *  enforcement is on for boolean constraints.
 *
 *  Value: "DENY"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_Deny;

// ----------------------------------------------------------------------------
// GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint.actionType

/**
 *  Unspecified. Results in an error.
 *
 *  Value: "ACTION_TYPE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_ActionTypeUnspecified;
/**
 *  Allowed action type.
 *
 *  Value: "ALLOW"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_Allow;
/**
 *  Deny action type.
 *
 *  Value: "DENY"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_Deny;

// ----------------------------------------------------------------------------
// GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint.methodTypes

/**
 *  Constraint applied when creating the resource.
 *
 *  Value: "CREATE"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_MethodTypes_Create;
/**
 *  Constraint applied when deleting the resource. Not supported yet.
 *
 *  Value: "DELETE"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_MethodTypes_Delete;
/**
 *  Unspecified. Results in an error.
 *
 *  Value: "METHOD_TYPE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_MethodTypes_MethodTypeUnspecified;
/**
 *  Constraint applied when updating the resource.
 *
 *  Value: "UPDATE"
 */
FOUNDATION_EXTERN NSString * const kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_MethodTypes_Update;

/**
 *  Similar to PolicySpec but with an extra 'launch' field for launch reference.
 *  The PolicySpec here is specific for dry-run/darklaunch.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2AlternatePolicySpec : GTLRObject

/**
 *  Reference to the launch that will be used while audit logging and to control
 *  the launch. Should be set only in the alternate policy.
 */
@property(nonatomic, copy, nullable) NSString *launch;

/** Specify constraint for configurations of Google Cloud resources. */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpec *spec;

@end


/**
 *  A constraint describes a way to restrict resource's configuration. For
 *  example, you could enforce a constraint that controls which Google Cloud
 *  services can be activated across an organization, or whether a Compute
 *  Engine instance can have serial port connections established. Constraints
 *  can be configured by the organization policy administrator to fit the needs
 *  of the organization by setting a policy that includes constraints at
 *  different locations in the organization's resource hierarchy. Policies are
 *  inherited down the resource hierarchy from higher levels, but can also be
 *  overridden. For details about the inheritance rules please read about
 *  `policies`. Constraints have a default behavior determined by the
 *  `constraint_default` field, which is the enforcement behavior that is used
 *  in the absence of a policy being defined or inherited for the resource in
 *  question.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint : GTLRObject

/** Defines this constraint as being a BooleanConstraint. */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintBooleanConstraint *booleanConstraint;

/**
 *  The evaluation behavior of this constraint in the absence of a policy.
 *
 *  Likely values:
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_Allow
 *        Indicate that all values are allowed for list constraints. Indicate
 *        that enforcement is off for boolean constraints. (Value: "ALLOW")
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_ConstraintDefaultUnspecified
 *        This is only used for distinguishing unset values and should never be
 *        used. (Value: "CONSTRAINT_DEFAULT_UNSPECIFIED")
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint_ConstraintDefault_Deny
 *        Indicate that all values are denied for list constraints. Indicate
 *        that enforcement is on for boolean constraints. (Value: "DENY")
 */
@property(nonatomic, copy, nullable) NSString *constraintDefault;

/**
 *  Detailed description of what this constraint controls as well as how and
 *  where it is enforced. Mutable.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/** The human readable name. Mutable. */
@property(nonatomic, copy, nullable) NSString *displayName;

/** Defines this constraint as being a ListConstraint. */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintListConstraint *listConstraint;

/**
 *  Immutable. The resource name of the constraint. Must be in one of the
 *  following forms: * `projects/{project_number}/constraints/{constraint_name}`
 *  * `folders/{folder_id}/constraints/{constraint_name}` *
 *  `organizations/{organization_id}/constraints/{constraint_name}` For example,
 *  "/projects/123/constraints/compute.disableSerialPortAccess".
 */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  A constraint that is either enforced or not. For example, a constraint
 *  `constraints/compute.disableSerialPortAccess`. If it is enforced on a VM
 *  instance, serial port connections will not be opened to that instance.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintBooleanConstraint : GTLRObject
@end


/**
 *  A constraint that allows or disallows a list of string values, which are
 *  configured by an Organization Policy administrator with a policy.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ConstraintListConstraint : GTLRObject

/**
 *  Indicates whether values grouped into categories can be used in
 *  `Policy.allowed_values` and `Policy.denied_values`. For example,
 *  `"in:Python"` would match any value in the 'Python' group.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *supportsIn;

/**
 *  Indicates whether subtrees of the Resource Manager resource hierarchy can be
 *  used in `Policy.allowed_values` and `Policy.denied_values`. For example,
 *  `"under:folders/123"` would match any resource under the 'folders/123'
 *  folder.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *supportsUnder;

@end


/**
 *  A custom constraint defined by customers which can *only* be applied to the
 *  given resource types and organization. By creating a custom constraint,
 *  customers can apply policies of this custom constraint. *Creating a custom
 *  constraint itself does NOT apply any policy enforcement*.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint : GTLRObject

/**
 *  Allow or deny type.
 *
 *  Likely values:
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_ActionTypeUnspecified
 *        Unspecified. Results in an error. (Value: "ACTION_TYPE_UNSPECIFIED")
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_Allow
 *        Allowed action type. (Value: "ALLOW")
 *    @arg @c kGTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint_ActionType_Deny
 *        Deny action type. (Value: "DENY")
 */
@property(nonatomic, copy, nullable) NSString *actionType;

/**
 *  Org policy condition/expression. For example:
 *  `resource.instanceName.matches("[production|test]_.*_(\\d)+")'` or,
 *  `resource.management.auto_upgrade == true` The max length of the condition
 *  is 1000 characters.
 */
@property(nonatomic, copy, nullable) NSString *condition;

/**
 *  Detailed information about this custom policy constraint. The max length of
 *  the description is 2000 characters.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  One line display name for the UI. The max length of the display_name is 200
 *  characters.
 */
@property(nonatomic, copy, nullable) NSString *displayName;

/** All the operations being applied for this constraint. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *methodTypes;

/**
 *  Immutable. Name of the constraint. This is unique within the organization.
 *  Format of the name should be *
 *  `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
 *  Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms`
 *  The max length is 70 characters and the minimum length is 1. Note that the
 *  prefix `organizations/{organization_id}/customConstraints/` is not counted.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Immutable. The resource instance type on which this policy applies. Format
 *  will be of the form : "/" Example: * `compute.googleapis.com/Instance`.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *resourceTypes;

/**
 *  Output only. The last time this custom constraint was updated. This
 *  represents the last time that the `CreateCustomConstraint` or
 *  `UpdateCustomConstraint` RPC was called
 */
@property(nonatomic, strong, nullable) GTLRDateTime *updateTime;

@end


/**
 *  The response returned from the ListConstraints method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "constraints" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ListConstraintsResponse : GTLRCollectionObject

/**
 *  The collection of constraints that are available on the targeted resource.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Constraint *> *constraints;

/** Page token used to retrieve the next page. This is currently not used. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  The response returned from the ListCustomConstraints method. It will be
 *  empty if no custom constraints are set on the organization resource.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "customConstraints" property. If returned as the result of a
 *        query, it should support automatic pagination (when @c
 *        shouldFetchNextPages is enabled).
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ListCustomConstraintsResponse : GTLRCollectionObject

/**
 *  All custom constraints that exist on the organization resource. It will be
 *  empty if no custom constraints are set.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2CustomConstraint *> *customConstraints;

/**
 *  Page token used to retrieve the next page. This is currently not used, but
 *  the server may at any point start supplying a valid token.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  The response returned from the ListPolicies method. It will be empty if no
 *  policies are set on the resource.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "policies" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2ListPoliciesResponse : GTLRCollectionObject

/**
 *  Page token used to retrieve the next page. This is currently not used, but
 *  the server may at any point start supplying a valid token.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  All policies that exist on the resource. It will be empty if no policies are
 *  set.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Policy *> *policies;

@end


/**
 *  Defines an organization policy which is used to specify constraints for
 *  configurations of Google Cloud resources.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2Policy : GTLRObject

/** Deprecated. */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2AlternatePolicySpec *alternate;

/**
 *  Dry-run policy. Audit-only policy, can be used to monitor how the policy
 *  would have impacted the existing and future resources if it's enforced.
 */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpec *dryRunSpec;

/**
 *  Immutable. The resource name of the policy. Must be one of the following
 *  forms, where constraint_name is the name of the constraint which this policy
 *  configures: * `projects/{project_number}/policies/{constraint_name}` *
 *  `folders/{folder_id}/policies/{constraint_name}` *
 *  `organizations/{organization_id}/policies/{constraint_name}` For example,
 *  "projects/123/policies/compute.disableSerialPortAccess". Note:
 *  `projects/{project_id}/policies/{constraint_name}` is also an acceptable
 *  name for API requests, but responses will return the name using the
 *  equivalent project number.
 */
@property(nonatomic, copy, nullable) NSString *name;

/** Basic information about the Organization Policy. */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpec *spec;

@end


/**
 *  Defines a Google Cloud policy specification which is used to specify
 *  constraints for configurations of Google Cloud resources.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpec : GTLRObject

/**
 *  An opaque tag indicating the current version of the policy, used for
 *  concurrency control. This field is ignored if used in a `CreatePolicy`
 *  request. When the policy` is returned from either a `GetPolicy` or a
 *  `ListPolicies` request, this `etag` indicates the version of the current
 *  policy to use when executing a read-modify-write loop. When the policy is
 *  returned from a `GetEffectivePolicy` request, the `etag` will be unset.
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Determines the inheritance behavior for this policy. If
 *  `inherit_from_parent` is true, policy rules set higher up in the hierarchy
 *  (up to the closest root) are inherited and present in the effective policy.
 *  If it is false, then no rules are inherited, and this policy becomes the new
 *  root for evaluation. This field can be set only for policies which configure
 *  list constraints.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *inheritFromParent;

/**
 *  Ignores policies set above this resource and restores the
 *  `constraint_default` enforcement behavior of the specific constraint at this
 *  resource. This field can be set in policies for either list or boolean
 *  constraints. If set, `rules` must be empty and `inherit_from_parent` must be
 *  set to false.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *reset;

/**
 *  Up to 10 policy rules are allowed. In policies for boolean constraints, the
 *  following requirements apply: - There must be one and only one policy rule
 *  where condition is unset. - Boolean policy rules with conditions must set
 *  `enforced` to the opposite of the policy rule without a condition. - During
 *  policy evaluation, policy rules with conditions that are true for a target
 *  resource take precedence.
 */
@property(nonatomic, strong, nullable) NSArray<GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRule *> *rules;

/**
 *  Output only. The time stamp this was previously updated. This represents the
 *  last time a call to `CreatePolicy` or `UpdatePolicy` was made for that
 *  policy.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *updateTime;

@end


/**
 *  A rule used to express this policy.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRule : GTLRObject

/**
 *  Setting this to true means that all values are allowed. This field can be
 *  set only in policies for list constraints.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *allowAll;

/**
 *  A condition which determines whether this rule is used in the evaluation of
 *  the policy. When set, the `expression` field in the `Expr' must include from
 *  1 to 10 subexpressions, joined by the "||" or "&&" operators. Each
 *  subexpression must be of the form "resource.matchTag('/tag_key_short_name,
 *  'tag_value_short_name')". or "resource.matchTagId('tagKeys/key_id',
 *  'tagValues/value_id')". where key_name and value_name are the resource names
 *  for Label Keys and Values. These names are available from the Tag Manager
 *  Service. An example expression is:
 *  "resource.matchTag('123456789/environment, 'prod')". or
 *  "resource.matchTagId('tagKeys/123', 'tagValues/456')".
 */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleTypeExpr *condition;

/**
 *  Setting this to true means that all values are denied. This field can be set
 *  only in policies for list constraints.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *denyAll;

/**
 *  If `true`, then the policy is enforced. If `false`, then any configuration
 *  is acceptable. This field can be set only in policies for boolean
 *  constraints.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *enforce;

/**
 *  List of values to be used for this policy rule. This field can be set only
 *  in policies for list constraints.
 */
@property(nonatomic, strong, nullable) GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues *values;

@end


/**
 *  A message that holds specific allowed and denied values. This message can
 *  define specific values and subtrees of the Resource Manager resource
 *  hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or
 *  denied. This is achieved by using the `under:` and optional `is:` prefixes.
 *  The `under:` prefix is used to denote resource subtree values. The `is:`
 *  prefix is used to denote specific values, and is required only if the value
 *  contains a ":". Values prefixed with "is:" are treated the same as values
 *  with no prefix. Ancestry subtrees must be in one of the following formats: -
 *  "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
 *  "folders/1234" - "organizations/", e.g. "organizations/1234" The
 *  `supports_under` field of the associated `Constraint` defines whether
 *  ancestry prefixes can be used.
 */
@interface GTLROrgPolicyAPI_GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues : GTLRObject

/** List of values allowed at this resource. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *allowedValues;

/** List of values denied at this resource. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *deniedValues;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
@interface GTLROrgPolicyAPI_GoogleProtobufEmpty : GTLRObject
@end


/**
 *  Represents a textual expression in the Common Expression Language (CEL)
 *  syntax. CEL is a C-like expression language. The syntax and semantics of CEL
 *  are documented at https://github.com/google/cel-spec. Example (Comparison):
 *  title: "Summary size limit" description: "Determines if a summary is less
 *  than 100 chars" expression: "document.summary.size() < 100" Example
 *  (Equality): title: "Requestor is owner" description: "Determines if
 *  requestor is the document owner" expression: "document.owner ==
 *  request.auth.claims.email" Example (Logic): title: "Public documents"
 *  description: "Determine whether the document should be publicly visible"
 *  expression: "document.type != 'private' && document.type != 'internal'"
 *  Example (Data Manipulation): title: "Notification string" description:
 *  "Create a notification string with a timestamp." expression: "'New message
 *  received at ' + string(document.create_time)" The exact variables and
 *  functions that may be referenced within an expression are determined by the
 *  service that evaluates it. See the service documentation for additional
 *  information.
 */
@interface GTLROrgPolicyAPI_GoogleTypeExpr : GTLRObject

/**
 *  Optional. Description of the expression. This is a longer text which
 *  describes the expression, e.g. when hovered over it in a UI.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Textual representation of an expression in Common Expression Language
 *  syntax.
 */
@property(nonatomic, copy, nullable) NSString *expression;

/**
 *  Optional. String indicating the location of the expression for error
 *  reporting, e.g. a file name and a position in the file.
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  Optional. Title for the expression, i.e. a short string describing its
 *  purpose. This can be used e.g. in UIs which allow to enter the expression.
 */
@property(nonatomic, copy, nullable) NSString *title;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
