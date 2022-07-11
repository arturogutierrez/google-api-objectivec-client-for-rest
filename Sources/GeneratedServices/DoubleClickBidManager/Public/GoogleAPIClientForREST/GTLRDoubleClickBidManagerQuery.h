// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   DoubleClick Bid Manager API (doubleclickbidmanager/v2)
// Description:
//   DoubleClick Bid Manager API allows users to manage and create campaigns and
//   reports.
// Documentation:
//   https://developers.google.com/bid-manager/

#import <GoogleAPIClientForREST/GTLRQuery.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

#import "GTLRDoubleClickBidManagerObjects.h"

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other DoubleClick Bid Manager query classes.
 */
@interface GTLRDoubleClickBidManagerQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Creates a query.
 *
 *  Method: doubleclickbidmanager.queries.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesCreate : GTLRDoubleClickBidManagerQuery

/**
 *  Fetches a @c GTLRDoubleClickBidManager_Query.
 *
 *  Creates a query.
 *
 *  @param object The @c GTLRDoubleClickBidManager_Query to include in the
 *    query.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesCreate
 */
+ (instancetype)queryWithObject:(GTLRDoubleClickBidManager_Query *)object;

@end

/**
 *  Deletes a stored query as well as the associated stored reports.
 *
 *  Method: doubleclickbidmanager.queries.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesDelete : GTLRDoubleClickBidManagerQuery

/** Required. Query ID to delete. */
@property(nonatomic, assign) long long queryId;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes a stored query as well as the associated stored reports.
 *
 *  @param queryId Required. Query ID to delete.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesDelete
 */
+ (instancetype)queryWithQueryId:(long long)queryId;

@end

/**
 *  Retrieves a stored query.
 *
 *  Method: doubleclickbidmanager.queries.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesGet : GTLRDoubleClickBidManagerQuery

/** Required. Query ID to retrieve. */
@property(nonatomic, assign) long long queryId;

/**
 *  Fetches a @c GTLRDoubleClickBidManager_Query.
 *
 *  Retrieves a stored query.
 *
 *  @param queryId Required. Query ID to retrieve.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesGet
 */
+ (instancetype)queryWithQueryId:(long long)queryId;

@end

/**
 *  Retrieves stored queries.
 *
 *  Method: doubleclickbidmanager.queries.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesList : GTLRDoubleClickBidManagerQuery

/**
 *  Name of a field used to order results. The default sorting order is
 *  ascending. To specify descending order for a field, append a " desc" suffix.
 *  For example "metadata.title desc". Sorting is only supported for the
 *  following fields: * queryId * metadata.title
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/**
 *  Maximum number of results per page. Must be between `1` and `100`. Defaults
 *  to `100` if unspecified.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  A page token, received from a previous list call. Provide this to retrieve
 *  the subsequent page of queries.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRDoubleClickBidManager_ListQueriesResponse.
 *
 *  Retrieves stored queries.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Retrieves a stored report.
 *
 *  Method: doubleclickbidmanager.queries.reports.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesReportsGet : GTLRDoubleClickBidManagerQuery

/** Required. ID of the query the report is associated with. */
@property(nonatomic, assign) long long queryId;

/** Required. ID of the report to retrieve. */
@property(nonatomic, assign) long long reportId;

/**
 *  Fetches a @c GTLRDoubleClickBidManager_Report.
 *
 *  Retrieves a stored report.
 *
 *  @param queryId Required. ID of the query the report is associated with.
 *  @param reportId Required. ID of the report to retrieve.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesReportsGet
 */
+ (instancetype)queryWithQueryId:(long long)queryId
                        reportId:(long long)reportId;

@end

/**
 *  Lists reports.
 *
 *  Method: doubleclickbidmanager.queries.reports.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesReportsList : GTLRDoubleClickBidManagerQuery

/**
 *  Name of a field used to order results. The default sorting order is
 *  ascending. To specify descending order for a field, append a " desc" suffix.
 *  For example "key.reportId desc". Sorting is only supported for the following
 *  fields: * key.reportId
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/**
 *  Maximum number of results per page. Must be between `1` and `100`. Defaults
 *  to `100` if unspecified.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  A page token, received from a previous list call. Provide this to retrieve
 *  the subsequent page of reports.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Required. Query ID with which the reports are associated. */
@property(nonatomic, assign) long long queryId;

/**
 *  Fetches a @c GTLRDoubleClickBidManager_ListReportsResponse.
 *
 *  Lists reports.
 *
 *  @param queryId Required. Query ID with which the reports are associated.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesReportsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithQueryId:(long long)queryId;

@end

/**
 *  Runs a stored query to generate a report.
 *
 *  Method: doubleclickbidmanager.queries.run
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDoubleClickBidManager
 */
@interface GTLRDoubleClickBidManagerQuery_QueriesRun : GTLRDoubleClickBidManagerQuery

/** Required. Query ID to run. */
@property(nonatomic, assign) long long queryId;

/**
 *  Whether the query should be run synchronously. When true, this method will
 *  not return until the query has finished running. When false or not
 *  specified, this method will return immediately.
 */
@property(nonatomic, assign) BOOL synchronous;

/**
 *  Fetches a @c GTLRDoubleClickBidManager_Report.
 *
 *  Runs a stored query to generate a report.
 *
 *  @param object The @c GTLRDoubleClickBidManager_RunQueryRequest to include in
 *    the query.
 *  @param queryId Required. Query ID to run.
 *
 *  @return GTLRDoubleClickBidManagerQuery_QueriesRun
 */
+ (instancetype)queryWithObject:(GTLRDoubleClickBidManager_RunQueryRequest *)object
                        queryId:(long long)queryId;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
