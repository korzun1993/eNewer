//
//  TMNewsDetailsController.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsDetailsController.h"
#import "TMAPIProvider.h"
#import "NSString+HTML.h"

@interface TMNewsDetailsController ()

@property (nonatomic, weak) IBOutlet UITextView *anaonsTextView;
@property (nonatomic) BOOL isAlreadyLoaded;

@end

@implementation TMNewsDetailsController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setInfo];
}

- (void)setInfo
{
    self.title = self.currentNews.newsTitle;
    self.anaonsTextView.text = self.currentNews.newsAnons.removeAllTegs;
    if(!self.currentNews.newsAnons.length && !self.isAlreadyLoaded){
        [self downloadFullDescription];
    }
}

- (void)downloadFullDescription
{
    [TMAPIProvider loadInfoAboutNewsWithID:self.currentNews.newsID successHandler:^(id anObject) {
        self.currentNews = anObject;
        [self setInfo];
        self.isAlreadyLoaded = YES;
    } errorHandler:^(NSError *anError) {
        [TMStandardErrorHandler showErrorWithError:anError];
    }];
}

@end
