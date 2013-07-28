//
// Created by Vlad Korzun on 28.07.13.
// Copyright (c) 2013 Vlad Korzun. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TMBONews.h"
#import "TMBOPartner.h"

@implementation TMBONews

+ (void)configureMappingWithManager:(RKObjectManager *)objectManager
{
    [self configureResponseMapping:objectManager];
}

+ (void)configureResponseMapping:(RKObjectManager *)objectManager
{
    RKObjectMapping *newsMapping = [RKObjectMapping mappingForClass:[TMBONews class]];
    [newsMapping addAttributeMappingsFromDictionary:[TMBONews responseMappingDictionary]];
    
    RKObjectMapping *partnerMapping = [RKObjectMapping mappingForClass:[TMBOPartner class]];
    [partnerMapping addAttributeMappingsFromDictionary:[TMBOPartner responseMappingDictionary]];
    
    RKRelationshipMapping *relationShipResponseNewsMapping = [RKRelationshipMapping relationshipMappingFromKeyPath:@"partner"
                                                                                                            toKeyPath:@"newsPartner"
                                                                                                          withMapping:partnerMapping];
    
    [newsMapping addPropertyMapping:relationShipResponseNewsMapping];
    
    RKResponseDescriptor *responseNewsDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:newsMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:kTMGetNewsUrl
                                                keyPath:@"data"
                                            statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    [objectManager addResponseDescriptor:responseNewsDescriptor];
}

+ (NSDictionary *)responseMappingDictionary
{
    return @{
             @"id" : @"newsID",
             @"title" : @"newsTitle",
             @"date" : @"newsDate",
             @"anons" : @"newsAnons",
             @"content" : @"newsContent",
             @"image" : @"newsImage",
             };
}


@end