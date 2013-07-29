//
//  TMNewsDataProvider.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsDataProvider.h"
#import "TMAPIProvider.h"
#import "TMBONews.h"

@implementation TMNewsDataProvider

- (void)loadItems
{
    [MBProgressHUD showHUDAddedTo:self.targetTable animated:YES];
    [TMAPIProvider loadListOfNewsSuccessHandler:^(id anObject) {
        [MBProgressHUD hideHUDForView:self.targetTable animated:YES];
        NSDictionary *result = anObject;
        self.arrayOfItems = result.allValues.mutableCopy;
        [self.targetTable reloadData];
        [self loadFullInfo];
    } errorHandler:^(NSError *anError) {
        [MBProgressHUD hideHUDForView:self.targetTable animated:YES];
        [TMStandardErrorHandler showErrorWithError:anError];
    }];
}

- (void)loadFullInfo
{
    for(TMBONews *news in self.arrayOfItems){
        [self loadFullInfoForNews:news];
    }
}

- (void)loadFullInfoForNews:(TMBONews *)aNews
{
    [TMAPIProvider loadInfoAboutNewsWithID:aNews.newsID successHandler:^(id anObject) {
    
            NSInteger index = [self.arrayOfItems indexOfObject:aNews];
            if(index != NSNotFound){
                NSDictionary *response = anObject;
                TMBONews *fullNews = response.allValues.lastObject;
                [self.arrayOfItems replaceObjectAtIndex:index withObject:fullNews];
                [self.targetTable reloadData];
            }
    
    } errorHandler:^(NSError *anError) {
        [TMStandardErrorHandler showErrorWithError:anError];
    }];
}

@end
