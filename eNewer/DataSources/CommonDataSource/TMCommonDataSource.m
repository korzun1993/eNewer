//
//  TMCommonDataSource.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMCommonDataSource.h"
#import "TMCellSelectionProtocol.h"
#import "TMBaseCell.h"

@implementation TMCommonDataSource

- (id)init
{
    if(self = [super init]){
        self.registeredCellClasses = [NSMutableDictionary new];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataProvider.arrayOfItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TMBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:self.currentCellReuseIdentifier];
    [cell setCellObject:self.dataProvider.arrayOfItems[indexPath.row]];
    if ([cell respondsToSelector:@selector(setDelegate:)]) {
        [cell performSelector:@selector(setDelegate:) withObject:self.delegate];
    }
    return (UITableViewCell *)cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [[(UIViewController *)self.delegate view] endEditing:YES];
    if(scrollView.contentOffset.y > scrollView.contentSize.height - scrollView.frame.size.height - kTMIntervalBeforeLoading){
        [self.dataProvider loadMoreItems];
    }
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate didSelectedCellWithObject:self.dataProvider.arrayOfItems[indexPath.row]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([self.delegate respondsToSelector:@selector(isNeedToLeftSelected)] && ![self.delegate isNeedToLeftSelected]){
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class cellClass = self.registeredCellClasses[self.currentCellReuseIdentifier];
    return [cellClass heightForCellWithObject:self.dataProvider.arrayOfItems[indexPath.row]];
}


@end
