//
//  TMPlaceDetailsTransaction.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMTransactionWithObject.h"

@interface TMPlaceDetailsTransaction : NSObject<TMTransactionWithObject>

@property (nonatomic, strong) UINavigationController *navigation;

@end
