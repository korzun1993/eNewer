//
//  TMMapTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMapTransaction.h"
#import "TMMapController.h"

@implementation TMMapTransaction

- (void)performWithObject:(id)anObject
{
    NSParameterAssert(self.navigation);
    NSParameterAssert(self.placeDetailsTransaction);
    
    TMMapController *mapController = [TMMapController new];
    mapController.placeDetailsTransaction = self.placeDetailsTransaction;
    mapController.placesDataProvider = anObject;
    
    [self.navigation pushViewController:mapController animated:YES];
}

@end
