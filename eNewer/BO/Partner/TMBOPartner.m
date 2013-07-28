//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.



#import "TMBOPartner.h"


@implementation TMBOPartner

+ (NSDictionary *)responseMappingDictionary
{
    return @{
             @"id" : @"partnerID",
             @"title" : @"partnerTitle",
             @"url" : @"partnerURL",
             @"image1" : @"partnerImage1",
             @"image2" : @"partnerImage2",
             };

}

@end