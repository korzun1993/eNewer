//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.


#import <Foundation/Foundation.h>
#import "TMBOPartner.h"
#import "TMRestKitMappableModel.h"

@interface TMBONews : NSObject <TMRestKitMappableModel>

@property (nonatomic, strong) NSString *newsID;
@property (nonatomic, strong) NSString *newsTitle;
@property (nonatomic, strong) NSString *newsDate;
@property (nonatomic, strong) NSString *newsAnons;
@property (nonatomic, strong) NSString *newsContent;
@property (nonatomic, strong) NSString *newsImage;
@property (nonatomic, strong) TMBOPartner *newsPartner;

+ (NSDictionary *)responseMappingDictionary;

@end