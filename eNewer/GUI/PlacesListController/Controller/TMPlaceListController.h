//
//  TMPlaceListController.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMTableBasedController.h"
#import "TMTransactionWithObject.h"

@interface TMPlaceListController : TMTableBasedController

@property (nonatomic, strong) id <TMTransactionWithObject> placeDetailsTrasnaction;
@property (nonatomic, strong) id <TMTransactionWithObject> mapTransaction;


@end
