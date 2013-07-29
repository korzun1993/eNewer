//
//  TMNewsTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsTransaction.h"
#import "TMNewsController.h"
#import "TMNewsDetailsTransaction.h"

@implementation TMNewsTransaction

- (void)perform
{
    NSParameterAssert(self.sidePanelController);
    TMNewsController *newsController = [TMNewsController new];
   
    UINavigationController *centralPanelNavigation = [[UINavigationController alloc] initWithRootViewController:newsController];
    
    TMNewsDetailsTransaction *newsDetailsTransaction = [TMNewsDetailsTransaction new];
    newsDetailsTransaction.navigation = centralPanelNavigation;
    newsController.newsDetailsTransaction = newsDetailsTransaction;
    
    self.sidePanelController.centerPanel = centralPanelNavigation;
}


@end
