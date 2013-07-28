//
//  TMTableBasedController.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMTableBasedController.h"

@implementation TMTableBasedController

- (void)configTableWithProvider:(TMBaseDataProvider *)provider cellClass:(Class)cellCass
{
    [self configTableWithProvider:provider cellClass:cellCass cellReuseIdentifier:@"ReuseIdentifier"];
}

- (void)configTableWithProvider:(TMBaseDataProvider *)provider cellClass:(Class)cellCass cellReuseIdentifier:(NSString *)reuseIdentifier
{
    [self.mainTable registerClass:cellCass forCellReuseIdentifier:reuseIdentifier];
    TMCommonDataSource *dataSource;
    self.mainTable.backgroundColor = [UIColor clearColor];
    if(self.dataSource){
        dataSource = self.dataSource;
    } else {
        dataSource = [TMCommonDataSource new];
    }
    dataSource.currentCellReuseIdentifier = reuseIdentifier;
    [dataSource.registeredCellClasses setObject:cellCass forKey:reuseIdentifier];
    dataSource.dataProvider = provider;
    dataSource.dataProvider.targetTable = self.mainTable;
    self.mainTable.dataSource = dataSource;
    self.mainTable.delegate = dataSource;
    self.dataSource = dataSource;
    self.dataSource.delegate = self;
    [dataSource.dataProvider loadItems];
}

- (void)didSelectedCellWithObject:(id)aCellObject
{
    
}

@end
