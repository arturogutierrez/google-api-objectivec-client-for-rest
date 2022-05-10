// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   AdMob API (admob/v1)
// Description:
//   The AdMob API allows publishers to programmatically get information about
//   their AdMob account.
// Documentation:
//   https://developers.google.com/admob/api/

#import <GoogleAPIClientForREST/GTLRService.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: See your AdMob data
 *
 *  Value "https://www.googleapis.com/auth/admob.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeAdMobReadonly;
/**
 *  Authorization scope: See your AdMob data
 *
 *  Value "https://www.googleapis.com/auth/admob.report"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeAdMobReport;

// ----------------------------------------------------------------------------
//   GTLRAdMobService
//

/**
 *  Service for executing AdMob API queries.
 *
 *  The AdMob API allows publishers to programmatically get information about
 *  their AdMob account.
 */
@interface GTLRAdMobService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRAdMobQuery.h. The query can the be sent with GTLRService's execute
// methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop