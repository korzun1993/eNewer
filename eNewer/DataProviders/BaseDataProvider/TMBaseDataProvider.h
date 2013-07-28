//
//  TMBaseDataProvider.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMBaseDataProvider : NSObject

@property (nonatomic, strong) NSMutableArray *arrayOfItems;
@property (nonatomic, strong) NSString *cellReuseIdentifier;

@property (nonatomic, weak) UITableView *targetTable;

@property (nonatomic, strong) NSString *searchQuery;

- (void)loadItems;
- (void)loadMoreItems;


@end
