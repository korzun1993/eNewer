//
//  TMCellSelectionProtocol.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMCellSelectionProtocol <NSObject>

- (void)didSelectedCellWithObject:(id)aCellObject;

@optional
- (BOOL)isNeedToLeftSelected;

@end
