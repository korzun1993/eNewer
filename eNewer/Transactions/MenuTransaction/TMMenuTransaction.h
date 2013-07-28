//
//  TMMenuTransaction.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMTransaction.h"
#import "JASidePanelController.h"

@interface TMMenuTransaction : NSObject <TMTransaction>

@property (nonatomic, weak) JASidePanelController *sidePanelController;

@end
