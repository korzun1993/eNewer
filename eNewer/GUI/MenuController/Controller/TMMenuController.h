//
//  TMMenuControllerView.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMTableBasedController.h"
#import "TMTransaction.h"

@interface TMMenuController : TMTableBasedController

@property (nonatomic, strong) id <TMTransaction> newsTransaction;
@property (nonatomic, strong) id <TMTransaction> placesTransaction;

@end
