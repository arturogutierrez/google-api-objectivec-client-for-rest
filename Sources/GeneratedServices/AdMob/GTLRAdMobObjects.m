// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   AdMob API (admob/v1)
// Description:
//   The AdMob API allows publishers to programmatically get information about
//   their AdMob account.
// Documentation:
//   https://developers.google.com/admob/api/

#import <GoogleAPIClientForREST/GTLRAdMobObjects.h>

// ----------------------------------------------------------------------------
// Constants

// GTLRAdMob_App.appApprovalState
NSString * const kGTLRAdMob_App_AppApprovalState_ActionRequired = @"ACTION_REQUIRED";
NSString * const kGTLRAdMob_App_AppApprovalState_AppApprovalStateUnspecified = @"APP_APPROVAL_STATE_UNSPECIFIED";
NSString * const kGTLRAdMob_App_AppApprovalState_Approved      = @"APPROVED";
NSString * const kGTLRAdMob_App_AppApprovalState_InReview      = @"IN_REVIEW";

// GTLRAdMob_MediationReportSpec.dimensions
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_AdSource = @"AD_SOURCE";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_AdSourceInstance = @"AD_SOURCE_INSTANCE";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_App = @"APP";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Country = @"COUNTRY";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Date = @"DATE";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Format = @"FORMAT";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_MediationGroup = @"MEDIATION_GROUP";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Month = @"MONTH";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_MediationReportSpec_Dimensions_Week = @"WEEK";

// GTLRAdMob_MediationReportSpec.metrics
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_AdRequests = @"AD_REQUESTS";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_Clicks = @"CLICKS";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_EstimatedEarnings = @"ESTIMATED_EARNINGS";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_ImpressionCtr = @"IMPRESSION_CTR";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_Impressions = @"IMPRESSIONS";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_MatchedRequests = @"MATCHED_REQUESTS";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_MatchRate = @"MATCH_RATE";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_MetricUnspecified = @"METRIC_UNSPECIFIED";
NSString * const kGTLRAdMob_MediationReportSpec_Metrics_ObservedEcpm = @"OBSERVED_ECPM";

// GTLRAdMob_MediationReportSpecDimensionFilter.dimension
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_AdSource = @"AD_SOURCE";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_AdSourceInstance = @"AD_SOURCE_INSTANCE";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_App = @"APP";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Country = @"COUNTRY";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Date = @"DATE";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Format = @"FORMAT";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_MediationGroup = @"MEDIATION_GROUP";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Month = @"MONTH";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_MediationReportSpecDimensionFilter_Dimension_Week = @"WEEK";

// GTLRAdMob_MediationReportSpecSortCondition.dimension
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_AdSource = @"AD_SOURCE";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_AdSourceInstance = @"AD_SOURCE_INSTANCE";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_App = @"APP";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Country = @"COUNTRY";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Date = @"DATE";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Format = @"FORMAT";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_MediationGroup = @"MEDIATION_GROUP";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Month = @"MONTH";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Dimension_Week = @"WEEK";

// GTLRAdMob_MediationReportSpecSortCondition.metric
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_AdRequests = @"AD_REQUESTS";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_Clicks = @"CLICKS";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_EstimatedEarnings = @"ESTIMATED_EARNINGS";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_ImpressionCtr = @"IMPRESSION_CTR";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_Impressions = @"IMPRESSIONS";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_MatchedRequests = @"MATCHED_REQUESTS";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_MatchRate = @"MATCH_RATE";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_MetricUnspecified = @"METRIC_UNSPECIFIED";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Metric_ObservedEcpm = @"OBSERVED_ECPM";

// GTLRAdMob_MediationReportSpecSortCondition.order
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Order_Ascending = @"ASCENDING";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Order_Descending = @"DESCENDING";
NSString * const kGTLRAdMob_MediationReportSpecSortCondition_Order_SortOrderUnspecified = @"SORT_ORDER_UNSPECIFIED";

// GTLRAdMob_NetworkReportSpec.dimensions
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_AdType = @"AD_TYPE";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_App   = @"APP";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Country = @"COUNTRY";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Date  = @"DATE";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Format = @"FORMAT";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Month = @"MONTH";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_NetworkReportSpec_Dimensions_Week  = @"WEEK";

