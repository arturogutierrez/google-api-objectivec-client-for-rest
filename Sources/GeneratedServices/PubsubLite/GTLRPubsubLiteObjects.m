// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Pub/Sub Lite API (pubsublite/v1)
// Documentation:
//   https://cloud.google.com/pubsub/lite/docs

#import <GoogleAPIClientForREST/GTLRPubsubLiteObjects.h>

// ----------------------------------------------------------------------------
// Constants

// GTLRPubsubLite_DeliveryConfig.deliveryRequirement
NSString * const kGTLRPubsubLite_DeliveryConfig_DeliveryRequirement_DeliverAfterStored = @"DELIVER_AFTER_STORED";
NSString * const kGTLRPubsubLite_DeliveryConfig_DeliveryRequirement_DeliverImmediately = @"DELIVER_IMMEDIATELY";
NSString * const kGTLRPubsubLite_DeliveryConfig_DeliveryRequirement_DeliveryRequirementUnspecified = @"DELIVERY_REQUIREMENT_UNSPECIFIED";

// GTLRPubsubLite_ExportConfig.currentState
NSString * const kGTLRPubsubLite_ExportConfig_CurrentState_Active = @"ACTIVE";
NSString * const kGTLRPubsubLite_ExportConfig_CurrentState_NotFound = @"NOT_FOUND";
NSString * const kGTLRPubsubLite_ExportConfig_CurrentState_Paused = @"PAUSED";
NSString * const kGTLRPubsubLite_ExportConfig_CurrentState_PermissionDenied = @"PERMISSION_DENIED";
NSString * const kGTLRPubsubLite_ExportConfig_CurrentState_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRPubsubLite_ExportConfig.desiredState
NSString * const kGTLRPubsubLite_ExportConfig_DesiredState_Active = @"ACTIVE";
NSString * const kGTLRPubsubLite_ExportConfig_DesiredState_NotFound = @"NOT_FOUND";
NSString * const kGTLRPubsubLite_ExportConfig_DesiredState_Paused = @"PAUSED";
NSString * const kGTLRPubsubLite_ExportConfig_DesiredState_PermissionDenied = @"PERMISSION_DENIED";
NSString * const kGTLRPubsubLite_ExportConfig_DesiredState_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRPubsubLite_SeekSubscriptionRequest.namedTarget
NSString * const kGTLRPubsubLite_SeekSubscriptionRequest_NamedTarget_Head = @"HEAD";
NSString * const kGTLRPubsubLite_SeekSubscriptionRequest_NamedTarget_NamedTargetUnspecified = @"NAMED_TARGET_UNSPECIFIED";
NSString * const kGTLRPubsubLite_SeekSubscriptionRequest_NamedTarget_Tail = @"TAIL";

// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_CancelOperationRequest
//

@implementation GTLRPubsubLite_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Capacity
//

@implementation GTLRPubsubLite_Capacity
@dynamic publishMibPerSec, subscribeMibPerSec;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_CommitCursorRequest
//

@implementation GTLRPubsubLite_CommitCursorRequest
@dynamic cursor, partition;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_CommitCursorResponse
//

@implementation GTLRPubsubLite_CommitCursorResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeHeadCursorRequest
//

@implementation GTLRPubsubLite_ComputeHeadCursorRequest
@dynamic partition;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeHeadCursorResponse
//

@implementation GTLRPubsubLite_ComputeHeadCursorResponse
@dynamic headCursor;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeMessageStatsRequest
//

@implementation GTLRPubsubLite_ComputeMessageStatsRequest
@dynamic endCursor, partition, startCursor;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeMessageStatsResponse
//

@implementation GTLRPubsubLite_ComputeMessageStatsResponse
@dynamic messageBytes, messageCount, minimumEventTime, minimumPublishTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeTimeCursorRequest
//

@implementation GTLRPubsubLite_ComputeTimeCursorRequest
@dynamic partition, target;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ComputeTimeCursorResponse
//

