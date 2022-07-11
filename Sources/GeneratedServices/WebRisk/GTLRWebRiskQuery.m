// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Web Risk API (webrisk/v1)
// Documentation:
//   https://cloud.google.com/web-risk/

#import <GoogleAPIClientForREST/GTLRWebRiskQuery.h>

// ----------------------------------------------------------------------------
// Constants

// constraintsSupportedCompressions
NSString * const kGTLRWebRiskConstraintsSupportedCompressionsCompressionTypeUnspecified = @"COMPRESSION_TYPE_UNSPECIFIED";
NSString * const kGTLRWebRiskConstraintsSupportedCompressionsRaw = @"RAW";
NSString * const kGTLRWebRiskConstraintsSupportedCompressionsRice = @"RICE";

// threatType
NSString * const kGTLRWebRiskThreatTypeHighRecall            = @"HIGH_RECALL";
NSString * const kGTLRWebRiskThreatTypeMalware               = @"MALWARE";
NSString * const kGTLRWebRiskThreatTypeSocialEngineering     = @"SOCIAL_ENGINEERING";
NSString * const kGTLRWebRiskThreatTypeThreatTypeUnspecified = @"THREAT_TYPE_UNSPECIFIED";
NSString * const kGTLRWebRiskThreatTypeUnwantedSoftware      = @"UNWANTED_SOFTWARE";

// threatTypes
NSString * const kGTLRWebRiskThreatTypesHighRecall            = @"HIGH_RECALL";
NSString * const kGTLRWebRiskThreatTypesMalware               = @"MALWARE";
NSString * const kGTLRWebRiskThreatTypesSocialEngineering     = @"SOCIAL_ENGINEERING";
NSString * const kGTLRWebRiskThreatTypesThreatTypeUnspecified = @"THREAT_TYPE_UNSPECIFIED";
NSString * const kGTLRWebRiskThreatTypesUnwantedSoftware      = @"UNWANTED_SOFTWARE";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRWebRiskQuery

@dynamic fields;

@end

@implementation GTLRWebRiskQuery_HashesSearch

@dynamic hashPrefix, threatTypes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"threatTypes" : [NSString class]
  };
  return map;
}

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/hashes:search";
  GTLRWebRiskQuery_HashesSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRWebRisk_GoogleCloudWebriskV1SearchHashesResponse class];
  query.loggingName = @"webrisk.hashes.search";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsOperationsCancel

@dynamic name;

+ (instancetype)queryWithObject:(GTLRWebRisk_GoogleLongrunningCancelOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRWebRiskQuery_ProjectsOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRWebRisk_GoogleProtobufEmpty class];
  query.loggingName = @"webrisk.projects.operations.cancel";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRWebRiskQuery_ProjectsOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRWebRisk_GoogleProtobufEmpty class];
  query.loggingName = @"webrisk.projects.operations.delete";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRWebRiskQuery_ProjectsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRWebRisk_GoogleLongrunningOperation class];
  query.loggingName = @"webrisk.projects.operations.get";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/operations";
  GTLRWebRiskQuery_ProjectsOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRWebRisk_GoogleLongrunningListOperationsResponse class];
  query.loggingName = @"webrisk.projects.operations.list";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsSubmissionsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRWebRisk_GoogleCloudWebriskV1Submission *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/submissions";
  GTLRWebRiskQuery_ProjectsSubmissionsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRWebRisk_GoogleCloudWebriskV1Submission class];
  query.loggingName = @"webrisk.projects.submissions.create";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ProjectsUrisSubmit

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRWebRisk_GoogleCloudWebriskV1SubmitUriRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/uris:submit";
  GTLRWebRiskQuery_ProjectsUrisSubmit *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRWebRisk_GoogleLongrunningOperation class];
  query.loggingName = @"webrisk.projects.uris.submit";
  return query;
}

@end

@implementation GTLRWebRiskQuery_ThreatListsComputeDiff

@dynamic constraintsMaxDatabaseEntries, constraintsMaxDiffEntries,
         constraintsSupportedCompressions, threatType, versionToken;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"constraintsMaxDatabaseEntries" : @"constraints.maxDatabaseEntries",
    @"constraintsMaxDiffEntries" : @"constraints.maxDiffEntries",
    @"constraintsSupportedCompressions" : @"constraints.supportedCompressions"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"constraints.supportedCompressions" : [NSString class]
  };
  return map;
}

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/threatLists:computeDiff";
  GTLRWebRiskQuery_ThreatListsComputeDiff *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRWebRisk_GoogleCloudWebriskV1ComputeThreatListDiffResponse class];
  query.loggingName = @"webrisk.threatLists.computeDiff";
  return query;
}

@end

@implementation GTLRWebRiskQuery_UrisSearch

@dynamic threatTypes, uri;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"threatTypes" : [NSString class]
  };
  return map;
}

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/uris:search";
  GTLRWebRiskQuery_UrisSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRWebRisk_GoogleCloudWebriskV1SearchUrisResponse class];
  query.loggingName = @"webrisk.uris.search";
  return query;
}

@end
