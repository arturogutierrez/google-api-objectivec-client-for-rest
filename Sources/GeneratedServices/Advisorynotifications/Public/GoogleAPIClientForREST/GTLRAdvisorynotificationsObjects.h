// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Advisory Notifications API (advisorynotifications/v1)
// Documentation:
//   https://cloud.google.com/advisory-notifications

#import <GoogleAPIClientForREST/GTLRObject.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Attachment;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Csv;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1CsvCsvRow;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Message;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1MessageBody;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Notification;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Subject;
@class GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text.localizationState

/**
 *  Localization for requested language is completed.
 *
 *  Value: "LOCALIZATION_STATE_COMPLETED"
 */
FOUNDATION_EXTERN NSString * const kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateCompleted;
/**
 *  Localization is not applicable for requested language. This can happen when:
 *  - The requested language was not supported by Advisory Notifications at the
 *  time of localization (including notifications created before the
 *  localization feature was launched). - The requested language is English, so
 *  only the English text is returned.
 *
 *  Value: "LOCALIZATION_STATE_NOT_APPLICABLE"
 */
FOUNDATION_EXTERN NSString * const kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateNotApplicable;
/**
 *  Localization for requested language is in progress, and not ready yet.
 *
 *  Value: "LOCALIZATION_STATE_PENDING"
 */
FOUNDATION_EXTERN NSString * const kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStatePending;
/**
 *  Not used.
 *
 *  Value: "LOCALIZATION_STATE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateUnspecified;

/**
 *  Attachment with specific information about the issue.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Attachment : GTLRObject

/** A CSV file attachment. Max size is 10 MB. */
@property(nonatomic, strong, nullable) GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Csv *csv;

/** The title of the attachment. */
@property(nonatomic, copy, nullable) NSString *displayName;

@end


/**
 *  A representation of a CSV file attachment, as a list of column headers and a
 *  list of data rows.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Csv : GTLRObject

/**
 *  The list of data rows in a CSV file, as string arrays rather than as a
 *  single comma-separated string.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1CsvCsvRow *> *dataRows;

/** The list of headers for data columns in a CSV file. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *headers;

@end


/**
 *  A representation of a single data row in a CSV file.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1CsvCsvRow : GTLRObject

/**
 *  The data entries in a CSV file row, as a string array rather than a single
 *  comma-separated string.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *entries;

@end


/**
 *  Response of ListNotifications endpoint.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "notifications" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1ListNotificationsResponse : GTLRCollectionObject

/**
 *  A token, which can be sent as `page_token` to retrieve the next page. If
 *  this field is omitted, there are no subsequent pages.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  List of notifications under a given parent.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Notification *> *notifications;

/**
 *  Estimation of a total number of notifications.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *totalSize;

@end


/**
 *  A message which contains notification details.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Message : GTLRObject

/** The attachments to download. */
@property(nonatomic, strong, nullable) NSArray<GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Attachment *> *attachments;

/** The message content. */
@property(nonatomic, strong, nullable) GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1MessageBody *body;

/** The Message creation timestamp. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** Time when Message was localized */
@property(nonatomic, strong, nullable) GTLRDateTime *localizationTime;

@end


/**
 *  A message body containing text.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1MessageBody : GTLRObject

/** The text content of the message body. */
@property(nonatomic, strong, nullable) GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text *text;

@end


/**
 *  A notification object for notifying customers about security and privacy
 *  issues.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Notification : GTLRObject

/** Output only. Time the notification was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** A list of messages in the notification. */
@property(nonatomic, strong, nullable) NSArray<GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Message *> *messages;

/**
 *  The resource name of the notification. Format:
 *  organizations/{organization}/locations/{location}/notifications/{notification}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/** The subject line of the notification. */
@property(nonatomic, strong, nullable) GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Subject *subject;

@end


/**
 *  A subject line of a notification.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Subject : GTLRObject

/** The text content. */
@property(nonatomic, strong, nullable) GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text *text;

@end


/**
 *  A text object containing the English text and its localized copies.
 */
@interface GTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text : GTLRObject

/** The English copy. */
@property(nonatomic, copy, nullable) NSString *enText;

/**
 *  Status of the localization.
 *
 *  Likely values:
 *    @arg @c kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateCompleted
 *        Localization for requested language is completed. (Value:
 *        "LOCALIZATION_STATE_COMPLETED")
 *    @arg @c kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateNotApplicable
 *        Localization is not applicable for requested language. This can happen
 *        when: - The requested language was not supported by Advisory
 *        Notifications at the time of localization (including notifications
 *        created before the localization feature was launched). - The requested
 *        language is English, so only the English text is returned. (Value:
 *        "LOCALIZATION_STATE_NOT_APPLICABLE")
 *    @arg @c kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStatePending
 *        Localization for requested language is in progress, and not ready yet.
 *        (Value: "LOCALIZATION_STATE_PENDING")
 *    @arg @c kGTLRAdvisorynotifications_GoogleCloudAdvisorynotificationsV1Text_LocalizationState_LocalizationStateUnspecified
 *        Not used. (Value: "LOCALIZATION_STATE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *localizationState;

/** The requested localized copy (if applicable). */
@property(nonatomic, copy, nullable) NSString *localizedText;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
