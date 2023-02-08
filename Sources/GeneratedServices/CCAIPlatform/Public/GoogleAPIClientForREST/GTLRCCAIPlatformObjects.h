// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Contact Center AI Platform API (contactcenteraiplatform/v1alpha1)
// Documentation:
//   https://cloud.google.com/solutions/contact-center-ai-platform

#import <GoogleAPIClientForREST/GTLRObject.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRCCAIPlatform_ContactCenter;
@class GTLRCCAIPlatform_ContactCenter_Labels;
@class GTLRCCAIPlatform_InstanceConfig;
@class GTLRCCAIPlatform_Location;
@class GTLRCCAIPlatform_Location_Labels;
@class GTLRCCAIPlatform_Location_Metadata;
@class GTLRCCAIPlatform_Operation;
@class GTLRCCAIPlatform_Operation_Metadata;
@class GTLRCCAIPlatform_Operation_Response;
@class GTLRCCAIPlatform_SAMLParams;
@class GTLRCCAIPlatform_Status;
@class GTLRCCAIPlatform_Status_Details_Item;
@class GTLRCCAIPlatform_URIs;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRCCAIPlatform_ContactCenter.state

/**
 *  State DEPLOYED
 *
 *  Value: "STATE_DEPLOYED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateDeployed;
/**
 *  State DEPLOYING
 *
 *  Value: "STATE_DEPLOYING"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateDeploying;
/**
 *  State FAILED
 *
 *  Value: "STATE_FAILED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateFailed;
/**
 *  State TERMINATED
 *
 *  Value: "STATE_TERMINATED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateTerminated;
/**
 *  State TERMINATING
 *
 *  Value: "STATE_TERMINATING"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateTerminating;
/**
 *  State TERMINATING_FAILED
 *
 *  Value: "STATE_TERMINATING_FAILED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateTerminatingFailed;
/**
 *  The default value. This value is used if the state is omitted.
 *
 *  Value: "STATE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_ContactCenter_State_StateUnspecified;

// ----------------------------------------------------------------------------
// GTLRCCAIPlatform_InstanceConfig.instanceSize

/**
 *  The default value. This value is used if the state is omitted.
 *
 *  Value: "INSTANCE_SIZE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_InstanceSizeUnspecified;
/**
 *  Instance Size STANDARD_2XLARGE.
 *
 *  Value: "STANDARD_2XLARGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_Standard2xlarge;
/**
 *  Instance Size STANDARD_3XLARGE.
 *
 *  Value: "STANDARD_3XLARGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_Standard3xlarge;
/**
 *  Instance Size STANDARD_LARGE.
 *
 *  Value: "STANDARD_LARGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardLarge;
/**
 *  Instance Size STANDARD_MEDIUM.
 *
 *  Value: "STANDARD_MEDIUM"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardMedium;
/**
 *  Instance Size STANDARD_SMALL.
 *
 *  Value: "STANDARD_SMALL"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardSmall;
/**
 *  Instance Size STANDARD_XLARGE.
 *
 *  Value: "STANDARD_XLARGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardXlarge;

/**
 *  The request message for Operations.CancelOperation.
 */
@interface GTLRCCAIPlatform_CancelOperationRequest : GTLRObject
@end


/**
 *  Message describing ContactCenter object
 */
@interface GTLRCCAIPlatform_ContactCenter : GTLRObject

/**
 *  Optional. Whether to enable users to be created in the CCAIP-instance
 *  concurrently to having users in Cloud identity
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *ccaipManagedUsers;

/** Output only. [Output only] Create time stamp */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/**
 *  Required. Immutable. At least 2 and max 16 char long, must conform to [RFC
 *  1035](https://www.ietf.org/rfc/rfc1035.txt).
 */
@property(nonatomic, copy, nullable) NSString *customerDomainPrefix;

/** Required. A user friendly name for the ContactCenter. */
@property(nonatomic, copy, nullable) NSString *displayName;

/**
 *  The configuration of this instance, it is currently immutable once created.
 */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_InstanceConfig *instanceConfig;

/** Labels as key value pairs */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_ContactCenter_Labels *labels;

/** name of resource */
@property(nonatomic, copy, nullable) NSString *name;

/** Optional. Params that sets up Google as IdP. */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_SAMLParams *samlParams;

