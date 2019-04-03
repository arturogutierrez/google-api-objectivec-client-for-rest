// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Run API (run/v1)
// Description:
//   Deploy and manage user provided container images that scale automatically
//   based on HTTP traffic.
// Documentation:
//   https://cloud.google.com/run/

#import "GTLRCloudRunObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRCloudRun_Location
//

@implementation GTLRCloudRun_Location
@dynamic displayName, labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudRun_Location_Labels
//

@implementation GTLRCloudRun_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudRun_Location_Metadata
//

@implementation GTLRCloudRun_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
