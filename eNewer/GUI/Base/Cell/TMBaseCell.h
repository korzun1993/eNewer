//
//  TMBaseCell.h
//  eNewer
//
//  Created by Vlad Korzun on 28.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMBaseCell : UITableViewCell

@property (nonatomic, strong) id cellObject;

+ (CGFloat)heightForCellWithObject:(id)anObject;

@end
