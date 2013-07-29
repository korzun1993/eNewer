//
//  TMNewsController.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMTableBasedController.h"
#import "TMTransactionWithObject.h"

@interface TMNewsController : TMTableBasedController

@property (nonatomic, strong) id <TMTransactionWithObject> newsDetailsTransaction;

@end
