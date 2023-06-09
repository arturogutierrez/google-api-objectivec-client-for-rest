// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   KMS Inventory API (kmsinventory/v1)
// Documentation:
//   https://cloud.google.com/kms/

#import <GoogleAPIClientForREST/GTLRQuery.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Kmsinventory query classes.
 */
@interface GTLRKmsinventoryQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Returns metadata about the resources protected by the given Cloud KMS
 *  CryptoKey in the given Cloud organization.
 *
 *  Method: kmsinventory.organizations.protectedResources.search
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeKmsinventoryCloudPlatform
 */
@interface GTLRKmsinventoryQuery_OrganizationsProtectedResourcesSearch : GTLRKmsinventoryQuery

/** Required. The resource name of the CryptoKey. */
@property(nonatomic, copy, nullable) NSString *cryptoKey;

/**
 *  The maximum number of resources to return. The service may return fewer than
 *  this value. If unspecified, at most 500 resources will be returned. The
 *  maximum value is 500; values above 500 will be coerced to 500.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  A page token, received from a previous
 *  KeyTrackingService.SearchProtectedResources call. Provide this to retrieve
 *  the subsequent page. When paginating, all other parameters provided to
 *  KeyTrackingService.SearchProtectedResources must match the call that
 *  provided the page token.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Required. Resource name of the organization. Example: organizations/123 */
@property(nonatomic, copy, nullable) NSString *scope;

/**
 *  Fetches a @c
 *  GTLRKmsinventory_GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse.
 *
 *  Returns metadata about the resources protected by the given Cloud KMS
 *  CryptoKey in the given Cloud organization.
 *
 *  @param scope Required. Resource name of the organization. Example:
 *    organizations/123
 *
 *  @return GTLRKmsinventoryQuery_OrganizationsProtectedResourcesSearch
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithScope:(NSString *)scope;

@end

/**
 *  Returns cryptographic keys managed by Cloud KMS in a given Cloud project.
 *  Note that this data is sourced from snapshots, meaning it may not completely
 *  reflect the actual state of key metadata at call time.
 *
 *  Method: kmsinventory.projects.cryptoKeys.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeKmsinventoryCloudPlatform
 */
@interface GTLRKmsinventoryQuery_ProjectsCryptoKeysList : GTLRKmsinventoryQuery

/**
 *  Optional. The maximum number of keys to return. The service may return fewer
 *  than this value. If unspecified, at most 1000 keys will be returned. The
 *  maximum value is 1000; values above 1000 will be coerced to 1000.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  Optional. Pass this into a subsequent request in order to receive the next
 *  page of results.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The Google Cloud project for which to retrieve key metadata, in
 *  the format `projects/ *`
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c
 *  GTLRKmsinventory_GoogleCloudKmsInventoryV1ListCryptoKeysResponse.
 *
 *  Returns cryptographic keys managed by Cloud KMS in a given Cloud project.
 *  Note that this data is sourced from snapshots, meaning it may not completely
 *  reflect the actual state of key metadata at call time.
 *
 *  @param parent Required. The Google Cloud project for which to retrieve key
 *    metadata, in the format `projects/ *`
 *
 *  @return GTLRKmsinventoryQuery_ProjectsCryptoKeysList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Returns aggregate information about the resources protected by the given
 *  Cloud KMS CryptoKey. Only resources within the same Cloud organization as
 *  the key will be returned. The project that holds the key must be part of an
 *  organization in order for this call to succeed.
 *
 *  Method: kmsinventory.projects.locations.keyRings.cryptoKeys.getProtectedResourcesSummary
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeKmsinventoryCloudPlatform
 */
@interface GTLRKmsinventoryQuery_ProjectsLocationsKeyRingsCryptoKeysGetProtectedResourcesSummary : GTLRKmsinventoryQuery

/** Required. The resource name of the CryptoKey. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c
 *  GTLRKmsinventory_GoogleCloudKmsInventoryV1ProtectedResourcesSummary.
 *
 *  Returns aggregate information about the resources protected by the given
 *  Cloud KMS CryptoKey. Only resources within the same Cloud organization as
 *  the key will be returned. The project that holds the key must be part of an
 *  organization in order for this call to succeed.
 *
 *  @param name Required. The resource name of the CryptoKey.
 *
 *  @return GTLRKmsinventoryQuery_ProjectsLocationsKeyRingsCryptoKeysGetProtectedResourcesSummary
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
