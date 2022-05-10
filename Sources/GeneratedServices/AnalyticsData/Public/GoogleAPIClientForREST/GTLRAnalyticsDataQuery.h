// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Analytics Data API (analyticsdata/v1beta)
// Description:
//   Accesses report data in Google Analytics.
// Documentation:
//   https://developers.google.com/analytics/devguides/reporting/data/v1/

#import <GoogleAPIClientForREST/GTLRQuery.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

#import "GTLRAnalyticsDataObjects.h"

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other AnalyticsData query classes.
 */
@interface GTLRAnalyticsDataQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Returns multiple pivot reports in a batch. All reports must be for the same
 *  GA4 Property.
 *
 *  Method: analyticsdata.properties.batchRunPivotReports
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesBatchRunPivotReports : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked.
 *  Specified in the URL path and not the body. To learn more, see [where to
 *  find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  This property must be specified for the batch. The property within
 *  RunPivotReportRequest may either be unspecified or consistent with this
 *  property. Example: properties/1234
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_BatchRunPivotReportsResponse.
 *
 *  Returns multiple pivot reports in a batch. All reports must be for the same
 *  GA4 Property.
 *
 *  @param object The @c GTLRAnalyticsData_BatchRunPivotReportsRequest to
 *    include in the query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. Specified in the URL path and not the body. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    This property must be specified for the batch. The property within
 *    RunPivotReportRequest may either be unspecified or consistent with this
 *    property. Example: properties/1234
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesBatchRunPivotReports
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_BatchRunPivotReportsRequest *)object
                       property:(NSString *)property;

@end

/**
 *  Returns multiple reports in a batch. All reports must be for the same GA4
 *  Property.
 *
 *  Method: analyticsdata.properties.batchRunReports
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesBatchRunReports : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked.
 *  Specified in the URL path and not the body. To learn more, see [where to
 *  find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  This property must be specified for the batch. The property within
 *  RunReportRequest may either be unspecified or consistent with this property.
 *  Example: properties/1234
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_BatchRunReportsResponse.
 *
 *  Returns multiple reports in a batch. All reports must be for the same GA4
 *  Property.
 *
 *  @param object The @c GTLRAnalyticsData_BatchRunReportsRequest to include in
 *    the query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. Specified in the URL path and not the body. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    This property must be specified for the batch. The property within
 *    RunReportRequest may either be unspecified or consistent with this
 *    property. Example: properties/1234
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesBatchRunReports
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_BatchRunReportsRequest *)object
                       property:(NSString *)property;

@end

/**
 *  This compatibility method lists dimensions and metrics that can be added to
 *  a report request and maintain compatibility. This method fails if the
 *  request's dimensions and metrics are incompatible. In Google Analytics,
 *  reports fail if they request incompatible dimensions and/or metrics; in that
 *  case, you will need to remove dimensions and/or metrics from the
 *  incompatible report until the report is compatible. The Realtime and Core
 *  reports have different compatibility rules. This method checks compatibility
 *  for Core reports.
 *
 *  Method: analyticsdata.properties.checkCompatibility
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesCheckCompatibility : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked. To
 *  learn more, see [where to find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  `property` should be the same value as in your `runReport` request. Example:
 *  properties/1234 Set the Property ID to 0 for compatibility checking on
 *  dimensions and metrics common to all properties. In this special mode, this
 *  method will not return custom dimensions and metrics.
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_CheckCompatibilityResponse.
 *
 *  This compatibility method lists dimensions and metrics that can be added to
 *  a report request and maintain compatibility. This method fails if the
 *  request's dimensions and metrics are incompatible. In Google Analytics,
 *  reports fail if they request incompatible dimensions and/or metrics; in that
 *  case, you will need to remove dimensions and/or metrics from the
 *  incompatible report until the report is compatible. The Realtime and Core
 *  reports have different compatibility rules. This method checks compatibility
 *  for Core reports.
 *
 *  @param object The @c GTLRAnalyticsData_CheckCompatibilityRequest to include
 *    in the query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. To learn more, see [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    `property` should be the same value as in your `runReport` request.
 *    Example: properties/1234 Set the Property ID to 0 for compatibility
 *    checking on dimensions and metrics common to all properties. In this
 *    special mode, this method will not return custom dimensions and metrics.
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesCheckCompatibility
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_CheckCompatibilityRequest *)object
                       property:(NSString *)property;

@end

/**
 *  Returns metadata for dimensions and metrics available in reporting methods.
 *  Used to explore the dimensions and metrics. In this method, a Google
 *  Analytics GA4 Property Identifier is specified in the request, and the
 *  metadata response includes Custom dimensions and metrics as well as
 *  Universal metadata. For example if a custom metric with parameter name
 *  `levels_unlocked` is registered to a property, the Metadata response will
 *  contain `customEvent:levels_unlocked`. Universal metadata are dimensions and
 *  metrics applicable to any property such as `country` and `totalUsers`.
 *
 *  Method: analyticsdata.properties.getMetadata
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesGetMetadata : GTLRAnalyticsDataQuery

/**
 *  Required. The resource name of the metadata to retrieve. This name field is
 *  specified in the URL path and not URL parameters. Property is a numeric
 *  Google Analytics GA4 Property identifier. To learn more, see [where to find
 *  your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  Example: properties/1234/metadata Set the Property ID to 0 for dimensions
 *  and metrics common to all properties. In this special mode, this method will
 *  not return custom dimensions and metrics.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAnalyticsData_Metadata.
 *
 *  Returns metadata for dimensions and metrics available in reporting methods.
 *  Used to explore the dimensions and metrics. In this method, a Google
 *  Analytics GA4 Property Identifier is specified in the request, and the
 *  metadata response includes Custom dimensions and metrics as well as
 *  Universal metadata. For example if a custom metric with parameter name
 *  `levels_unlocked` is registered to a property, the Metadata response will
 *  contain `customEvent:levels_unlocked`. Universal metadata are dimensions and
 *  metrics applicable to any property such as `country` and `totalUsers`.
 *
 *  @param name Required. The resource name of the metadata to retrieve. This
 *    name field is specified in the URL path and not URL parameters. Property
 *    is a numeric Google Analytics GA4 Property identifier. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    Example: properties/1234/metadata Set the Property ID to 0 for dimensions
 *    and metrics common to all properties. In this special mode, this method
 *    will not return custom dimensions and metrics.
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesGetMetadata
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Returns a customized pivot report of your Google Analytics event data. Pivot
 *  reports are more advanced and expressive formats than regular reports. In a
 *  pivot report, dimensions are only visible if they are included in a pivot.
 *  Multiple pivots can be specified to further dissect your data.
 *
 *  Method: analyticsdata.properties.runPivotReport
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesRunPivotReport : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked.
 *  Specified in the URL path and not the body. To learn more, see [where to
 *  find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  Within a batch request, this property should either be unspecified or
 *  consistent with the batch-level property. Example: properties/1234
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_RunPivotReportResponse.
 *
 *  Returns a customized pivot report of your Google Analytics event data. Pivot
 *  reports are more advanced and expressive formats than regular reports. In a
 *  pivot report, dimensions are only visible if they are included in a pivot.
 *  Multiple pivots can be specified to further dissect your data.
 *
 *  @param object The @c GTLRAnalyticsData_RunPivotReportRequest to include in
 *    the query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. Specified in the URL path and not the body. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    Within a batch request, this property should either be unspecified or
 *    consistent with the batch-level property. Example: properties/1234
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesRunPivotReport
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_RunPivotReportRequest *)object
                       property:(NSString *)property;

@end

/**
 *  Returns a customized report of realtime event data for your property. Events
 *  appear in realtime reports seconds after they have been sent to the Google
 *  Analytics. Realtime reports show events and usage data for the periods of
 *  time ranging from the present moment to 30 minutes ago (up to 60 minutes for
 *  Google Analytics 360 properties). For a guide to constructing realtime
 *  requests & understanding responses, see [Creating a Realtime
 *  Report](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics).
 *
 *  Method: analyticsdata.properties.runRealtimeReport
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesRunRealtimeReport : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked.
 *  Specified in the URL path and not the body. To learn more, see [where to
 *  find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  Example: properties/1234
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_RunRealtimeReportResponse.
 *
 *  Returns a customized report of realtime event data for your property. Events
 *  appear in realtime reports seconds after they have been sent to the Google
 *  Analytics. Realtime reports show events and usage data for the periods of
 *  time ranging from the present moment to 30 minutes ago (up to 60 minutes for
 *  Google Analytics 360 properties). For a guide to constructing realtime
 *  requests & understanding responses, see [Creating a Realtime
 *  Report](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics).
 *
 *  @param object The @c GTLRAnalyticsData_RunRealtimeReportRequest to include
 *    in the query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. Specified in the URL path and not the body. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    Example: properties/1234
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesRunRealtimeReport
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_RunRealtimeReportRequest *)object
                       property:(NSString *)property;

@end

/**
 *  Returns a customized report of your Google Analytics event data. Reports
 *  contain statistics derived from data collected by the Google Analytics
 *  tracking code. The data returned from the API is as a table with columns for
 *  the requested dimensions and metrics. Metrics are individual measurements of
 *  user activity on your property, such as active users or event count.
 *  Dimensions break down metrics across some common criteria, such as country
 *  or event name. For a guide to constructing requests & understanding
 *  responses, see [Creating a
 *  Report](https://developers.google.com/analytics/devguides/reporting/data/v1/basics).
 *
 *  Method: analyticsdata.properties.runReport
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAnalyticsDataAnalytics
 *    @c kGTLRAuthScopeAnalyticsDataAnalyticsReadonly
 */
