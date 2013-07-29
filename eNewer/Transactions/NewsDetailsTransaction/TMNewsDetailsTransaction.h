//
//  TMNewsDetailsTransaction.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMTransactionWithObject.h"

@interface TMNewsDetailsTransaction : NSObject <TMTransactionWithObject>

@property (nonatomic, weak) UINavigationController *navigation;

@end
