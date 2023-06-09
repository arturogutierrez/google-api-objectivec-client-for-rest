// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Data Lineage API (datalineage/v1)
// Documentation:
//   https://cloud.google.com/data-catalog

#import <GoogleAPIClientForREST/GTLRDatalineage.h>

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeDatalineageCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRDatalineageService
//

@implementation GTLRDatalineageService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://datalineage.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
