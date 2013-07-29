//
//  TMNewsDetailsTransaction.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsDetailsTransaction.h"
#import "TMNewsDetailsController.h"

@implementation TMNewsDetailsTransaction

- (void)performWithObject:(id)anObject
{
    NSParameterAssert(self.navigation);
    
    TMNewsDetailsController *newsDetailsController = [TMNewsDetailsController new];
    newsDetailsController.currentNews = anObject;
    
    [self.navigation pushViewController:newsDetailsController animated:YES];
}

@end
