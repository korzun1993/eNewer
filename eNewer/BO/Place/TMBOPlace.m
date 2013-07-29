//
//  TMBOPlace.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMBOPlace.h"
#import "TMBOGeoPosition.h"

@implementation TMBOPlace

+ (void)configureMappingWithManager:(RKObjectManager *)objectManager
{
    [self configureResponseMapping:objectManager];
}

+ (void)configureResponseMapping:(RKObjectManager *)objectManager
{
    RKObjectMapping *placeMapping = [RKObjectMapping mappingForClass:[TMBOPlace class]];
    [placeMapping addAttributeMappingsFromDictionary:[TMBOPlace responseMappingDictionary]];
    
    RKObjectMapping *geoMapping = [RKObjectMapping mappingForClass:[TMBOGeoPosition class]];
    [geoMapping addAttributeMappingsFromDictionary:[TMBOGeoPosition responseMappingDictionary]];
    
    RKRelationshipMapping *relationShipResponseNewsMapping = [RKRelationshipMapping relationshipMappingFromKeyPath:@"geo"
                                                                                                         toKeyPath:@"placeGeo"
                                                                                                       withMapping:geoMapping];
    
    [placeMapping addPropertyMapping:relationShipResponseNewsMapping];
    
    RKResponseDescriptor *responsePlaceDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:geoMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:kTMAllGasStantionUrl
                                                keyPath:@"stations"
                                            statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    [objectManager addResponseDescriptor:responsePlaceDescriptor];
}


+ (NSDictionary *)responseMappingDictionary
{
    return @{
             @"id" : @"placeID",
             @"name" : @"placeName",
             @"region" : @"placeRegion",
             @"address" : @"placeAddress",
             @"time_breaks" : @"placeTimeBreaks",
             @"phones" : @"placePhones",
             @"services" : @"placeAcceptableCards",
             @"fuels" : @"placeFuels",
             };
}

@end
