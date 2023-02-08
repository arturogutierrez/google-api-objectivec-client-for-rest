// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Identity-Aware Proxy API (iap/v1)
// Description:
//   Controls access to cloud applications running on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/iap

#import <GoogleAPIClientForREST/GTLRObject.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRCloudIAP_AccessDeniedPageSettings;
@class GTLRCloudIAP_AccessSettings;
@class GTLRCloudIAP_AllowedDomainsSettings;
@class GTLRCloudIAP_ApplicationSettings;
@class GTLRCloudIAP_AttributePropagationSettings;
@class GTLRCloudIAP_Binding;
@class GTLRCloudIAP_Brand;
@class GTLRCloudIAP_CorsSettings;
@class GTLRCloudIAP_CsmSettings;
@class GTLRCloudIAP_Expr;
@class GTLRCloudIAP_GcipSettings;
@class GTLRCloudIAP_GetPolicyOptions;
@class GTLRCloudIAP_IdentityAwareProxyClient;
@class GTLRCloudIAP_OAuthSettings;
@class GTLRCloudIAP_Policy;
@class GTLRCloudIAP_PolicyDelegationSettings;
@class GTLRCloudIAP_PolicyName;
@class GTLRCloudIAP_ReauthSettings;
@class GTLRCloudIAP_Resource;
@class GTLRCloudIAP_Resource_Labels;
@class GTLRCloudIAP_TunnelDestGroup;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRCloudIAP_AttributePropagationSettings.outputCredentials

/**
 *  Propagate attributes in the headers with "x-goog-iap-attr-" prefix.
 *
 *  Value: "HEADER"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_AttributePropagationSettings_OutputCredentials_Header;
/**
 *  Propagate attributes in the JWT of the form: "additional_claims": {
 *  "my_attribute": ["value1", "value2"] }
 *
 *  Value: "JWT"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_AttributePropagationSettings_OutputCredentials_Jwt;
/**
 *  No output credential. This is unsupported in IAP, there must be an output
 *  credential.
 *
 *  Value: "OUTPUT_CREDENTIALS_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_AttributePropagationSettings_OutputCredentials_OutputCredentialsUnspecified;
/**
 *  Propagate attributes in the RCToken of the form: "additional_claims": {
 *  "my_attribute": ["value1", "value2"] }
 *
 *  Value: "RCTOKEN"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_AttributePropagationSettings_OutputCredentials_Rctoken;

// ----------------------------------------------------------------------------
// GTLRCloudIAP_ReauthSettings.method

/**
 *  User can use any enabled 2nd factor.
 *
 *  Value: "ENROLLED_SECOND_FACTORS"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_Method_EnrolledSecondFactors;
/**
 *  Prompts the user to log in again.
 *
 *  Value: "LOGIN"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_Method_Login;
/**
 *  Reauthentication disabled.
 *
 *  Value: "METHOD_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_Method_MethodUnspecified;
/**
 *  Deprecated, no longer accepted by IAP APIs.
 *
 *  Value: "PASSWORD"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_Method_Password;
/**
 *  User must use their secure key 2nd factor device.
 *
 *  Value: "SECURE_KEY"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_Method_SecureKey;

// ----------------------------------------------------------------------------
// GTLRCloudIAP_ReauthSettings.policyType

/**
 *  This policy acts as a default if no other reauth policy is set.
 *
 *  Value: "DEFAULT"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_PolicyType_Default;
/**
 *  This policy acts as a minimum to other policies, lower in the hierarchy.
 *  Effective policy may only be the same or stricter.
 *
 *  Value: "MINIMUM"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_PolicyType_Minimum;
/**
 *  Default value. This value is unused.
 *
 *  Value: "POLICY_TYPE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCloudIAP_ReauthSettings_PolicyType_PolicyTypeUnspecified;

/**
 *  Custom content configuration for access denied page. IAP allows customers to
 *  define a custom URI to use as the error page when access is denied to users.
 *  If IAP prevents access to this page, the default IAP error page will be
 *  displayed instead.
 */
@interface GTLRCloudIAP_AccessDeniedPageSettings : GTLRObject

/** The URI to be redirected to when access is denied. */
@property(nonatomic, copy, nullable) NSString *accessDeniedPageUri;

