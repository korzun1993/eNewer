//
//  TMAPIProvider.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMAPIProvider.h"
#import "TMRestKitManager.h"

@implementation TMAPIProvider

+ (void)loadListOfNewsSuccessHandler:(successWithObject)aSuccesshandler errorHandler:(errorHandler)anErrorHandler
{
    RKObjectManager *objectManager = [[TMRestKitManager shared] newsObjectManager];
    [objectManager getObject:nil path:kTMGetNewsUrl parameters:@{@"i" : @"actions", @"mode" : @"list_actual"} success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        aSuccesshandler(mappingResult.firstObject);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        anErrorHandler(error);
    }];
}

+ (void)loadInfoAboutNewsWithID:(NSString *)newsID successHandler:(successWithObject)aSuccesshandler errorHandler:(errorHandler)anErrorHandler
{
    RKObjectManager *objectManager = [[TMRestKitManager shared] newsObjectManager];
    [objectManager getObject:nil path:kTMGetNewsUrl parameters:@{@"i" : @"actions", @"mode" : @"view", @"id" : newsID} success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        aSuccesshandler(mappingResult.firstObject);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        anErrorHandler(error);
    }];
}

@end
