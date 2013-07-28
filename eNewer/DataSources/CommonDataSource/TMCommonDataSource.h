//
//  TMCommonDataSource.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMCellSelectionProtocol.h"
#import "TMBaseDataProvider.h"

@interface TMCommonDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id <TMCellSelectionProtocol> delegate;
@property (nonatomic, strong) TMBaseDataProvider *dataProvider;

@property (nonatomic, strong) NSString *currentCellReuseIdentifier;
@property (nonatomic, strong) NSMutableDictionary *registeredCellClasses;

@end
