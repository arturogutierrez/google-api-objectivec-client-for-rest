// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Idea Hub API (ideahub/v1beta)
// Description:
//   This is an invitation-only API.
// Documentation:
//   https://console.cloud.google.com/apis/library/ideahub.googleapis.com

#import "GTLRIdeahub.h"

@implementation GTLRIdeahubService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://ideahub.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end