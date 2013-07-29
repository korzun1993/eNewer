//
//  TMMapViewController.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMapController.h"
#import "TMMapHelper.h"
#import "TMBOPlace.h"

@interface TMMapController ()<MKMapViewDelegate>

@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end

@implementation TMMapController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Places";
    [TMMapHelper createAnnotationsOnMap:self.mapView withLocationsArray:self.placesDataProvider.arrayOfItems];
    [TMMapHelper makeVisibleAllLocations:self.placesDataProvider.arrayOfItems onMap:self.mapView];
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    MKPointAnnotation *anotation = (MKPointAnnotation *)view.annotation;
    TMBOPlace *place = [self placeWithName:anotation.title address:anotation.subtitle];
    if(place){
        [self.placeDetailsTransaction performWithObject:place];
    }
}

- (TMBOPlace *)placeWithName:(NSString *)aName address:(NSString *)anAddress
{
    for(TMBOPlace *place in self.placesDataProvider.arrayOfItems){
        if([aName isEqualToString:place.placeName] && [anAddress isEqualToString:place.placeAddress]){
            return place;
        }
    }
    return nil;
}

@end
