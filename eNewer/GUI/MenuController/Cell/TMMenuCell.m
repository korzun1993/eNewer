//
//  TMMenuCell.m
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMenuCell.h"

@interface TMMenuCell()

@property (nonatomic, strong) IBOutlet UILabel *menuItemLabel;
@property (nonatomic, strong) IBOutlet UIImageView *menuItemImageView;

@end

@implementation TMMenuCell

- (void)setCellObject:(id)cellObject
{
    [super setCellObject:cellObject];
    self.menuItemLabel.text = cellObject;
    self.menuItemImageView.image = [self imageFromMenuItemText:cellObject];
}

- (UIImage *)imageFromMenuItemText:(NSString *)anItemName
{
    return [UIImage imageNamed:anItemName.lowercaseString];
}

@end