/**
 *  Whether to generate a troubleshooting URL on access denied events to this
 *  application.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *generateTroubleshootingUri;

/**
 *  Whether to generate remediation token on access denied events to this
 *  application.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *remediationTokenGenerationEnabled;

@end


/**
 *  Access related settings for IAP protected apps.
 */
@interface GTLRCloudIAP_AccessSettings : GTLRObject

/** Settings to configure and enable allowed domains. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_AllowedDomainsSettings *allowedDomainsSettings;

/** Configuration to allow cross-origin requests via IAP. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_CorsSettings *corsSettings;

/** GCIP claims and endpoint configurations for 3p identity providers. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_GcipSettings *gcipSettings;

/** Settings to configure IAP's OAuth behavior. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_OAuthSettings *oauthSettings;

/**
 *  Settings to configure Policy delegation for apps hosted in tenant projects.
 *  INTERNAL_ONLY.
 */
@property(nonatomic, strong, nullable) GTLRCloudIAP_PolicyDelegationSettings *policyDelegationSettings;

/** Settings to configure reauthentication policies in IAP. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_ReauthSettings *reauthSettings;

@end


/**
 *  Configuration for IAP allowed domains. Lets you to restrict access to an app
 *  and allow access to only the domains that you list.
 */
@interface GTLRCloudIAP_AllowedDomainsSettings : GTLRObject

/** List of trusted domains. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *domains;

/**
 *  Configuration for customers to opt in for the feature.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *enable;

@end


/**
 *  Wrapper over application specific settings for IAP.
 */
@interface GTLRCloudIAP_ApplicationSettings : GTLRObject

/** Customization for Access Denied page. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_AccessDeniedPageSettings *accessDeniedPageSettings;

/** Settings to configure attribute propagation. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_AttributePropagationSettings *attributePropagationSettings;

/**
 *  The Domain value to set for cookies generated by IAP. This value is not
 *  validated by the API, but will be ignored at runtime if invalid.
 */
@property(nonatomic, copy, nullable) NSString *cookieDomain;

/** Settings to configure IAP's behavior for a service mesh. */
@property(nonatomic, strong, nullable) GTLRCloudIAP_CsmSettings *csmSettings;

@end


/**
 *  Configuration for propagating attributes to applications protected by IAP.
 */
@interface GTLRCloudIAP_AttributePropagationSettings : GTLRObject

/**
 *  Whether the provided attribute propagation settings should be evaluated on
 *  user requests. If set to true, attributes returned from the expression will
 *  be propagated in the set output credentials.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *enable;

/**
 *  Raw string CEL expression. Must return a list of attributes. Maximum of 45
 *  attributes can be selected. Expressions can select different attribute types
 *  from `attributes`: `attributes.saml_attributes`,
 *  `attributes.iap_attributes`. Limited functions are supported: - filter:
 *  .filter(, ) -> returns a subset of where is true for every item - in: in ->
 *  returns true if contains - selectByName: .selectByName() -> returns the
 *  attribute in with the given name, otherwise returns empty. - emitAs:
 *  .emitAs() -> sets the name field to the given for propagation in selected
 *  output credentials. - strict: .strict() -> ignore the `x-goog-iap-attr-`
 *  prefix for the provided attribute when propagating via the `HEADER` output
 *  credential, i.e. request headers. - append: .append() OR .append() -> append
 *  the provided or onto the end of Example expression:
 *  attributes.saml_attributes.filter(x, x.name in
 *  ['test']).append(attributes.iap_attributes.selectByName('exact').emitAs('custom').strict())
 */
@property(nonatomic, copy, nullable) NSString *expression;

/**
 *  Which output credentials attributes selected by the CEL expression should be
 *  propagated in. All attributes will be fully duplicated in each selected
 *  output credential.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *outputCredentials;

@end


/**
 *  Associates `members`, or principals, with a `role`.
 */
@interface GTLRCloudIAP_Binding : GTLRObject

/**
 *  The condition that is associated with this binding. If the condition
 *  evaluates to `true`, then this binding applies to the current request. If
 *  the condition evaluates to `false`, then this binding does not apply to the
 *  current request. However, a different role binding might grant the same role
 *  to one or more of the principals in this binding. To learn which resources
 *  support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 */
