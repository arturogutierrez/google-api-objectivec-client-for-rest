// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Workload Manager API (workloadmanager/v1)
// Documentation:
//   https://cloud.google.com/workload-manager/docs

#import <GoogleAPIClientForREST/GTLRWorkloadManager.h>

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeWorkloadManagerCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRWorkloadManagerService
//

@implementation GTLRWorkloadManagerService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://workloadmanager.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
