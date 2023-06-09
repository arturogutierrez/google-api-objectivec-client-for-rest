// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Serverless VPC Access API (vpcaccess/v1)
// Description:
//   API for managing VPC access connectors.
// Documentation:
//   https://cloud.google.com/vpc/docs/configure-serverless-vpc-access

#import <GoogleAPIClientForREST/GTLRServerlessVPCAccess.h>

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeServerlessVPCAccessCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRServerlessVPCAccessService
//

@implementation GTLRServerlessVPCAccessService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://vpcaccess.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
