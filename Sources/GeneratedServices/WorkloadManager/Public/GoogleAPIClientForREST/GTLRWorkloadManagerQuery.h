// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Workload Manager API (workloadmanager/v1)
// Documentation:
//   https://cloud.google.com/workload-manager/docs

#import <GoogleAPIClientForREST/GTLRQuery.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

#import "GTLRWorkloadManagerObjects.h"

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Workload Manager query classes.
 */
@interface GTLRWorkloadManagerQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Creates a new Evaluation in a given project and location.
 *
 *  Method: workloadmanager.projects.locations.evaluations.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsCreate : GTLRWorkloadManagerQuery

/** Required. Id of the requesting object */
@property(nonatomic, copy, nullable) NSString *evaluationId;

/**
 *  Required. The resource prefix of the evaluation location using the form:
 *  `projects/{project_id}/locations/{location_id}`
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Optional. An optional request ID to identify requests. Specify a unique
 *  request ID so that if you must retry your request, the server will know to
 *  ignore the request if it has already been completed. The server will
 *  guarantee that for at least 60 minutes since the first request. For example,
 *  consider a situation where you make an initial request and the request times
 *  out. If you make the request again with the same request ID, the server can
 *  check if original operation with the same request ID was received, and if
 *  so, will ignore the second request. This prevents clients from accidentally
 *  creating duplicate commitments. The request ID must be a valid UUID with the
 *  exception that zero UUID is not supported
 *  (00000000-0000-0000-0000-000000000000).
 */
@property(nonatomic, copy, nullable) NSString *requestId;

/**
 *  Fetches a @c GTLRWorkloadManager_Operation.
 *
 *  Creates a new Evaluation in a given project and location.
 *
 *  @param object The @c GTLRWorkloadManager_Evaluation to include in the query.
 *  @param parent Required. The resource prefix of the evaluation location using
 *    the form: `projects/{project_id}/locations/{location_id}`
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsCreate
 */
+ (instancetype)queryWithObject:(GTLRWorkloadManager_Evaluation *)object
                         parent:(NSString *)parent;

@end

/**
 *  Gets details of a single Execution.
 *
 *  Method: workloadmanager.projects.locations.evaluations.executions.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsGet : GTLRWorkloadManagerQuery

/** Required. Name of the resource */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Execution.
 *
 *  Gets details of a single Execution.
 *
 *  @param name Required. Name of the resource
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists Executions in a given project and location.
 *
 *  Method: workloadmanager.projects.locations.evaluations.executions.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsList : GTLRWorkloadManagerQuery

/** Filtering results */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Field to sort by. See https://google.aip.dev/132#ordering for more details.
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/**
 *  Requested page size. Server may return fewer items than requested. If
 *  unspecified, server will pick an appropriate default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The resource prefix of the Execution using the form:
 *  'projects/{project}/locations/{location}/evaluations/{evaluation}'
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRWorkloadManager_ListExecutionsResponse.
 *
 *  Lists Executions in a given project and location.
 *
 *  @param parent Required. The resource prefix of the Execution using the form:
 *    'projects/{project}/locations/{location}/evaluations/{evaluation}'
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  List the running result of a single Execution.
 *
 *  Method: workloadmanager.projects.locations.evaluations.executions.results.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsResultsList : GTLRWorkloadManagerQuery

/** Filtering results */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Requested page size. Server may return fewer items than requested. If
 *  unspecified, server will pick an appropriate default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The execution results. Format: {parent}/evaluations/ *
 *  /executions/ * /results
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRWorkloadManager_ListExecutionResultsResponse.
 *
 *  List the running result of a single Execution.
 *
 *  @param parent Required. The execution results. Format: {parent}/evaluations/
 *    * /executions/ * /results
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsResultsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Creates a new Execution in a given project and location.
 *
 *  Method: workloadmanager.projects.locations.evaluations.executions.run
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsRun : GTLRWorkloadManagerQuery

/**
 *  Required. The resource name of the Execution using the form:
 *  'projects/{project}/locations/{location}/evaluations/{evaluation}/executions/{execution}'
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Operation.
 *
 *  Creates a new Execution in a given project and location.
 *
 *  @param object The @c GTLRWorkloadManager_RunEvaluationRequest to include in
 *    the query.
 *  @param name Required. The resource name of the Execution using the form:
 *    'projects/{project}/locations/{location}/evaluations/{evaluation}/executions/{execution}'
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsRun
 */
+ (instancetype)queryWithObject:(GTLRWorkloadManager_RunEvaluationRequest *)object
                           name:(NSString *)name;

@end

/**
 *  List all scanned resources for a single Execution.
 *
 *  Method: workloadmanager.projects.locations.evaluations.executions.scannedResources.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsScannedResourcesList : GTLRWorkloadManagerQuery

/** Filtering results */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Field to sort by. See https://google.aip.dev/132#ordering for more details.
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/**
 *  Requested page size. Server may return fewer items than requested. If
 *  unspecified, server will pick an appropriate default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Required. parent for ListScannedResourcesRequest */
@property(nonatomic, copy, nullable) NSString *parent;

/** rule name */
@property(nonatomic, copy, nullable) NSString *rule;