/**
 *  Output only. The state of this contact center.
 *
 *  Likely values:
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateDeployed State DEPLOYED
 *        (Value: "STATE_DEPLOYED")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateDeploying State
 *        DEPLOYING (Value: "STATE_DEPLOYING")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateFailed State FAILED
 *        (Value: "STATE_FAILED")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateTerminated State
 *        TERMINATED (Value: "STATE_TERMINATED")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateTerminating State
 *        TERMINATING (Value: "STATE_TERMINATING")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateTerminatingFailed State
 *        TERMINATING_FAILED (Value: "STATE_TERMINATING_FAILED")
 *    @arg @c kGTLRCCAIPlatform_ContactCenter_State_StateUnspecified The default
 *        value. This value is used if the state is omitted. (Value:
 *        "STATE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *state;

/** Output only. [Output only] Update time stamp */
@property(nonatomic, strong, nullable) GTLRDateTime *updateTime;

/** Output only. URIs to access the deployed ContactCenters. */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_URIs *uris;

/** Optional. Email address of the first admin users. */
@property(nonatomic, copy, nullable) NSString *userEmail;

@end


/**
 *  Labels as key value pairs
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRCCAIPlatform_ContactCenter_Labels : GTLRObject
@end


/**
 *  Represents a quota for contact centers.
 */
@interface GTLRCCAIPlatform_ContactCenterQuota : GTLRObject

/**
 *  Reflects the count limit of contact centers on a billing account.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *contactCenterCountLimit;

/**
 *  Reflects the count sum of contact centers on a billing account.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *contactCenterCountSum;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
@interface GTLRCCAIPlatform_Empty : GTLRObject
@end


/**
 *  Message storing the instance configuration.
 */
@interface GTLRCCAIPlatform_InstanceConfig : GTLRObject

/**
 *  The instance size of this the instance configuration.
 *
 *  Likely values:
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_InstanceSizeUnspecified
 *        The default value. This value is used if the state is omitted. (Value:
 *        "INSTANCE_SIZE_UNSPECIFIED")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_Standard2xlarge
 *        Instance Size STANDARD_2XLARGE. (Value: "STANDARD_2XLARGE")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_Standard3xlarge
 *        Instance Size STANDARD_3XLARGE. (Value: "STANDARD_3XLARGE")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardLarge
 *        Instance Size STANDARD_LARGE. (Value: "STANDARD_LARGE")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardMedium
 *        Instance Size STANDARD_MEDIUM. (Value: "STANDARD_MEDIUM")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardSmall
 *        Instance Size STANDARD_SMALL. (Value: "STANDARD_SMALL")
 *    @arg @c kGTLRCCAIPlatform_InstanceConfig_InstanceSize_StandardXlarge
 *        Instance Size STANDARD_XLARGE. (Value: "STANDARD_XLARGE")
 */
@property(nonatomic, copy, nullable) NSString *instanceSize;

@end


/**
 *  Message for response to listing ContactCenters
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "contactCenters" property. If returned as the result of a query,
 *        it should support automatic pagination (when @c shouldFetchNextPages
 *        is enabled).
 */
@interface GTLRCCAIPlatform_ListContactCentersResponse : GTLRCollectionObject

/**
 *  The list of ContactCenter
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCCAIPlatform_ContactCenter *> *contactCenters;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/** Locations that could not be reached. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *unreachable;

@end


/**
 *  The response message for Locations.ListLocations.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "locations" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRCCAIPlatform_ListLocationsResponse : GTLRCollectionObject

/**
 *  A list of locations that matches the specified filter in the request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCCAIPlatform_Location *> *locations;

/** The standard List next-page token. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  The response message for Operations.ListOperations.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "operations" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRCCAIPlatform_ListOperationsResponse : GTLRCollectionObject

/** The standard List next-page token. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  A list of operations that matches the specified filter in the request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCCAIPlatform_Operation *> *operations;

@end


/**
 *  A resource that represents Google Cloud Platform location.
 */
@interface GTLRCCAIPlatform_Location : GTLRObject

/**
 *  The friendly name for this location, typically a nearby city name. For
 *  example, "Tokyo".
 */
@property(nonatomic, copy, nullable) NSString *displayName;

/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_Location_Labels *labels;

/** The canonical id for this location. For example: `"us-east1"`. */
@property(nonatomic, copy, nullable) NSString *locationId;

/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_Location_Metadata *metadata;

