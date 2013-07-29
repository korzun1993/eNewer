//
//  TMPlaceDetailsControllerViewController.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMPlaceDetailsController.h"

@interface TMPlaceDetailsController ()

@property (nonatomic, weak) IBOutlet UILabel *placeNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *placeAddressLabel;

@end

@implementation TMPlaceDetailsController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Place";
    
    self.placeNameLabel.text = self.currentPlace.placeName;
    self.placeAddressLabel.text = self.currentPlace.placeAddress;
    
}


@end
