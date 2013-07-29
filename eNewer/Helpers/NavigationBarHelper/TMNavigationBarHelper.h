//
//  TMNavigationBarHelper.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMNavigationBarHelper : NSObject

+ (void)createRightBarItemForController:(UIViewController *)aController withAction:(SEL)anAction name:(NSString *)aName;

+ (void)createRightBarItemForController:(UIViewController *)aController withAction:(SEL)anAction imageName:(NSString *)anImageName;

@end
