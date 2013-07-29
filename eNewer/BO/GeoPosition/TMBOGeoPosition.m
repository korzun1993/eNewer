//
//  TMBOGeoPosition.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMBOGeoPosition.h"

@implementation TMBOGeoPosition

+ (NSDictionary *)responseMappingDictionary
{
    return @{
             @"latitude" : @"geoLatitude",
             @"longitude" : @"geoLongitude",
             };
}

@end
