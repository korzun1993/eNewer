//
//  TMNewsTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsTransaction.h"
#import "TMNewsController.h"

@implementation TMNewsTransaction

- (void)perform
{
    NSParameterAssert(self.sidePanelController);
    TMNewsController *newsController = [TMNewsController new];
    
    self.sidePanelController.centerPanel = [[UINavigationController alloc] initWithRootViewController:newsController];
}


@end
