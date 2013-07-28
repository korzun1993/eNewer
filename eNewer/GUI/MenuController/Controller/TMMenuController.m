//
//  TMMenuControllerView.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMenuController.h"
#import "TMMenuDataProvider.h"
#import "TMMenuCell.h"

@interface TMMenuController ()

@end

@implementation TMMenuController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configTableWithProvider:[TMMenuDataProvider new] cellClass:[TMMenuCell class]];
}

- (BOOL)isNeedToLeftSelected
{
    return NO;
}

@end
