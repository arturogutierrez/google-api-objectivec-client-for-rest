// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   API Discovery Service (discovery/v1)
// Description:
//   Provides information about other Google APIs, such as what APIs are
//   available, the resource, and method details for each API.
// Documentation:
//   https://developers.google.com/discovery/

#import "GTLRDiscoveryObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_DirectoryList
//

@implementation GTLRDiscovery_DirectoryList
@dynamic discoveryVersion, items, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRDiscovery_DirectoryList_Items_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_DirectoryList_Items_Item
//

@implementation GTLRDiscovery_DirectoryList_Items_Item
@dynamic descriptionProperty, discoveryLink, discoveryRestUrl,
         documentationLink, icons, identifier, kind, labels, name, preferred,
         title, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"labels" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_DirectoryList_Items_Item_Icons
//

@implementation GTLRDiscovery_DirectoryList_Items_Item_Icons
@dynamic x16, x32;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_JsonSchema
//

@implementation GTLRDiscovery_JsonSchema
@dynamic xRef, additionalPropertiesProperty, annotations, defaultProperty,
         descriptionProperty, enumProperty, enumDescriptions, format,
         identifier, items, location, maximum, minimum, pattern, properties,
         readOnly, repeated, required, type, variant;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"additionalPropertiesProperty" : @"additionalProperties",
    @"defaultProperty" : @"default",
    @"descriptionProperty" : @"description",
    @"enumProperty" : @"enum",
    @"identifier" : @"id",
    @"xRef" : @"$ref"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"enum" : [NSString class],
    @"enumDescriptions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_JsonSchema_Annotations
//

@implementation GTLRDiscovery_JsonSchema_Annotations
@dynamic required;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"required" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_JsonSchema_Properties
//

@implementation GTLRDiscovery_JsonSchema_Properties

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_JsonSchema class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_JsonSchema_Variant
//

@implementation GTLRDiscovery_JsonSchema_Variant
@dynamic discriminant, map;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"map" : [GTLRDiscovery_JsonSchema_Variant_Map_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_JsonSchema_Variant_Map_Item
//

@implementation GTLRDiscovery_JsonSchema_Variant_Map_Item
@dynamic xRef, typeValue;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"typeValue" : @"type_value",
    @"xRef" : @"$ref"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription
//

@implementation GTLRDiscovery_RestDescription
@dynamic auth, basePath, baseUrl, batchPath, canonicalName, descriptionProperty,
         discoveryVersion, documentationLink, ETag, exponentialBackoffDefault,
         features, icons, identifier, kind, labels, methods, name, ownerDomain,
         ownerName, packagePath, parameters, protocol, resources, revision,
         rootUrl, schemas, servicePath, title, version, versionModule;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"ETag" : @"etag",
    @"identifier" : @"id",
    @"versionModule" : @"version_module"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"features" : [NSString class],
    @"labels" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Auth
//

@implementation GTLRDiscovery_RestDescription_Auth
@dynamic oauth2;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Icons
//

@implementation GTLRDiscovery_RestDescription_Icons
@dynamic x16, x32;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Methods
//

@implementation GTLRDiscovery_RestDescription_Methods

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_RestMethod class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Parameters
//

@implementation GTLRDiscovery_RestDescription_Parameters

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_JsonSchema class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Resources
//

@implementation GTLRDiscovery_RestDescription_Resources

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_RestResource class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Schemas
//

@implementation GTLRDiscovery_RestDescription_Schemas

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_JsonSchema class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Auth_Oauth2
//

@implementation GTLRDiscovery_RestDescription_Auth_Oauth2
@dynamic scopes;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes
//

@implementation GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope
//

@implementation GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope
@dynamic descriptionProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod
//

@implementation GTLRDiscovery_RestMethod
@dynamic descriptionProperty, etagRequired, flatPath, httpMethod, identifier,
         mediaUpload, parameterOrder, parameters, path, request, response,
         scopes, supportsMediaDownload, supportsMediaUpload,
         supportsSubscription, useMediaDownloadService;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"parameterOrder" : [NSString class],
    @"scopes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_MediaUpload
//

@implementation GTLRDiscovery_RestMethod_MediaUpload
@dynamic accept, maxSize, protocols;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accept" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_Parameters
//

@implementation GTLRDiscovery_RestMethod_Parameters

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_JsonSchema class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_Request
//

@implementation GTLRDiscovery_RestMethod_Request
@dynamic xRef, parameterName;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"xRef" : @"$ref" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_Response
//

@implementation GTLRDiscovery_RestMethod_Response
@dynamic xRef;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"xRef" : @"$ref" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_MediaUpload_Protocols
//

@implementation GTLRDiscovery_RestMethod_MediaUpload_Protocols
@dynamic resumable, simple;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_MediaUpload_Protocols_Resumable
//

@implementation GTLRDiscovery_RestMethod_MediaUpload_Protocols_Resumable
@dynamic multipart, path;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestMethod_MediaUpload_Protocols_Simple
//

@implementation GTLRDiscovery_RestMethod_MediaUpload_Protocols_Simple
@dynamic multipart, path;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestResource
//

@implementation GTLRDiscovery_RestResource
@dynamic methods, resources;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestResource_Methods
//

@implementation GTLRDiscovery_RestResource_Methods

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_RestMethod class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDiscovery_RestResource_Resources
//

@implementation GTLRDiscovery_RestResource_Resources

+ (Class)classForAdditionalProperties {
  return [GTLRDiscovery_RestResource class];
}

@end
