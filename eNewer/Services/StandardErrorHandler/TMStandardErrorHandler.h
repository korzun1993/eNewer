//
//  TMStandardErrorHandler.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMStandardErrorHandler : NSObject

+ (void)showErrorWithTitle:(NSString *)title message:(NSString *)message;
+ (void)showErrorWithCode:(NSInteger)code;
+ (void)showErrorWithError:(NSError *)error;

@end
