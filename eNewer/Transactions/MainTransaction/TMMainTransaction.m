//
//  TMMainTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMainTransaction.h"
#import "JASidePanelController.h"
#import "TMMenuTransaction.h"
#import "TMNewsTransaction.h"

@implementation TMMainTransaction

- (void)perform
{
    NSParameterAssert(self.mainWindow);
    
    JASidePanelController *sidePanelConroller = [JASidePanelController new];
    TMMenuTransaction *menuTransaction = [TMMenuTransaction new];
    menuTransaction.sidePanelController = sidePanelConroller;
    
    TMNewsTransaction *newsTransaction = [TMNewsTransaction new];
    newsTransaction.sidePanelController = sidePanelConroller;
    [newsTransaction perform];
    
    self.mainWindow.rootViewController = sidePanelConroller;
    [menuTransaction perform];
}

@end
