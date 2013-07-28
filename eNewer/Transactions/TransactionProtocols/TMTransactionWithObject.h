//
//  TMTransactionWithObject.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMTransactionWithObject <NSObject>

- (void)performWithObject:(id)anObject;

@end
