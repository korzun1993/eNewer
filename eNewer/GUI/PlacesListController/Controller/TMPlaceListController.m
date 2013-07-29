//
//  TMPlaceListController.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlaceListController.h"
#import "TMNavigationBarHelper.h"
#import "TMPlacesDataProvider.h"
#import "TMPlacesCell.h"

@interface TMPlaceListController ()

@property (nonatomic, strong) TMPlacesDataProvider *dataProvider;

@end

@implementation TMPlaceListController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Places";
    [TMNavigationBarHelper createRightBarItemForController:self withAction:@selector(mapView) imageName:@"planet"];
    self.dataProvider = [TMPlacesDataProvider new];
    [self configTableWithProvider:self.dataProvider cellClass:[TMPlacesCell class]];
}

- (BOOL)isNeedToLeftSelected
{
    return NO;
}

- (void)mapView
{
    [self.mapTransaction performWithObject:self.dataProvider];
}

- (void)didSelectedCellWithObject:(id)aCellObject
{
    [self.placeDetailsTrasnaction performWithObject:aCellObject];
}

@end
