//
//  TMMenuTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMenuTransaction.h"
#import "TMMenuController.h"
#import "TMNewsTransaction.h"
#import "TMPlacesTransaction.h"


@implementation TMMenuTransaction 

- (void)perform
{
    NSParameterAssert(self.sidePanelController);
    TMMenuController *menuController = [TMMenuController new];
    
    TMPlacesTransaction *placesTransaction = [TMPlacesTransaction new];
    placesTransaction.sidePanelController = self.sidePanelController;
    menuController.placesTransaction = placesTransaction;
    
    TMNewsTransaction *newsTransaction = [TMNewsTransaction new];
    newsTransaction.sidePanelController = self.sidePanelController;
    menuController.newsTransaction = newsTransaction;
    
    self.sidePanelController.leftPanel = menuController;
}

@end
