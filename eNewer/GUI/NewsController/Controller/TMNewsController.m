//
//  TMNewsController.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsController.h"
#import "TMNewsDataProvider.h"
#import "TMNewsCell.h"

@implementation TMNewsController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"News";
    [self configTableWithProvider:[TMNewsDataProvider new] cellClass:[TMNewsCell  class]];
}

- (void)didSelectedCellWithObject:(id)aCellObject
{
    [self.newsDetailsTransaction performWithObject:aCellObject];
}

@end