@property(nonatomic, strong, nullable) GTLRCloudIAP_Expr *condition;

/**
 *  Specifies the principals requesting access for a Google Cloud resource.
 *  `members` can have the following values: * `allUsers`: A special identifier
 *  that represents anyone who is on the internet; with or without a Google
 *  account. * `allAuthenticatedUsers`: A special identifier that represents
 *  anyone who is authenticated with a Google account or a service account. Does
 *  not include identities that come from external identity providers (IdPs)
 *  through identity federation. * `user:{emailid}`: An email address that
 *  represents a specific Google account. For example, `alice\@example.com` . *
 *  `serviceAccount:{emailid}`: An email address that represents a Google
 *  service account. For example, `my-other-app\@appspot.gserviceaccount.com`. *
 *  `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
 *  identifier for a [Kubernetes service
 *  account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
 *  For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
 *  `group:{emailid}`: An email address that represents a Google group. For
 *  example, `admins\@example.com`. * `domain:{domain}`: The G Suite domain
 *  (primary) that represents all the users of that domain. For example,
 *  `google.com` or `example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An
 *  email address (plus unique identifier) representing a user that has been
 *  recently deleted. For example,
 *  `alice\@example.com?uid=123456789012345678901`. If the user is recovered,
 *  this value reverts to `user:{emailid}` and the recovered user retains the
 *  role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An
 *  email address (plus unique identifier) representing a service account that
 *  has been recently deleted. For example,
 *  `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If
 *  the service account is undeleted, this value reverts to
 *  `serviceAccount:{emailid}` and the undeleted service account retains the
 *  role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
 *  address (plus unique identifier) representing a Google group that has been
 *  recently deleted. For example,
 *  `admins\@example.com?uid=123456789012345678901`. If the group is recovered,
 *  this value reverts to `group:{emailid}` and the recovered group retains the
 *  role in the binding.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *members;

/**
 *  Role that is assigned to the list of `members`, or principals. For example,
 *  `roles/viewer`, `roles/editor`, or `roles/owner`.
 */
@property(nonatomic, copy, nullable) NSString *role;

@end


/**
 *  OAuth brand data. NOTE: Only contains a portion of the data that describes a
 *  brand.
 */
@interface GTLRCloudIAP_Brand : GTLRObject

/** Application name displayed on OAuth consent screen. */
@property(nonatomic, copy, nullable) NSString *applicationTitle;

/**
 *  Output only. Identifier of the brand. NOTE: GCP project number achieves the
 *  same brand identification purpose as only one brand per project can be
 *  created.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Output only. Whether the brand is only intended for usage inside the G Suite
 *  organization only.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *orgInternalOnly;

/** Support email displayed on the OAuth consent screen. */
@property(nonatomic, copy, nullable) NSString *supportEmail;

@end


/**
 *  Allows customers to configure HTTP request paths that'll allow HTTP OPTIONS
 *  call to bypass authentication and authorization.
 */
@interface GTLRCloudIAP_CorsSettings : GTLRObject

/**
 *  Configuration to allow HTTP OPTIONS calls to skip authorization. If
 *  undefined, IAP will not apply any special logic to OPTIONS requests.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *allowHttpOptions;

@end


/**
 *  Configuration for RCToken generated for service mesh workloads protected by
 *  IAP. RCToken are IAP generated JWTs that can be verified at the application.
 *  The RCToken is primarily used for service mesh deployments, and can be
 *  scoped to a single mesh by configuring the audience field accordingly.
 */
@interface GTLRCloudIAP_CsmSettings : GTLRObject

/**
 *  Audience claim set in the generated RCToken. This value is not validated by
 *  IAP.
 */
@property(nonatomic, copy, nullable) NSString *rctokenAud;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
@interface GTLRCloudIAP_Empty : GTLRObject
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
@interface GTLRCloudIAP_Expr : GTLRObject

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


/**
 *  Allows customers to configure tenant_id for GCIP instance per-app.
 */
@interface GTLRCloudIAP_GcipSettings : GTLRObject

/**
 *  Login page URI associated with the GCIP tenants. Typically, all resources
 *  within the same project share the same login page, though it could be
 *  overridden at the sub resource level.
 */
@property(nonatomic, copy, nullable) NSString *loginPageUri;

