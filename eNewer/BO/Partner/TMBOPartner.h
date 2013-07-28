//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.


#import <Foundation/Foundation.h>


@interface TMBOPartner : NSObject

@property (nonatomic, strong) NSString *partnerID;
@property (nonatomic, strong) NSString *partnerTitle;
@property (nonatomic, strong) NSString *partnerURL;
@property (nonatomic, strong) NSString *partnerImage1;
@property (nonatomic, strong) NSString *partnerImage2;

+ (NSDictionary *)responseMappingDictionary;

@end