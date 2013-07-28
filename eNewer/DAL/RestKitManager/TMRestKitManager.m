//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.

#import "TMRestKitManager.h"
#import "TMBONews.h"

@interface TMRestKitManager()

+ (RKObjectManager *)objectManagerWithURL:(NSString *)url;
- (void)configMappings;

@end

@implementation TMRestKitManager

static TMRestKitManager *instance = NULL;

+ (TMRestKitManager *)shared
{
    if(instance == NULL){
        instance = [[TMRestKitManager alloc] init];
        [instance config];
    }
    return instance;
}

- (void)config
{
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    self.newsObjectManager = [TMRestKitManager objectManagerWithURL:kTMNewsBaseUrl];
    self.imagesObjectManager = [TMRestKitManager objectManagerWithURL:kTMImagesBaseUrl];
    self.placesObjectManager = [TMRestKitManager objectManagerWithURL:kTMPlacesBaseUrl];
    
    [self.newsObjectManager.HTTPClient setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        if (status == AFNetworkReachabilityStatusNotReachable) {
            
        }
    }];
    [self configMappings];
}

- (void)configMappings
{
    [TMBONews configureMappingWithManager:self.newsObjectManager];
}

+ (RKObjectManager *)objectManagerWithURL:(NSString *)anURL
{
    NSURL *baseURL = [NSURL URLWithString:anURL];
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    [client setDefaultHeader:@"Accept" value:RKMIMETypeJSON];
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];

    return objectManager;
}

@end


