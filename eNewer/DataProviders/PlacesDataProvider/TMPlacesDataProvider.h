//
//  TMPlacesDataProvider.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMBaseDataProvider.h"

@protocol PlacesDataProviderDelegate <NSObject>

- (void)loadItems;

@end

@interface TMPlacesDataProvider : TMBaseDataProvider

@property (nonatomic, weak) id <PlacesDataProviderDelegate> delegate;

@end
