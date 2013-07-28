//
//  TMBaseCell.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMBaseCell.h"

@implementation TMBaseCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        self = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil][0];
    }
    return self;
}

+ (CGFloat)heightForCellWithObject:(id)anObject
{
    return 44.;
}

@end
