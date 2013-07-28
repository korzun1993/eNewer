//
//  TMAPIProvider.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMAPIProvider : NSObject

+ (void)loadListOfNewsSuccessHandler:(successWithObject)aSuccesshandler errorHandler:(errorHandler)anErrorHandler;

+ (void)loadInfoAboutNewsWithID:(NSString *)newsID successHandler:(successWithObject)aSuccesshandler errorHandler:(errorHandler)anErrorHandler;

@end