/**
 *  Resource name for the location, which may vary between implementations. For
 *  example: `"projects/example-project/locations/us-east1"`
 */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRCCAIPlatform_Location_Labels : GTLRObject
@end


/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRCCAIPlatform_Location_Metadata : GTLRObject
@end


/**
 *  This resource represents a long-running operation that is the result of a
 *  network API call.
 */
@interface GTLRCCAIPlatform_Operation : GTLRObject

/**
 *  If the value is `false`, it means the operation is still in progress. If
 *  `true`, the operation is completed, and either `error` or `response` is
 *  available.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *done;

/** The error result of the operation in case of failure or cancellation. */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_Status *error;

/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_Operation_Metadata *metadata;

/**
 *  The server-assigned name, which is only unique within the same service that
 *  originally returns it. If you use the default HTTP mapping, the `name`
 *  should be a resource name ending with `operations/{unique_id}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_Operation_Response *response;

@end


/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRCCAIPlatform_Operation_Metadata : GTLRObject
@end


/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRCCAIPlatform_Operation_Response : GTLRObject
@end


/**
 *  Represents the metadata of the long-running operation.
 */
@interface GTLRCCAIPlatform_OperationMetadata : GTLRObject

/** Output only. API version used to start the operation. */
@property(nonatomic, copy, nullable) NSString *apiVersion;

/** Contact center information for this request */
@property(nonatomic, strong, nullable) GTLRCCAIPlatform_ContactCenter *contactCenter;

/** Output only. The time the operation was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** Output only. The time the operation finished running. */
@property(nonatomic, strong, nullable) GTLRDateTime *endTime;

/**
 *  Output only. Identifies whether the user has requested cancellation of the
 *  operation. Operations that have been cancelled successfully have
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *requestedCancellation;

/** Output only. Human-readable status of the operation, if any. */
@property(nonatomic, copy, nullable) NSString *statusMessage;

/**
 *  Output only. Server-defined resource path for the target of the operation.
 */
@property(nonatomic, copy, nullable) NSString *target;

/** Output only. Name of the verb executed by the operation. */
@property(nonatomic, copy, nullable) NSString *verb;

@end


/**
 *  Message storing SAML params to enable Google as IDP.
 */
@interface GTLRCCAIPlatform_SAMLParams : GTLRObject

/** SAML certificate */
@property(nonatomic, copy, nullable) NSString *certificate;

/** Entity id URL */
@property(nonatomic, copy, nullable) NSString *entityId;

/** Single sign-on URL */
@property(nonatomic, copy, nullable) NSString *ssoUri;

/** Email address of the first admin users. */
@property(nonatomic, copy, nullable) NSString *userEmail;

@end


/**
 *  The `Status` type defines a logical error model that is suitable for
 *  different programming environments, including REST APIs and RPC APIs. It is
 *  used by [gRPC](https://github.com/grpc). Each `Status` message contains
 *  three pieces of data: error code, error message, and error details. You can
 *  find out more about this error model and how to work with it in the [API
 *  Design Guide](https://cloud.google.com/apis/design/errors).
 */
@interface GTLRCCAIPlatform_Status : GTLRObject

/**
 *  The status code, which should be an enum value of google.rpc.Code.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *code;

/**
 *  A list of messages that carry the error details. There is a common set of
 *  message types for APIs to use.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCCAIPlatform_Status_Details_Item *> *details;

/**
 *  A developer-facing error message, which should be in English. Any
 *  user-facing error message should be localized and sent in the
 *  google.rpc.Status.details field, or localized by the client.
 */
@property(nonatomic, copy, nullable) NSString *message;

@end


/**
 *  GTLRCCAIPlatform_Status_Details_Item
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRCCAIPlatform_Status_Details_Item : GTLRObject
@end


/**
 *  Message storing the URIs of the ContactCenter.
 */
@interface GTLRCCAIPlatform_URIs : GTLRObject

/** Chat Bot Uri of the ContactCenter */
@property(nonatomic, copy, nullable) NSString *chatBotUri;

/** Media Uri of the ContactCenter. */
@property(nonatomic, copy, nullable) NSString *mediaUri;

/** Root Uri of the ContactCenter. */
@property(nonatomic, copy, nullable) NSString *rootUri;

/** Virtual Agent Streaming Service Uri of the ContactCenter. */
@property(nonatomic, copy, nullable) NSString *virtualAgentStreamingServiceUri;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
