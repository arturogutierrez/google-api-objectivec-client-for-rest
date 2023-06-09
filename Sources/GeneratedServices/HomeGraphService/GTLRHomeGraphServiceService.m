// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   HomeGraph API (homegraph/v1)
// Documentation:
//   https://developers.home.google.com/cloud-to-cloud/get-started

#import <GoogleAPIClientForREST/GTLRHomeGraphService.h>

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeHomeGraphService = @"https://www.googleapis.com/auth/homegraph";

// ----------------------------------------------------------------------------
//   GTLRHomeGraphServiceService
//

@implementation GTLRHomeGraphServiceService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://homegraph.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
