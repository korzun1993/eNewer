//
//  TMBOPlace.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBOGeoPosition.h"
#import "TMRestKitMappableModel.h"

@interface TMBOPlace : NSObject<TMRestKitMappableModel>

@property (nonatomic, strong) NSString *placeID;
@property (nonatomic, strong) NSString *placeName;
@property (nonatomic, strong) NSString *placeRegion;
@property (nonatomic, strong) NSString *placeAddress;
@property (nonatomic, strong) TMBOGeoPosition *placeGeo;
@property (nonatomic, strong) NSString *placeTimeBreaks;
@property (nonatomic, strong) NSArray *placePhones;
@property (nonatomic, strong) NSArray *placeAcceptableCards;
@property (nonatomic, strong) NSArray *placeFuels;

+ (NSDictionary *)responseMappingDictionary;

@end
