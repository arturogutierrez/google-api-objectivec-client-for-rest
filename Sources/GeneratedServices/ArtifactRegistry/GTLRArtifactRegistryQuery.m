// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Artifact Registry API (artifactregistry/v1)
// Description:
//   Store and manage build artifacts in a scalable and integrated service built
//   on Google infrastructure.
// Documentation:
//   https://cloud.google.com/artifacts/docs/

#import <GoogleAPIClientForREST/GTLRArtifactRegistryQuery.h>

// ----------------------------------------------------------------------------
// Constants

// view
NSString * const kGTLRArtifactRegistryViewBasic                = @"BASIC";
NSString * const kGTLRArtifactRegistryViewFull                 = @"FULL";
NSString * const kGTLRArtifactRegistryViewVersionViewUnspecified = @"VERSION_VIEW_UNSPECIFIED";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRArtifactRegistryQuery

@dynamic fields;

@end

@implementation GTLRArtifactRegistryQuery_ProjectsGetProjectSettings

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsGetProjectSettings *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_ProjectSettings class];
  query.loggingName = @"artifactregistry.projects.getProjectSettings";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Location class];
  query.loggingName = @"artifactregistry.projects.locations.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/locations";
  GTLRArtifactRegistryQuery_ProjectsLocationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListLocationsResponse class];
  query.loggingName = @"artifactregistry.projects.locations.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.operations.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesAptArtifactsImport

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_ImportAptArtifactsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/aptArtifacts:import";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesAptArtifactsImport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.aptArtifacts.import";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesAptArtifactsUpload

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_UploadAptArtifactRequest *)object
                         parent:(NSString *)parent
               uploadParameters:(GTLRUploadParameters *)uploadParameters {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/aptArtifacts:create";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesAptArtifactsUpload *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.uploadParameters = uploadParameters;
  query.expectedObjectClass = [GTLRArtifactRegistry_UploadAptArtifactMediaResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.aptArtifacts.upload";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesCreate

@dynamic parent, repositoryId;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_Repository *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/repositories";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.create";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.delete";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDockerImagesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDockerImagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_DockerImage class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.dockerImages.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDockerImagesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/dockerImages";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesDockerImagesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListDockerImagesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.dockerImages.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesFilesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesFilesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_GoogleDevtoolsArtifactregistryV1File class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.files.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesFilesList

@dynamic filter, orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/files";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesFilesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListFilesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.files.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Repository class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRArtifactRegistry_Policy class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.getIamPolicy";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/repositories";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListRepositoriesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesMavenArtifactsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesMavenArtifactsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_MavenArtifact class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.mavenArtifacts.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesMavenArtifactsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/mavenArtifacts";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesMavenArtifactsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListMavenArtifactsResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.mavenArtifacts.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesNpmPackagesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesNpmPackagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_NpmPackage class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.npmPackages.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesNpmPackagesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/npmPackages";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesNpmPackagesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListNpmPackagesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.npmPackages.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.delete";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Package class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/packages";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListPackagesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsCreate

@dynamic parent, tagId;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_Tag *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/tags";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_Tag class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.tags.create";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Empty class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.tags.delete";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Tag class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.tags.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsList

@dynamic filter, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/tags";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListTagsResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.tags.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_Tag *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesTagsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Tag class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.tags.patch";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsDelete

@dynamic force, name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.versions.delete";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsGet

@dynamic name, view;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Version class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.versions.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsList

@dynamic orderBy, pageSize, pageToken, parent, view;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/versions";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPackagesVersionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListVersionsResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.packages.versions.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_Repository *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_Repository class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.patch";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPythonPackagesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPythonPackagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_PythonPackage class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.pythonPackages.get";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPythonPackagesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/pythonPackages";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesPythonPackagesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_ListPythonPackagesResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.pythonPackages.list";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRArtifactRegistry_Policy class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.setIamPolicy";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRArtifactRegistry_TestIamPermissionsResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.testIamPermissions";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesYumArtifactsImport

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_ImportYumArtifactsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/yumArtifacts:import";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesYumArtifactsImport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRArtifactRegistry_Operation class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.yumArtifacts.import";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesYumArtifactsUpload

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_UploadYumArtifactRequest *)object
                         parent:(NSString *)parent
               uploadParameters:(GTLRUploadParameters *)uploadParameters {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/yumArtifacts:create";
  GTLRArtifactRegistryQuery_ProjectsLocationsRepositoriesYumArtifactsUpload *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.uploadParameters = uploadParameters;
  query.expectedObjectClass = [GTLRArtifactRegistry_UploadYumArtifactMediaResponse class];
  query.loggingName = @"artifactregistry.projects.locations.repositories.yumArtifacts.upload";
  return query;
}

@end

@implementation GTLRArtifactRegistryQuery_ProjectsUpdateProjectSettings

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRArtifactRegistry_ProjectSettings *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRArtifactRegistryQuery_ProjectsUpdateProjectSettings *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRArtifactRegistry_ProjectSettings class];
  query.loggingName = @"artifactregistry.projects.updateProjectSettings";
  return query;
}

@end
