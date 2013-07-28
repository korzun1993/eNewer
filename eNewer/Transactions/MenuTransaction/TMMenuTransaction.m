//
//  TMMenuTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMenuTransaction.h"
#import "TMMenuController.h"

@implementation TMMenuTransaction 

- (void)perform
{
    NSParameterAssert(self.sidePanelController);
    TMMenuController *menuController = [TMMenuController new];
    
    self.sidePanelController.centerPanel = menuController;

}

@end
