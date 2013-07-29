//
//  TMMapViewController.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMTransactionWithObject.h"
#import "TMPlacesDataProvider.h"

@interface TMMapController : UIViewController

@property (nonatomic, strong) id <TMTransactionWithObject> placeDetailsTransaction;
@property (nonatomic, strong) TMPlacesDataProvider *placesDataProvider;

@end
