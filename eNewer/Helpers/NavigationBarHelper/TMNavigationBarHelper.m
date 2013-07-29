//
//  TMNavigationBarHelper.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNavigationBarHelper.h"

@implementation TMNavigationBarHelper

+ (void)createRightBarItemForController:(UIViewController *)aController withAction:(SEL)anAction name:(NSString *)aName
{
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:aName
                                                                           style:UIBarButtonItemStyleBordered
                                                                          target:aController
                                                                          action:anAction];
    [aController.navigationItem setRightBarButtonItem:rightBarButtonItem animated:YES];
}

+ (void)createRightBarItemForController:(UIViewController *)aController withAction:(SEL)anAction imageName:(NSString *)anImageName
{
    UIImage *buttonImage = [UIImage imageNamed:anImageName];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, buttonImage.size.width, buttonImage.size.height)];
    [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [button addTarget:aController action:anAction forControlEvents:UIControlEventTouchUpInside];
    [aController.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:button] animated:YES];
}

@end
