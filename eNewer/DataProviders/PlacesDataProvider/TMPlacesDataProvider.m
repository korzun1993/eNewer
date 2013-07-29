//
//  TMPlacesDataProvider.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlacesDataProvider.h"
#import "TMAPIProvider.h"

@implementation TMPlacesDataProvider

- (void)loadItems
{
    [MBProgressHUD showHUDAddedTo:self.targetTable animated:YES];
    [TMAPIProvider loadPlacesSuccessHandler:^(id anObject) {
        [MBProgressHUD hideAllHUDsForView:self.targetTable animated:YES];
        self.arrayOfItems = anObject;
        [self.targetTable reloadData];
    } errorHandler:^(NSError *anError) {
        [MBProgressHUD hideAllHUDsForView:self.targetTable animated:YES];
        [TMStandardErrorHandler showErrorWithError:anError];
    }];
}

@end