/**
 *  GCIP tenant ids that are linked to the IAP resource. tenant_ids could be a
 *  string beginning with a number character to indicate authenticating with
 *  GCIP tenant flow, or in the format of _ to indicate authenticating with GCIP
 *  agent flow. If agent flow is used, tenant_ids should only contain one single
 *  element, while for tenant flow, tenant_ids can contain multiple elements.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *tenantIds;

@end


/**
 *  Request message for `GetIamPolicy` method.
 */
@interface GTLRCloudIAP_GetIamPolicyRequest : GTLRObject

/**
 *  OPTIONAL: A `GetPolicyOptions` object for specifying options to
 *  `GetIamPolicy`.
 */
@property(nonatomic, strong, nullable) GTLRCloudIAP_GetPolicyOptions *options;

@end


/**
 *  Encapsulates settings provided to GetIamPolicy.
 */
@interface GTLRCloudIAP_GetPolicyOptions : GTLRObject

/**
 *  Optional. The maximum policy version that will be used to format the policy.
 *  Valid values are 0, 1, and 3. Requests specifying an invalid value will be
 *  rejected. Requests for policies with any conditional role bindings must
 *  specify version 3. Policies with no conditional role bindings may specify
 *  any valid value or leave the field unset. The policy in the response might
 *  use the policy version that you specified, or it might use a lower policy
 *  version. For example, if you specify version 3, but the policy has no
 *  conditional role bindings, the response uses version 1. To learn which
 *  resources support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *requestedPolicyVersion;

@end


/**
 *  The IAP configurable settings.
 */
@interface GTLRCloudIAP_IapSettings : GTLRObject

/** Top level wrapper for all access related setting in IAP */
@property(nonatomic, strong, nullable) GTLRCloudIAP_AccessSettings *accessSettings;

/** Top level wrapper for all application related settings in IAP */
@property(nonatomic, strong, nullable) GTLRCloudIAP_ApplicationSettings *applicationSettings;

/** Required. The resource name of the IAP protected resource. */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Contains the data that describes an Identity Aware Proxy owned client.
 */
@interface GTLRCloudIAP_IdentityAwareProxyClient : GTLRObject

/** Human-friendly name given to the OAuth client. */
@property(nonatomic, copy, nullable) NSString *displayName;

/** Output only. Unique identifier of the OAuth client. */
@property(nonatomic, copy, nullable) NSString *name;

/** Output only. Client secret of the OAuth client. */
@property(nonatomic, copy, nullable) NSString *secret;

@end


/**
 *  Response message for ListBrands.
 */
@interface GTLRCloudIAP_ListBrandsResponse : GTLRObject

/** Brands existing in the project. */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudIAP_Brand *> *brands;

@end


/**
 *  Response message for ListIdentityAwareProxyClients.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "identityAwareProxyClients" property. If returned as the result of
 *        a query, it should support automatic pagination (when @c
 *        shouldFetchNextPages is enabled).
 */
@interface GTLRCloudIAP_ListIdentityAwareProxyClientsResponse : GTLRCollectionObject

/**
 *  Clients existing in the brand.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudIAP_IdentityAwareProxyClient *> *identityAwareProxyClients;

/**
 *  A token, which can be send as `page_token` to retrieve the next page. If
 *  this field is omitted, there are no subsequent pages.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  The response from ListTunnelDestGroups.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "tunnelDestGroups" property. If returned as the result of a query,
 *        it should support automatic pagination (when @c shouldFetchNextPages
 *        is enabled).
 */
@interface GTLRCloudIAP_ListTunnelDestGroupsResponse : GTLRCollectionObject

/**
 *  A token that you can send as `page_token` to retrieve the next page. If this
 *  field is omitted, there are no subsequent pages.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  TunnelDestGroup existing in the project.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudIAP_TunnelDestGroup *> *tunnelDestGroups;

@end


/**
 *  Configuration for OAuth login&consent flow behavior as well as for OAuth
 *  Credentials.
 */
@interface GTLRCloudIAP_OAuthSettings : GTLRObject

/**
 *  Domain hint to send as hd=? parameter in OAuth request flow. Enables
 *  redirect to primary IDP by skipping Google's login screen.
 *  https://developers.google.com/identity/protocols/OpenIDConnect#hd-param
 *  Note: IAP does not verify that the id token's hd claim matches this value
 *  since access behavior is managed by IAM policies.
 */
