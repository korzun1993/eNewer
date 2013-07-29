//
//  TMStandardErrorHandler.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMStandardErrorHandler.h"
#import "JSONKit.h"

@implementation TMStandardErrorHandler

+ (void)showErrorWithTitle:(NSString *)title message:(NSString *)message
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alertView show];
}

+ (void)showErrorWithCode:(NSInteger)code
{
    switch (code) {
        case 401:
        {
            [TMStandardErrorHandler showErrorWithTitle:@"Error"
                                               message:@"Authorization failed"];
        }
            break;
        case -1011:
        {
            [TMStandardErrorHandler showErrorWithTitle:@"Error" message:@"Server is temporarily unavailable. Please try again later"];
        }
            break;
        default:
            break;
    }
    
}

+ (void)showErrorWithError:(NSError *)error
{
    NSString *responseErrorDictionary = [error.userInfo objectForKey:@"NSLocalizedRecoverySuggestion"];
    
    NSString *errorMessage = [responseErrorDictionary objectFromJSONString][@"error_message"];
    
    if (errorMessage){
        [TMStandardErrorHandler showErrorWithTitle:@"Error"
                                           message:errorMessage];
    } else {
        [TMStandardErrorHandler showErrorWithCode:error.code];
    }
}

@end
