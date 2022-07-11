// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Eventarc API (eventarc/v1)
// Description:
//   Build event-driven applications on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/eventarc

#import <GoogleAPIClientForREST/GTLREventarcQuery.h>

@implementation GTLREventarcQuery

@dynamic fields;

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsCreate

@dynamic channelConnectionId, parent;

+ (instancetype)queryWithObject:(GTLREventarc_ChannelConnection *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/channelConnections";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.create";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.delete";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_ChannelConnection class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.getIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/channelConnections";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_ListChannelConnectionsResponse class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.setIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelConnectionsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLREventarcQuery_ProjectsLocationsChannelConnectionsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_TestIamPermissionsResponse class];
  query.loggingName = @"eventarc.projects.locations.channelConnections.testIamPermissions";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsCreate

@dynamic channelId, parent, validateOnly;

+ (instancetype)queryWithObject:(GTLREventarc_Channel *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/channels";
  GTLREventarcQuery_ProjectsLocationsChannelsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.channels.create";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsDelete

@dynamic name, validateOnly;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsChannelsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.channels.delete";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsChannelsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Channel class];
  query.loggingName = @"eventarc.projects.locations.channels.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLREventarcQuery_ProjectsLocationsChannelsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.channels.getIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/channels";
  GTLREventarcQuery_ProjectsLocationsChannelsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_ListChannelsResponse class];
  query.loggingName = @"eventarc.projects.locations.channels.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsPatch

@dynamic name, updateMask, validateOnly;

+ (instancetype)queryWithObject:(GTLREventarc_Channel *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsChannelsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.channels.patch";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLREventarcQuery_ProjectsLocationsChannelsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.channels.setIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsChannelsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLREventarcQuery_ProjectsLocationsChannelsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_TestIamPermissionsResponse class];
  query.loggingName = @"eventarc.projects.locations.channels.testIamPermissions";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Location class];
  query.loggingName = @"eventarc.projects.locations.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsGetGoogleChannelConfig

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsGetGoogleChannelConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleChannelConfig class];
  query.loggingName = @"eventarc.projects.locations.getGoogleChannelConfig";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/locations";
  GTLREventarcQuery_ProjectsLocationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_ListLocationsResponse class];
  query.loggingName = @"eventarc.projects.locations.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsOperationsCancel

@dynamic name;

+ (instancetype)queryWithObject:(GTLREventarc_GoogleLongrunningCancelOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLREventarcQuery_ProjectsLocationsOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Empty class];
  query.loggingName = @"eventarc.projects.locations.operations.cancel";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Empty class];
  query.loggingName = @"eventarc.projects.locations.operations.delete";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.operations.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/operations";
  GTLREventarcQuery_ProjectsLocationsOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningListOperationsResponse class];
  query.loggingName = @"eventarc.projects.locations.operations.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsProvidersGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsProvidersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Provider class];
  query.loggingName = @"eventarc.projects.locations.providers.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsProvidersList

@dynamic filter, orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/providers";
  GTLREventarcQuery_ProjectsLocationsProvidersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_ListProvidersResponse class];
  query.loggingName = @"eventarc.projects.locations.providers.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersCreate

@dynamic parent, triggerId, validateOnly;

+ (instancetype)queryWithObject:(GTLREventarc_Trigger *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/triggers";
  GTLREventarcQuery_ProjectsLocationsTriggersCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.triggers.create";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersDelete

@dynamic allowMissing, ETag, name, validateOnly;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"ETag" : @"etag" };
}

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsTriggersDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.triggers.delete";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsTriggersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_Trigger class];
  query.loggingName = @"eventarc.projects.locations.triggers.get";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLREventarcQuery_ProjectsLocationsTriggersGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.triggers.getIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersList

@dynamic filter, orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/triggers";
  GTLREventarcQuery_ProjectsLocationsTriggersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLREventarc_ListTriggersResponse class];
  query.loggingName = @"eventarc.projects.locations.triggers.list";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersPatch

@dynamic allowMissing, name, updateMask, validateOnly;

+ (instancetype)queryWithObject:(GTLREventarc_Trigger *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsTriggersPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleLongrunningOperation class];
  query.loggingName = @"eventarc.projects.locations.triggers.patch";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLREventarcQuery_ProjectsLocationsTriggersSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_Policy class];
  query.loggingName = @"eventarc.projects.locations.triggers.setIamPolicy";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsTriggersTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLREventarc_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLREventarcQuery_ProjectsLocationsTriggersTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLREventarc_TestIamPermissionsResponse class];
  query.loggingName = @"eventarc.projects.locations.triggers.testIamPermissions";
  return query;
}

@end

@implementation GTLREventarcQuery_ProjectsLocationsUpdateGoogleChannelConfig

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLREventarc_GoogleChannelConfig *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLREventarcQuery_ProjectsLocationsUpdateGoogleChannelConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLREventarc_GoogleChannelConfig class];
  query.loggingName = @"eventarc.projects.locations.updateGoogleChannelConfig";
  return query;
}

@end
