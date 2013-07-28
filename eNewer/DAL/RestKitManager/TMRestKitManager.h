//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.



#import <Foundation/Foundation.h>


@interface TMRestKitManager : NSObject

@property (nonatomic, strong) RKObjectManager *newsObjectManager;
@property (nonatomic, strong) RKObjectManager *imagesObjectManager;
@property (nonatomic, strong) RKObjectManager *placesObjectManager;

+ (TMRestKitManager *)shared;

- (void)config;

@end