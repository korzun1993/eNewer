//
//  TMNewsCell.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMNewsCell.h"
#import "TMBONews.h"

@interface TMNewsCell()

@property (nonatomic, strong) IBOutlet UILabel *dateLabel;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UIImageView *newsImageView;

@end

@implementation TMNewsCell

- (void)setCellObject:(id)cellObject
{
    [super setCellObject:cellObject];
    TMBONews *news = cellObject;
    self.dateLabel.text = news.newsDate;
    self.titleLabel.text = news.newsTitle;
    if(news.newsImage){
        [self.newsImageView setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",kTMNewsBaseUrl,news.newsImage]] placeholderImage:nil];
    } else {
        self.newsImageView.image = nil;
    }
}

+ (CGFloat)heightForCellWithObject:(id)anObject
{
    return 58.;
}

@end
