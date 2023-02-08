// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   BigQuery Reservation API (bigqueryreservation/v1)
// Description:
//   A service to modify your BigQuery flat-rate reservations.
// Documentation:
//   https://cloud.google.com/bigquery/

#import <GoogleAPIClientForREST/GTLRBigQueryReservationObjects.h>

// ----------------------------------------------------------------------------
// Constants

// GTLRBigQueryReservation_Assignment.jobType
NSString * const kGTLRBigQueryReservation_Assignment_JobType_Background = @"BACKGROUND";
NSString * const kGTLRBigQueryReservation_Assignment_JobType_JobTypeUnspecified = @"JOB_TYPE_UNSPECIFIED";
NSString * const kGTLRBigQueryReservation_Assignment_JobType_MlExternal = @"ML_EXTERNAL";
NSString * const kGTLRBigQueryReservation_Assignment_JobType_Pipeline = @"PIPELINE";
NSString * const kGTLRBigQueryReservation_Assignment_JobType_Query = @"QUERY";

// GTLRBigQueryReservation_Assignment.state
NSString * const kGTLRBigQueryReservation_Assignment_State_Active = @"ACTIVE";
NSString * const kGTLRBigQueryReservation_Assignment_State_Pending = @"PENDING";
NSString * const kGTLRBigQueryReservation_Assignment_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRBigQueryReservation_CapacityCommitment.edition
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Edition_EditionUnspecified = @"EDITION_UNSPECIFIED";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Edition_Enterprise = @"ENTERPRISE";

// GTLRBigQueryReservation_CapacityCommitment.plan
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_Annual = @"ANNUAL";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_CommitmentPlanUnspecified = @"COMMITMENT_PLAN_UNSPECIFIED";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_Flex = @"FLEX";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_Monthly = @"MONTHLY";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_None = @"NONE";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_Plan_Trial = @"TRIAL";

// GTLRBigQueryReservation_CapacityCommitment.renewalPlan
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_Annual = @"ANNUAL";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_CommitmentPlanUnspecified = @"COMMITMENT_PLAN_UNSPECIFIED";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_Flex = @"FLEX";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_Monthly = @"MONTHLY";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_None = @"NONE";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_RenewalPlan_Trial = @"TRIAL";

// GTLRBigQueryReservation_CapacityCommitment.state
NSString * const kGTLRBigQueryReservation_CapacityCommitment_State_Active = @"ACTIVE";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_State_Failed = @"FAILED";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_State_Pending = @"PENDING";
NSString * const kGTLRBigQueryReservation_CapacityCommitment_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRBigQueryReservation_Reservation.edition
NSString * const kGTLRBigQueryReservation_Reservation_Edition_EditionUnspecified = @"EDITION_UNSPECIFIED";
NSString * const kGTLRBigQueryReservation_Reservation_Edition_Enterprise = @"ENTERPRISE";

// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Assignment
//

@implementation GTLRBigQueryReservation_Assignment
@dynamic assignee, jobType, name, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Autoscale
//

@implementation GTLRBigQueryReservation_Autoscale
@dynamic currentSlots, maxSlots;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_BiReservation
//

@implementation GTLRBigQueryReservation_BiReservation
@dynamic name, preferredTables, size, updateTime;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"preferredTables" : [GTLRBigQueryReservation_TableReference class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_CapacityCommitment
//

@implementation GTLRBigQueryReservation_CapacityCommitment
@dynamic commitmentEndTime, commitmentStartTime, edition, failureStatus,
         multiRegionAuxiliary, name, plan, renewalPlan, slotCount, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Empty
//

@implementation GTLRBigQueryReservation_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_ListAssignmentsResponse
//

@implementation GTLRBigQueryReservation_ListAssignmentsResponse
@dynamic assignments, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assignments" : [GTLRBigQueryReservation_Assignment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"assignments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_ListCapacityCommitmentsResponse
//

@implementation GTLRBigQueryReservation_ListCapacityCommitmentsResponse
@dynamic capacityCommitments, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"capacityCommitments" : [GTLRBigQueryReservation_CapacityCommitment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"capacityCommitments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_ListReservationsResponse
//

@implementation GTLRBigQueryReservation_ListReservationsResponse
@dynamic nextPageToken, reservations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"reservations" : [GTLRBigQueryReservation_Reservation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"reservations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_MergeCapacityCommitmentsRequest
//

@implementation GTLRBigQueryReservation_MergeCapacityCommitmentsRequest
@dynamic capacityCommitmentIds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"capacityCommitmentIds" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_MoveAssignmentRequest
//

@implementation GTLRBigQueryReservation_MoveAssignmentRequest
@dynamic destinationId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Reservation
//

@implementation GTLRBigQueryReservation_Reservation
@dynamic autoscale, concurrency, creationTime, edition, ignoreIdleSlots,
         multiRegionAuxiliary, name, slotCapacity, updateTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_SearchAllAssignmentsResponse
//

@implementation GTLRBigQueryReservation_SearchAllAssignmentsResponse
@dynamic assignments, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assignments" : [GTLRBigQueryReservation_Assignment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"assignments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_SearchAssignmentsResponse
//

@implementation GTLRBigQueryReservation_SearchAssignmentsResponse
@dynamic assignments, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assignments" : [GTLRBigQueryReservation_Assignment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"assignments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_SplitCapacityCommitmentRequest
//

@implementation GTLRBigQueryReservation_SplitCapacityCommitmentRequest
@dynamic slotCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_SplitCapacityCommitmentResponse
//

@implementation GTLRBigQueryReservation_SplitCapacityCommitmentResponse
@dynamic first, second;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Status
//

@implementation GTLRBigQueryReservation_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRBigQueryReservation_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_Status_Details_Item
//

@implementation GTLRBigQueryReservation_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigQueryReservation_TableReference
//

@implementation GTLRBigQueryReservation_TableReference
@dynamic datasetId, projectId, tableId;
@end
