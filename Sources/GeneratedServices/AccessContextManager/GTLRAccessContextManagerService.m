// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Access Context Manager API (accesscontextmanager/v1)
// Description:
//   An API for setting attribute based access control to requests to Google
//   Cloud services.
// Documentation:
//   https://cloud.google.com/access-context-manager/docs/reference/rest/

#import <GoogleAPIClientForREST/GTLRAccessContextManager.h>

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeAccessContextManagerCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRAccessContextManagerService
//

@implementation GTLRAccessContextManagerService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://accesscontextmanager.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
