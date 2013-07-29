//
//  TMPlacesCell.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlacesCell.h"
#import "TMBOPlace.h"

@interface TMPlacesCell()

@property (nonatomic, weak) IBOutlet UILabel *placeNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *placeAddressLabel;

@end

@implementation TMPlacesCell

- (void)setCellObject:(id)cellObject
{
    [super setCellObject:cellObject];
    TMBOPlace *currentPlace = cellObject;
    self.placeAddressLabel.text = currentPlace.placeAddress;
    self.placeNameLabel.text = currentPlace.placeName;
}

+ (CGFloat)heightForCellWithObject:(id)anObject
{
    return 58.;
}

@end
