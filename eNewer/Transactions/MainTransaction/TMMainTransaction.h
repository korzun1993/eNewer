//
//  TMMainTransaction.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMTransaction.h"

@interface TMMainTransaction : NSObject <TMTransaction>

@property (nonatomic, strong) UIWindow *mainWindow;

@end