@interface GTLRAnalyticsDataQuery_PropertiesRunReport : GTLRAnalyticsDataQuery

/**
 *  A Google Analytics GA4 property identifier whose events are tracked.
 *  Specified in the URL path and not the body. To learn more, see [where to
 *  find your Property
 *  ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *  Within a batch request, this property should either be unspecified or
 *  consistent with the batch-level property. Example: properties/1234
 */
@property(nonatomic, copy, nullable) NSString *property;

/**
 *  Fetches a @c GTLRAnalyticsData_RunReportResponse.
 *
 *  Returns a customized report of your Google Analytics event data. Reports
 *  contain statistics derived from data collected by the Google Analytics
 *  tracking code. The data returned from the API is as a table with columns for
 *  the requested dimensions and metrics. Metrics are individual measurements of
 *  user activity on your property, such as active users or event count.
 *  Dimensions break down metrics across some common criteria, such as country
 *  or event name. For a guide to constructing requests & understanding
 *  responses, see [Creating a
 *  Report](https://developers.google.com/analytics/devguides/reporting/data/v1/basics).
 *
 *  @param object The @c GTLRAnalyticsData_RunReportRequest to include in the
 *    query.
 *  @param property A Google Analytics GA4 property identifier whose events are
 *    tracked. Specified in the URL path and not the body. To learn more, see
 *    [where to find your Property
 *    ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id).
 *    Within a batch request, this property should either be unspecified or
 *    consistent with the batch-level property. Example: properties/1234
 *
 *  @return GTLRAnalyticsDataQuery_PropertiesRunReport
 */
+ (instancetype)queryWithObject:(GTLRAnalyticsData_RunReportRequest *)object
                       property:(NSString *)property;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop