// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Notebooks API (notebooks/v2)
// Description:
//   Notebooks API is used to manage notebook resources in Google Cloud.
// Documentation:
//   https://cloud.google.com/notebooks/docs/

#import <GoogleAPIClientForREST/GTLRAIPlatformNotebooksObjects.h>

// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Binding
//

@implementation GTLRAIPlatformNotebooks_Binding
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
//   GTLRAIPlatformNotebooks_CancelOperationRequest
//

@implementation GTLRAIPlatformNotebooks_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Empty
//

@implementation GTLRAIPlatformNotebooks_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Expr
//

@implementation GTLRAIPlatformNotebooks_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_ListLocationsResponse
//

@implementation GTLRAIPlatformNotebooks_ListLocationsResponse
@dynamic locations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"locations" : [GTLRAIPlatformNotebooks_Location class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"locations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_ListOperationsResponse
//

@implementation GTLRAIPlatformNotebooks_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRAIPlatformNotebooks_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Location
//

@implementation GTLRAIPlatformNotebooks_Location
@dynamic displayName, labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Location_Labels
//

@implementation GTLRAIPlatformNotebooks_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Location_Metadata
//

@implementation GTLRAIPlatformNotebooks_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Operation
//

@implementation GTLRAIPlatformNotebooks_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Operation_Metadata
//

@implementation GTLRAIPlatformNotebooks_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Operation_Response
//

@implementation GTLRAIPlatformNotebooks_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_OperationMetadata
//

@implementation GTLRAIPlatformNotebooks_OperationMetadata
@dynamic apiVersion, createTime, endpoint, endTime, requestedCancellation,
         statusMessage, target, verb;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Policy
//

@implementation GTLRAIPlatformNotebooks_Policy
@dynamic bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bindings" : [GTLRAIPlatformNotebooks_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_SetIamPolicyRequest
//

@implementation GTLRAIPlatformNotebooks_SetIamPolicyRequest
@dynamic policy;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Status
//

@implementation GTLRAIPlatformNotebooks_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRAIPlatformNotebooks_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_Status_Details_Item
//

@implementation GTLRAIPlatformNotebooks_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAIPlatformNotebooks_TestIamPermissionsRequest
//

@implementation GTLRAIPlatformNotebooks_TestIamPermissionsRequest
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
//   GTLRAIPlatformNotebooks_TestIamPermissionsResponse
//

@implementation GTLRAIPlatformNotebooks_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end
