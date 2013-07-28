//
//  TMMenuDataProvider.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMenuDataProvider.h"

@implementation TMMenuDataProvider

- (void)loadItems
{
    self.arrayOfItems = @[kTMMenuItemNews,kTMMenuItemPlaces];
    [self.targetTable reloadData];
}

@end
