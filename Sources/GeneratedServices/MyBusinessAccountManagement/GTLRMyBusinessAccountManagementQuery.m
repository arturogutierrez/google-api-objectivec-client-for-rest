// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   My Business Account Management API (mybusinessaccountmanagement/v1)
// Description:
//   The My Business Account Management API provides an interface for managing
//   access to a location on Google. Note - If you have a quota of 0 after
//   enabling the API, please request for GBP API access.
// Documentation:
//   https://developers.google.com/my-business/

#import <GoogleAPIClientForREST/GTLRMyBusinessAccountManagementQuery.h>

@implementation GTLRMyBusinessAccountManagementQuery

@dynamic fields;

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsAdminsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Admin *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/admins";
  GTLRMyBusinessAccountManagementQuery_AccountsAdminsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Admin class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.admins.create";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsAdminsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_AccountsAdminsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Empty class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.admins.delete";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsAdminsList

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/admins";
  GTLRMyBusinessAccountManagementQuery_AccountsAdminsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_ListAccountAdminsResponse class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.admins.list";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsAdminsPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Admin *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_AccountsAdminsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Admin class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.admins.patch";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsCreate

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Account *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"v1/accounts";
  GTLRMyBusinessAccountManagementQuery_AccountsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Account class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.create";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_AccountsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Account class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.get";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsInvitationsAccept

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_AcceptInvitationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:accept";
  GTLRMyBusinessAccountManagementQuery_AccountsInvitationsAccept *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Empty class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.invitations.accept";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsInvitationsDecline

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_DeclineInvitationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:decline";
  GTLRMyBusinessAccountManagementQuery_AccountsInvitationsDecline *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Empty class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.invitations.decline";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsInvitationsList

@dynamic filter, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/invitations";
  GTLRMyBusinessAccountManagementQuery_AccountsInvitationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_ListInvitationsResponse class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.invitations.list";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsList

@dynamic filter, pageSize, pageToken, parentAccount;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/accounts";
  GTLRMyBusinessAccountManagementQuery_AccountsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_ListAccountsResponse class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.list";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_AccountsPatch

@dynamic name, updateMask, validateOnly;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Account *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_AccountsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Account class];
  query.loggingName = @"mybusinessaccountmanagement.accounts.patch";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_LocationsAdminsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Admin *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/admins";
  GTLRMyBusinessAccountManagementQuery_LocationsAdminsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Admin class];
  query.loggingName = @"mybusinessaccountmanagement.locations.admins.create";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_LocationsAdminsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_LocationsAdminsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Empty class];
  query.loggingName = @"mybusinessaccountmanagement.locations.admins.delete";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_LocationsAdminsList

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/admins";
  GTLRMyBusinessAccountManagementQuery_LocationsAdminsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_ListLocationAdminsResponse class];
  query.loggingName = @"mybusinessaccountmanagement.locations.admins.list";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_LocationsAdminsPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_Admin *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessAccountManagementQuery_LocationsAdminsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Admin class];
  query.loggingName = @"mybusinessaccountmanagement.locations.admins.patch";
  return query;
}

@end

@implementation GTLRMyBusinessAccountManagementQuery_LocationsTransfer

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMyBusinessAccountManagement_TransferLocationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:transfer";
  GTLRMyBusinessAccountManagementQuery_LocationsTransfer *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessAccountManagement_Empty class];
  query.loggingName = @"mybusinessaccountmanagement.locations.transfer";
  return query;
}

@end
