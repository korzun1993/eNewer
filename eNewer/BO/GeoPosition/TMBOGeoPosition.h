//
//  TMBOGeoPosition.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMBOGeoPosition : NSObject

@property (nonatomic, strong) NSNumber *geoLatitude;
@property (nonatomic, strong) NSNumber *geoLongitude;

+ (NSDictionary *)responseMappingDictionary;

@end