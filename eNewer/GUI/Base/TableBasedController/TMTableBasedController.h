//
//  TMTableBasedController.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMCommonDataSource.h"
#import "TMBaseDataProvider.h"

@interface TMTableBasedController : UIViewController <TMCellSelectionProtocol>

@property (nonatomic, weak) IBOutlet UITableView *mainTable;
@property (nonatomic, strong) TMCommonDataSource *dataSource;

- (void)configTableWithProvider:(TMBaseDataProvider *)provider cellClass:(Class)cellCass;
- (void)configTableWithProvider:(TMBaseDataProvider *)provider cellClass:(Class)cellCass cellReuseIdentifier:(NSString *)reuseIdentifier;

@end