/**
 *  Fetches a @c GTLRWorkloadManager_ListScannedResourcesResponse.
 *
 *  List all scanned resources for a single Execution.
 *
 *  @param parent Required. parent for ListScannedResourcesRequest
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsExecutionsScannedResourcesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Gets details of a single Evaluation.
 *
 *  Method: workloadmanager.projects.locations.evaluations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsGet : GTLRWorkloadManagerQuery

/** Required. Name of the resource */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Evaluation.
 *
 *  Gets details of a single Evaluation.
 *
 *  @param name Required. Name of the resource
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists Evaluations in a given project and location.
 *
 *  Method: workloadmanager.projects.locations.evaluations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsList : GTLRWorkloadManagerQuery

/** Filtering results */
@property(nonatomic, copy, nullable) NSString *filter;

/** Hint for how to order the results */
@property(nonatomic, copy, nullable) NSString *orderBy;

/**
 *  Requested page size. Server may return fewer items than requested. If
 *  unspecified, server will pick an appropriate default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Required. Parent value for ListEvaluationsRequest */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRWorkloadManager_ListEvaluationsResponse.
 *
 *  Lists Evaluations in a given project and location.
 *
 *  @param parent Required. Parent value for ListEvaluationsRequest
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsEvaluationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Gets information about a location.
 *
 *  Method: workloadmanager.projects.locations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsGet : GTLRWorkloadManagerQuery

/** Resource name for the location. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Location.
 *
 *  Gets information about a location.
 *
 *  @param name Resource name for the location.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Write the data insights to workload manager data warehouse.
 *
 *  Method: workloadmanager.projects.locations.insights.writeInsight
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsInsightsWriteInsight : GTLRWorkloadManagerQuery

/**
 *  Required. The GCP location. The format is:
 *  projects/{project}/locations/{location}.
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  Fetches a @c GTLRWorkloadManager_WriteInsightResponse.
 *
 *  Write the data insights to workload manager data warehouse.
 *
 *  @param object The @c GTLRWorkloadManager_WriteInsightRequest to include in
 *    the query.
 *  @param location Required. The GCP location. The format is:
 *    projects/{project}/locations/{location}.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsInsightsWriteInsight
 */
+ (instancetype)queryWithObject:(GTLRWorkloadManager_WriteInsightRequest *)object
                       location:(NSString *)location;

@end

/**
 *  Lists information about the supported locations for this service.
 *
 *  Method: workloadmanager.projects.locations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsList : GTLRWorkloadManagerQuery

/**
 *  A filter to narrow down results to a preferred subset. The filtering
 *  language accepts strings like `"displayName=tokyo"`, and is documented in
 *  more detail in [AIP-160](https://google.aip.dev/160).
 */
@property(nonatomic, copy, nullable) NSString *filter;

/** The resource that owns the locations collection, if applicable. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The maximum number of results to return. If not set, the service selects a
 *  default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  A page token received from the `next_page_token` field in the response. Send
 *  that page token to receive the subsequent page.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRWorkloadManager_ListLocationsResponse.
 *
 *  Lists information about the supported locations for this service.
 *
 *  @param name The resource that owns the locations collection, if applicable.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  Method: workloadmanager.projects.locations.operations.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsOperationsCancel : GTLRWorkloadManagerQuery

/** The name of the operation resource to be cancelled. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Empty.
 *
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  @param object The @c GTLRWorkloadManager_CancelOperationRequest to include
 *    in the query.
 *  @param name The name of the operation resource to be cancelled.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsOperationsCancel
 */
+ (instancetype)queryWithObject:(GTLRWorkloadManager_CancelOperationRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  Method: workloadmanager.projects.locations.operations.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsOperationsDelete : GTLRWorkloadManagerQuery

/** The name of the operation resource to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Empty.
 *
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  @param name The name of the operation resource to be deleted.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsOperationsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: workloadmanager.projects.locations.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsOperationsGet : GTLRWorkloadManagerQuery

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRWorkloadManager_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsOperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *
 *  Method: workloadmanager.projects.locations.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsOperationsList : GTLRWorkloadManagerQuery

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The name of the operation's parent resource. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRWorkloadManager_ListOperationsResponse.
 *
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *
 *  @param name The name of the operation's parent resource.
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsOperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists rules in a given project.
 *
 *  Method: workloadmanager.projects.locations.rules.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeWorkloadManagerCloudPlatform
 */
@interface GTLRWorkloadManagerQuery_ProjectsLocationsRulesList : GTLRWorkloadManagerQuery

/** Filter based on primary_category, secondary_category */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Requested page size. Server may return fewer items than requested. If
 *  unspecified, server will pick an appropriate default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results the server should return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The [project] on which to execute the request. The format is:
 *  projects/{project_id}/locations/{location} Currently, the pre-defined rules
 *  are global available to all projects and all regions
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRWorkloadManager_ListRulesResponse.
 *
 *  Lists rules in a given project.
 *
 *  @param parent Required. The [project] on which to execute the request. The
 *    format is: projects/{project_id}/locations/{location} Currently, the
 *    pre-defined rules are global available to all projects and all regions
 *
 *  @return GTLRWorkloadManagerQuery_ProjectsLocationsRulesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop