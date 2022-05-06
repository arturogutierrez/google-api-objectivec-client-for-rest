// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Indexing API (indexing/v3)
// Description:
//   Notifies Google when your web pages change.
// Documentation:
//   https://developers.google.com/search/apis/indexing-api/

#import "GTLRIndexingQuery.h"

#import "GTLRIndexingObjects.h"

@implementation GTLRIndexingQuery

@dynamic fields;

@end

@implementation GTLRIndexingQuery_UrlNotificationsGetMetadata

@dynamic url;

+ (instancetype)query {
  NSString *pathURITemplate = @"v3/urlNotifications/metadata";
  GTLRIndexingQuery_UrlNotificationsGetMetadata *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRIndexing_UrlNotificationMetadata class];
  query.loggingName = @"indexing.urlNotifications.getMetadata";
  return query;
}

@end

@implementation GTLRIndexingQuery_UrlNotificationsPublish

+ (instancetype)queryWithObject:(GTLRIndexing_UrlNotification *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"v3/urlNotifications:publish";
  GTLRIndexingQuery_UrlNotificationsPublish *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRIndexing_PublishUrlNotificationResponse class];
  query.loggingName = @"indexing.urlNotifications.publish";
  return query;
}

@end