// GTLRAdMob_NetworkReportSpec.metrics
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_AdRequests = @"AD_REQUESTS";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_Clicks   = @"CLICKS";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_EstimatedEarnings = @"ESTIMATED_EARNINGS";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_ImpressionCtr = @"IMPRESSION_CTR";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_ImpressionRpm = @"IMPRESSION_RPM";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_Impressions = @"IMPRESSIONS";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_MatchedRequests = @"MATCHED_REQUESTS";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_MatchRate = @"MATCH_RATE";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_MetricUnspecified = @"METRIC_UNSPECIFIED";
NSString * const kGTLRAdMob_NetworkReportSpec_Metrics_ShowRate = @"SHOW_RATE";

// GTLRAdMob_NetworkReportSpecDimensionFilter.dimension
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_AdType = @"AD_TYPE";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_App = @"APP";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Country = @"COUNTRY";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Date = @"DATE";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Format = @"FORMAT";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Month = @"MONTH";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_NetworkReportSpecDimensionFilter_Dimension_Week = @"WEEK";

// GTLRAdMob_NetworkReportSpecSortCondition.dimension
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_AdType = @"AD_TYPE";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_AdUnit = @"AD_UNIT";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_App = @"APP";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_AppVersionName = @"APP_VERSION_NAME";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Country = @"COUNTRY";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Date = @"DATE";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_DimensionUnspecified = @"DIMENSION_UNSPECIFIED";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Format = @"FORMAT";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_GmaSdkVersion = @"GMA_SDK_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_MobileOsVersion = @"MOBILE_OS_VERSION";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Month = @"MONTH";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Platform = @"PLATFORM";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_ServingRestriction = @"SERVING_RESTRICTION";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Dimension_Week = @"WEEK";

// GTLRAdMob_NetworkReportSpecSortCondition.metric
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_AdRequests = @"AD_REQUESTS";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_Clicks = @"CLICKS";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_EstimatedEarnings = @"ESTIMATED_EARNINGS";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_ImpressionCtr = @"IMPRESSION_CTR";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_ImpressionRpm = @"IMPRESSION_RPM";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_Impressions = @"IMPRESSIONS";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_MatchedRequests = @"MATCHED_REQUESTS";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_MatchRate = @"MATCH_RATE";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_MetricUnspecified = @"METRIC_UNSPECIFIED";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Metric_ShowRate = @"SHOW_RATE";

// GTLRAdMob_NetworkReportSpecSortCondition.order
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Order_Ascending = @"ASCENDING";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Order_Descending = @"DESCENDING";
NSString * const kGTLRAdMob_NetworkReportSpecSortCondition_Order_SortOrderUnspecified = @"SORT_ORDER_UNSPECIFIED";

// GTLRAdMob_ReportWarning.type
NSString * const kGTLRAdMob_ReportWarning_Type_DataBeforeAccountTimezoneChange = @"DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE";
NSString * const kGTLRAdMob_ReportWarning_Type_DataDelayed     = @"DATA_DELAYED";
NSString * const kGTLRAdMob_ReportWarning_Type_Other           = @"OTHER";
NSString * const kGTLRAdMob_ReportWarning_Type_ReportCurrencyNotAccountCurrency = @"REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY";
NSString * const kGTLRAdMob_ReportWarning_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRAdMob_AdUnit
//

@implementation GTLRAdMob_AdUnit
@dynamic adFormat, adTypes, adUnitId, appId, displayName, name;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"adTypes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_App
//

@implementation GTLRAdMob_App
@dynamic appApprovalState, appId, linkedAppInfo, manualAppInfo, name, platform;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_AppLinkedAppInfo
//

@implementation GTLRAdMob_AppLinkedAppInfo
@dynamic appStoreId, displayName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_AppManualAppInfo
//

@implementation GTLRAdMob_AppManualAppInfo
@dynamic displayName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_Date
//

@implementation GTLRAdMob_Date
@dynamic day, month, year;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_DateRange
//

@implementation GTLRAdMob_DateRange
@dynamic endDate, startDate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_GenerateMediationReportRequest
//

@implementation GTLRAdMob_GenerateMediationReportRequest
@dynamic reportSpec;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_GenerateMediationReportResponse
//