@property(nonatomic, copy, nullable) NSString *loginHint;

@end


/**
 *  An Identity and Access Management (IAM) policy, which specifies access
 *  controls for Google Cloud resources. A `Policy` is a collection of
 *  `bindings`. A `binding` binds one or more `members`, or principals, to a
 *  single `role`. Principals can be user accounts, service accounts, Google
 *  groups, and domains (such as G Suite). A `role` is a named list of
 *  permissions; each `role` can be an IAM predefined role or a user-created
 *  custom role. For some types of Google Cloud resources, a `binding` can also
 *  specify a `condition`, which is a logical expression that allows access to a
 *  resource only if the expression evaluates to `true`. A condition can add
 *  constraints based on attributes of the request, the resource, or both. To
 *  learn which resources support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 *  **JSON example:** { "bindings": [ { "role":
 *  "roles/resourcemanager.organizationAdmin", "members": [
 *  "user:mike\@example.com", "group:admins\@example.com", "domain:google.com",
 *  "serviceAccount:my-project-id\@appspot.gserviceaccount.com" ] }, { "role":
 *  "roles/resourcemanager.organizationViewer", "members": [
 *  "user:eve\@example.com" ], "condition": { "title": "expirable access",
 *  "description": "Does not grant access after Sep 2020", "expression":
 *  "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
 *  "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
 *  user:mike\@example.com - group:admins\@example.com - domain:google.com -
 *  serviceAccount:my-project-id\@appspot.gserviceaccount.com role:
 *  roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com
 *  role: roles/resourcemanager.organizationViewer condition: title: expirable
 *  access description: Does not grant access after Sep 2020 expression:
 *  request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
 *  version: 3 For a description of IAM and its features, see the [IAM
 *  documentation](https://cloud.google.com/iam/docs/).
 */
@interface GTLRCloudIAP_Policy : GTLRObject

/**
 *  Associates a list of `members`, or principals, with a `role`. Optionally,
 *  may specify a `condition` that determines how and when the `bindings` are
 *  applied. Each of the `bindings` must contain at least one principal. The
 *  `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of
 *  these principals can be Google groups. Each occurrence of a principal counts
 *  towards these limits. For example, if the `bindings` grant 50 different
 *  roles to `user:alice\@example.com`, and not to any other principal, then you
 *  can add another 1,450 principals to the `bindings` in the `Policy`.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudIAP_Binding *> *bindings;

/**
 *  `etag` is used for optimistic concurrency control as a way to help prevent
 *  simultaneous updates of a policy from overwriting each other. It is strongly
 *  suggested that systems make use of the `etag` in the read-modify-write cycle
 *  to perform policy updates in order to avoid race conditions: An `etag` is
 *  returned in the response to `getIamPolicy`, and systems are expected to put
 *  that etag in the request to `setIamPolicy` to ensure that their change will
 *  be applied to the same version of the policy. **Important:** If you use IAM
 *  Conditions, you must include the `etag` field whenever you call
 *  `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
 *  version `3` policy with a version `1` policy, and all of the conditions in
 *  the version `3` policy are lost.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
 *  Requests that specify an invalid value are rejected. Any operation that
 *  affects conditional role bindings must specify version `3`. This requirement
 *  applies to the following operations: * Getting a policy that includes a
 *  conditional role binding * Adding a conditional role binding to a policy *
 *  Changing a conditional role binding in a policy * Removing any role binding,
 *  with or without a condition, from a policy that includes conditions
 *  **Important:** If you use IAM Conditions, you must include the `etag` field
 *  whenever you call `setIamPolicy`. If you omit this field, then IAM allows
 *  you to overwrite a version `3` policy with a version `1` policy, and all of
 *  the conditions in the version `3` policy are lost. If a policy does not
 *  include any conditions, operations on that policy may specify any valid
 *  version or leave the field unset. To learn which resources support
 *  conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *version;

@end


/**
 *  PolicyDelegationConfig allows google-internal teams to use IAP for apps
 *  hosted in a tenant project. Using these settings, the app can delegate
 *  permission check to happen against the linked customer project. This is only
 *  ever supposed to be used by google internal teams, hence the restriction on
 *  the proto.
 */
