//
//  TMNewsTransaction.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JASidePanelController.h"
#import "TMTransaction.h"

@interface TMNewsTransaction : NSObject<TMTransaction>

@property (nonatomic, strong) JASidePanelController *sidePanelController;

@end
