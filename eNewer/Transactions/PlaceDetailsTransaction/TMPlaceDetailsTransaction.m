//
//  TMPlaceDetailsTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlaceDetailsTransaction.h"
#import "TMPlaceDetailsController.h"

@implementation TMPlaceDetailsTransaction

- (void)performWithObject:(id)anObject
{
    NSParameterAssert(self.navigation);
    
    TMPlaceDetailsController *placeDetails = [TMPlaceDetailsController new];
    placeDetails.currentPlace = anObject;
    
    [self.navigation pushViewController:placeDetails animated:YES];
}

@end