@implementation GTLRAdMob_GenerateMediationReportResponse
@dynamic footer, header, row;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_GenerateNetworkReportRequest
//

@implementation GTLRAdMob_GenerateNetworkReportRequest
@dynamic reportSpec;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_GenerateNetworkReportResponse
//

@implementation GTLRAdMob_GenerateNetworkReportResponse
@dynamic footer, header, row;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ListAdUnitsResponse
//

@implementation GTLRAdMob_ListAdUnitsResponse
@dynamic adUnits, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"adUnits" : [GTLRAdMob_AdUnit class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"adUnits";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ListAppsResponse
//

@implementation GTLRAdMob_ListAppsResponse
@dynamic apps, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"apps" : [GTLRAdMob_App class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"apps";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ListPublisherAccountsResponse
//

@implementation GTLRAdMob_ListPublisherAccountsResponse
@dynamic account, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"account" : [GTLRAdMob_PublisherAccount class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"account";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_LocalizationSettings
//

@implementation GTLRAdMob_LocalizationSettings
@dynamic currencyCode, languageCode;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_MediationReportSpec
//

@implementation GTLRAdMob_MediationReportSpec
@dynamic dateRange, dimensionFilters, dimensions, localizationSettings,
         maxReportRows, metrics, sortConditions, timeZone;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionFilters" : [GTLRAdMob_MediationReportSpecDimensionFilter class],
    @"dimensions" : [NSString class],
    @"metrics" : [NSString class],
    @"sortConditions" : [GTLRAdMob_MediationReportSpecSortCondition class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_MediationReportSpecDimensionFilter
//

@implementation GTLRAdMob_MediationReportSpecDimensionFilter
@dynamic dimension, matchesAny;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_MediationReportSpecSortCondition
//

@implementation GTLRAdMob_MediationReportSpecSortCondition
@dynamic dimension, metric, order;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_NetworkReportSpec
//

@implementation GTLRAdMob_NetworkReportSpec
@dynamic dateRange, dimensionFilters, dimensions, localizationSettings,
         maxReportRows, metrics, sortConditions, timeZone;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionFilters" : [GTLRAdMob_NetworkReportSpecDimensionFilter class],
    @"dimensions" : [NSString class],
    @"metrics" : [NSString class],
    @"sortConditions" : [GTLRAdMob_NetworkReportSpecSortCondition class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_NetworkReportSpecDimensionFilter
//

@implementation GTLRAdMob_NetworkReportSpecDimensionFilter
@dynamic dimension, matchesAny;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_NetworkReportSpecSortCondition
//

@implementation GTLRAdMob_NetworkReportSpecSortCondition
@dynamic dimension, metric, order;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_PublisherAccount
//

@implementation GTLRAdMob_PublisherAccount
@dynamic currencyCode, name, publisherId, reportingTimeZone;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportFooter
//

@implementation GTLRAdMob_ReportFooter
@dynamic matchingRowCount, warnings;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"warnings" : [GTLRAdMob_ReportWarning class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportHeader
//

@implementation GTLRAdMob_ReportHeader
@dynamic dateRange, localizationSettings, reportingTimeZone;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportRow
//

@implementation GTLRAdMob_ReportRow
@dynamic dimensionValues, metricValues;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportRow_DimensionValues
//

@implementation GTLRAdMob_ReportRow_DimensionValues

+ (Class)classForAdditionalProperties {
  return [GTLRAdMob_ReportRowDimensionValue class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportRow_MetricValues
//

@implementation GTLRAdMob_ReportRow_MetricValues

+ (Class)classForAdditionalProperties {
  return [GTLRAdMob_ReportRowMetricValue class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportRowDimensionValue
//

@implementation GTLRAdMob_ReportRowDimensionValue
@dynamic displayLabel, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportRowMetricValue
//

@implementation GTLRAdMob_ReportRowMetricValue
@dynamic doubleValue, integerValue, microsValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_ReportWarning
//

@implementation GTLRAdMob_ReportWarning
@dynamic descriptionProperty, type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdMob_StringList
//

@implementation GTLRAdMob_StringList
@dynamic values;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"values" : [NSString class]
  };
  return map;
}

@end
