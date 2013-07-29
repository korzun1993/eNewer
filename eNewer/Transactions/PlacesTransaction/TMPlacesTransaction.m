//
//  TMPlacesTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlacesTransaction.h"
#import "TMPlaceListController.h"
#import "TMMapTransaction.h"
#import "TMPlaceDetailsTransaction.h"


@implementation TMPlacesTransaction

- (void)perform
{
    NSParameterAssert(self.sidePanelController);
    
    TMPlaceListController *placesList = [TMPlaceListController new];
    UINavigationController *placeListNavigation = [[UINavigationController alloc] initWithRootViewController:placesList];
    
    TMPlaceDetailsTransaction *placeTransaction = [TMPlaceDetailsTransaction new];
    placeTransaction.navigation = placeListNavigation;
    placesList.placeDetailsTrasnaction = placeTransaction;
    
    TMMapTransaction *mapTransaction = [TMMapTransaction new];
    mapTransaction.navigation = placeListNavigation;
    mapTransaction.placeDetailsTransaction = placeTransaction;
    placesList.mapTransaction = mapTransaction;
    
    self.sidePanelController.centerPanel = placeListNavigation;
}

@end