@implementation GTLRPubsubLite_ComputeTimeCursorResponse
@dynamic cursor;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Cursor
//

@implementation GTLRPubsubLite_Cursor
@dynamic offset;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_DeliveryConfig
//

@implementation GTLRPubsubLite_DeliveryConfig
@dynamic deliveryRequirement;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Empty
//

@implementation GTLRPubsubLite_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ExportConfig
//

@implementation GTLRPubsubLite_ExportConfig
@dynamic currentState, deadLetterTopic, desiredState, pubsubConfig;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListOperationsResponse
//

@implementation GTLRPubsubLite_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRPubsubLite_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListPartitionCursorsResponse
//

@implementation GTLRPubsubLite_ListPartitionCursorsResponse
@dynamic nextPageToken, partitionCursors;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"partitionCursors" : [GTLRPubsubLite_PartitionCursor class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"partitionCursors";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListReservationsResponse
//

@implementation GTLRPubsubLite_ListReservationsResponse
@dynamic nextPageToken, reservations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"reservations" : [GTLRPubsubLite_Reservation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"reservations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListReservationTopicsResponse
//

@implementation GTLRPubsubLite_ListReservationTopicsResponse
@dynamic nextPageToken, topics;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"topics" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListSubscriptionsResponse
//

@implementation GTLRPubsubLite_ListSubscriptionsResponse
@dynamic nextPageToken, subscriptions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"subscriptions" : [GTLRPubsubLite_Subscription class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"subscriptions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListTopicsResponse
//

@implementation GTLRPubsubLite_ListTopicsResponse
@dynamic nextPageToken, topics;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"topics" : [GTLRPubsubLite_Topic class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"topics";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ListTopicSubscriptionsResponse
//

@implementation GTLRPubsubLite_ListTopicSubscriptionsResponse
@dynamic nextPageToken, subscriptions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"subscriptions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Operation
//

@implementation GTLRPubsubLite_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Operation_Metadata
//

@implementation GTLRPubsubLite_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Operation_Response
//

@implementation GTLRPubsubLite_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_OperationMetadata
//

@implementation GTLRPubsubLite_OperationMetadata
@dynamic createTime, endTime, target, verb;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_PartitionConfig
//

@implementation GTLRPubsubLite_PartitionConfig
@dynamic capacity, count, scale;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_PartitionCursor
//

@implementation GTLRPubsubLite_PartitionCursor
@dynamic cursor, partition;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_PubSubConfig
//

@implementation GTLRPubsubLite_PubSubConfig
@dynamic topic;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Reservation
//

@implementation GTLRPubsubLite_Reservation
@dynamic name, throughputCapacity;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_ReservationConfig
//

@implementation GTLRPubsubLite_ReservationConfig
@dynamic throughputReservation;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_RetentionConfig
//

@implementation GTLRPubsubLite_RetentionConfig
@dynamic period, perPartitionBytes;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_SeekSubscriptionRequest
//

@implementation GTLRPubsubLite_SeekSubscriptionRequest
@dynamic namedTarget, timeTarget;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_SeekSubscriptionResponse
//

@implementation GTLRPubsubLite_SeekSubscriptionResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Status
//

@implementation GTLRPubsubLite_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRPubsubLite_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Status_Details_Item
//

@implementation GTLRPubsubLite_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Subscription
//

@implementation GTLRPubsubLite_Subscription
@dynamic deliveryConfig, exportConfig, name, topic;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_TimeTarget
//

@implementation GTLRPubsubLite_TimeTarget
@dynamic eventTime, publishTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_Topic
//

@implementation GTLRPubsubLite_Topic
@dynamic name, partitionConfig, reservationConfig, retentionConfig;
@end


// ----------------------------------------------------------------------------
//
//   GTLRPubsubLite_TopicPartitions
//

@implementation GTLRPubsubLite_TopicPartitions
@dynamic partitionCount;
@end