@interface GTLRCloudIAP_PolicyDelegationSettings : GTLRObject

/** Permission to check in IAM. */
@property(nonatomic, copy, nullable) NSString *iamPermission;

/**
 *  The DNS name of the service (e.g. "resourcemanager.googleapis.com"). This
 *  should be the domain name part of the full resource names (see
 *  https://aip.dev/122#full-resource-names), which is usually the same as
 *  IamServiceSpec.service of the service where the resource type is defined.
 */
@property(nonatomic, copy, nullable) NSString *iamServiceName;

/** Policy name to be checked */
@property(nonatomic, strong, nullable) GTLRCloudIAP_PolicyName *policyName;

/** IAM resource to check permission on */
@property(nonatomic, strong, nullable) GTLRCloudIAP_Resource *resource;

@end


/**
 *  An internal name for an IAM policy, based on the resource to which the
 *  policy applies. Not to be confused with a resource's external full resource
 *  name. For more information on this distinction, see
 *  go/iam-full-resource-names.
 */
@interface GTLRCloudIAP_PolicyName : GTLRObject

/**
 *  Identifies an instance of the type. ID format varies by type. The ID format
 *  is defined in the IAM .service file that defines the type, either in
 *  path_mapping or in a comment.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  For Cloud IAM: The location of the Policy. Must be empty or "global" for
 *  Policies owned by global IAM. Must name a region from
 *  prodspec/cloud-iam-cloudspec for Regional IAM Policies, see
 *  go/iam-faq#where-is-iam-currently-deployed. For Local IAM: This field should
 *  be set to "local".
 */
@property(nonatomic, copy, nullable) NSString *region;

/**
 *  Resource type. Types are defined in IAM's .service files. Valid values for
 *  type might be 'gce', 'gcs', 'project', 'account' etc.
 */
@property(nonatomic, copy, nullable) NSString *type;

@end


/**
 *  Configuration for IAP reauthentication policies.
 */
@interface GTLRCloudIAP_ReauthSettings : GTLRObject

/**
 *  Reauth session lifetime, how long before a user has to reauthenticate again.
 */
@property(nonatomic, strong, nullable) GTLRDuration *maxAge;

/**
 *  Reauth method requested.
 *
 *  Likely values:
 *    @arg @c kGTLRCloudIAP_ReauthSettings_Method_EnrolledSecondFactors User can
 *        use any enabled 2nd factor. (Value: "ENROLLED_SECOND_FACTORS")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_Method_Login Prompts the user to log
 *        in again. (Value: "LOGIN")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_Method_MethodUnspecified
 *        Reauthentication disabled. (Value: "METHOD_UNSPECIFIED")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_Method_Password Deprecated, no longer
 *        accepted by IAP APIs. (Value: "PASSWORD")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_Method_SecureKey User must use their
 *        secure key 2nd factor device. (Value: "SECURE_KEY")
 */
@property(nonatomic, copy, nullable) NSString *method;

/**
 *  How IAP determines the effective policy in cases of hierarchial policies.
 *  Policies are merged from higher in the hierarchy to lower in the hierarchy.
 *
 *  Likely values:
 *    @arg @c kGTLRCloudIAP_ReauthSettings_PolicyType_Default This policy acts
 *        as a default if no other reauth policy is set. (Value: "DEFAULT")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_PolicyType_Minimum This policy acts
 *        as a minimum to other policies, lower in the hierarchy. Effective
 *        policy may only be the same or stricter. (Value: "MINIMUM")
 *    @arg @c kGTLRCloudIAP_ReauthSettings_PolicyType_PolicyTypeUnspecified
 *        Default value. This value is unused. (Value:
 *        "POLICY_TYPE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *policyType;

@end


/**
 *  The request sent to ResetIdentityAwareProxyClientSecret.
 */
@interface GTLRCloudIAP_ResetIdentityAwareProxyClientSecretRequest : GTLRObject
@end


/**
 *  GTLRCloudIAP_Resource
 */
@interface GTLRCloudIAP_Resource : GTLRObject

