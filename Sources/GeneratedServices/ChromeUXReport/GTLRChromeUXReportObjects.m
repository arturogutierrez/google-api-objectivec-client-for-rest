// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Chrome UX Report API (chromeuxreport/v1)
// Description:
//   The Chrome UX Report API lets you view real user experience data for
//   millions of websites.
// Documentation:
//   https://developers.google.com/web/tools/chrome-user-experience-report/api/reference

#import <GoogleAPIClientForREST/GTLRChromeUXReportObjects.h>

// ----------------------------------------------------------------------------
// Constants

// GTLRChromeUXReport_HistoryKey.formFactor
NSString * const kGTLRChromeUXReport_HistoryKey_FormFactor_AllFormFactors = @"ALL_FORM_FACTORS";
NSString * const kGTLRChromeUXReport_HistoryKey_FormFactor_Desktop = @"DESKTOP";
NSString * const kGTLRChromeUXReport_HistoryKey_FormFactor_Phone = @"PHONE";
NSString * const kGTLRChromeUXReport_HistoryKey_FormFactor_Tablet = @"TABLET";

// GTLRChromeUXReport_Key.formFactor
NSString * const kGTLRChromeUXReport_Key_FormFactor_AllFormFactors = @"ALL_FORM_FACTORS";
NSString * const kGTLRChromeUXReport_Key_FormFactor_Desktop    = @"DESKTOP";
NSString * const kGTLRChromeUXReport_Key_FormFactor_Phone      = @"PHONE";
NSString * const kGTLRChromeUXReport_Key_FormFactor_Tablet     = @"TABLET";

// GTLRChromeUXReport_QueryHistoryRequest.formFactor
NSString * const kGTLRChromeUXReport_QueryHistoryRequest_FormFactor_AllFormFactors = @"ALL_FORM_FACTORS";
NSString * const kGTLRChromeUXReport_QueryHistoryRequest_FormFactor_Desktop = @"DESKTOP";
NSString * const kGTLRChromeUXReport_QueryHistoryRequest_FormFactor_Phone = @"PHONE";
NSString * const kGTLRChromeUXReport_QueryHistoryRequest_FormFactor_Tablet = @"TABLET";

// GTLRChromeUXReport_QueryRequest.formFactor
NSString * const kGTLRChromeUXReport_QueryRequest_FormFactor_AllFormFactors = @"ALL_FORM_FACTORS";
NSString * const kGTLRChromeUXReport_QueryRequest_FormFactor_Desktop = @"DESKTOP";
NSString * const kGTLRChromeUXReport_QueryRequest_FormFactor_Phone = @"PHONE";
NSString * const kGTLRChromeUXReport_QueryRequest_FormFactor_Tablet = @"TABLET";

// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Bin
//

@implementation GTLRChromeUXReport_Bin
@dynamic density, end, start;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_CollectionPeriod
//

@implementation GTLRChromeUXReport_CollectionPeriod
@dynamic firstDate, lastDate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Date
//

@implementation GTLRChromeUXReport_Date
@dynamic day, month, year;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_HistoryKey
//

@implementation GTLRChromeUXReport_HistoryKey
@dynamic formFactor, origin, url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_HistoryRecord
//

@implementation GTLRChromeUXReport_HistoryRecord
@dynamic collectionPeriods, key, metrics;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"collectionPeriods" : [GTLRChromeUXReport_CollectionPeriod class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_HistoryRecord_Metrics
//

@implementation GTLRChromeUXReport_HistoryRecord_Metrics

+ (Class)classForAdditionalProperties {
  return [GTLRChromeUXReport_MetricTimeseries class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Key
//

@implementation GTLRChromeUXReport_Key
@dynamic effectiveConnectionType, formFactor, origin, url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Metric
//

@implementation GTLRChromeUXReport_Metric
@dynamic histogram, percentiles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"histogram" : [GTLRChromeUXReport_Bin class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_MetricTimeseries
//

@implementation GTLRChromeUXReport_MetricTimeseries
@dynamic histogramTimeseries, percentilesTimeseries;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"histogramTimeseries" : [GTLRChromeUXReport_TimeseriesBin class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Percentiles
//

@implementation GTLRChromeUXReport_Percentiles
@dynamic p75;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_QueryHistoryRequest
//

@implementation GTLRChromeUXReport_QueryHistoryRequest
@dynamic formFactor, metrics, origin, url;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"metrics" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_QueryHistoryResponse
//

@implementation GTLRChromeUXReport_QueryHistoryResponse
@dynamic record, urlNormalizationDetails;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_QueryRequest
//

@implementation GTLRChromeUXReport_QueryRequest
@dynamic effectiveConnectionType, formFactor, metrics, origin, url;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"metrics" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_QueryResponse
//

@implementation GTLRChromeUXReport_QueryResponse
@dynamic record, urlNormalizationDetails;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Record
//

@implementation GTLRChromeUXReport_Record
@dynamic collectionPeriod, key, metrics;
@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_Record_Metrics
//

@implementation GTLRChromeUXReport_Record_Metrics

+ (Class)classForAdditionalProperties {
  return [GTLRChromeUXReport_Metric class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_TimeseriesBin
//

@implementation GTLRChromeUXReport_TimeseriesBin
@dynamic densities, end, start;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"densities" : [NSNumber class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_TimeseriesPercentiles
//

@implementation GTLRChromeUXReport_TimeseriesPercentiles
@dynamic p75s;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"p75s" : [NSObject class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRChromeUXReport_UrlNormalization
//

@implementation GTLRChromeUXReport_UrlNormalization
@dynamic normalizedUrl, originalUrl;
@end