/**
 *  The service defined labels of the resource on which the conditions will be
 *  evaluated. The semantics - including the key names - are vague to IAM. If
 *  the effective condition has a reference to a `resource.labels[foo]`
 *  construct, IAM consults with this map to retrieve the values associated with
 *  `foo` key for Conditions evaluation. If the provided key is not found in the
 *  labels map, the condition would evaluate to false. This field is in limited
 *  use. If your intended use case is not expected to express resource.labels
 *  attribute in IAM Conditions, leave this field empty. Before planning on
 *  using this attribute please: * Read go/iam-conditions-labels-comm and ensure
 *  your service can meet the data availability and management requirements. *
 *  Talk to iam-conditions-eng\@ about your use case.
 */
@property(nonatomic, strong, nullable) GTLRCloudIAP_Resource_Labels *labels;

/**
 *  Name of the resource on which conditions will be evaluated. Must use the
 *  Relative Resource Name of the resource, which is the URI path of the
 *  resource without the leading "/". Examples are
 *  "projects/_/buckets/[BUCKET-ID]" for storage buckets or
 *  "projects/[PROJECT-ID]/global/firewalls/[FIREWALL-ID]" for a firewall. This
 *  field is required for evaluating conditions with rules on resource names.
 *  For a `list` permission check, the resource.name value must be set to the
 *  parent resource. If the parent resource is a project, this field should be
 *  left unset.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The name of the service this resource belongs to. It is configured using the
 *  official_service_name of the Service as defined in service configurations
 *  under //configs/cloud/resourcetypes. For example, the official_service_name
 *  of cloud resource manager service is set as
 *  'cloudresourcemanager.googleapis.com' according to
 *  //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml
 */
@property(nonatomic, copy, nullable) NSString *service;

/**
 *  The public resource type name of the resource on which conditions will be
 *  evaluated. It is configured using the official_name of the ResourceType as
 *  defined in service configurations under //configs/cloud/resourcetypes. For
 *  example, the official_name for GCP projects is set as
 *  'cloudresourcemanager.googleapis.com/Project' according to
 *  //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml For
 *  details see go/iam-conditions-integration-guide.
 */
@property(nonatomic, copy, nullable) NSString *type;

@end


/**
 *  The service defined labels of the resource on which the conditions will be
 *  evaluated. The semantics - including the key names - are vague to IAM. If
 *  the effective condition has a reference to a `resource.labels[foo]`
 *  construct, IAM consults with this map to retrieve the values associated with
 *  `foo` key for Conditions evaluation. If the provided key is not found in the
 *  labels map, the condition would evaluate to false. This field is in limited
 *  use. If your intended use case is not expected to express resource.labels
 *  attribute in IAM Conditions, leave this field empty. Before planning on
 *  using this attribute please: * Read go/iam-conditions-labels-comm and ensure
 *  your service can meet the data availability and management requirements. *
 *  Talk to iam-conditions-eng\@ about your use case.
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRCloudIAP_Resource_Labels : GTLRObject
@end


/**
 *  Request message for `SetIamPolicy` method.
 */
@interface GTLRCloudIAP_SetIamPolicyRequest : GTLRObject

/**
 *  REQUIRED: The complete policy to be applied to the `resource`. The size of
 *  the policy is limited to a few 10s of KB. An empty policy is a valid policy
 *  but certain Google Cloud services (such as Projects) might reject them.
 */
@property(nonatomic, strong, nullable) GTLRCloudIAP_Policy *policy;

@end


/**
 *  Request message for `TestIamPermissions` method.
 */
@interface GTLRCloudIAP_TestIamPermissionsRequest : GTLRObject

/**
 *  The set of permissions to check for the `resource`. Permissions with
 *  wildcards (such as `*` or `storage.*`) are not allowed. For more information
 *  see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  Response message for `TestIamPermissions` method.
 */
@interface GTLRCloudIAP_TestIamPermissionsResponse : GTLRObject

/**
 *  A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  A TunnelDestGroup.
 */
@interface GTLRCloudIAP_TunnelDestGroup : GTLRObject

/** Unordered list. List of CIDRs that this group applies to. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *cidrs;

/** Unordered list. List of FQDNs that this group applies to. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *fqdns;

/**
 *  Required. Immutable. Identifier for the TunnelDestGroup. Must be unique
 *  within the project and contain only lower case letters (a-z) and dashes (-).
 */
@property(nonatomic, copy, nullable) NSString *name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
