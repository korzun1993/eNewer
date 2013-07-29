//
//  TMMapHelper.h
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMBOPlace.h"
#import <MapKit/MapKit.h>

@interface TMMapHelper : NSObject

+ (void)createAnnotationsOnMap:(MKMapView *)mapView withLocationsArray:(NSArray *)locationsArray;
+ (CLLocationCoordinate2D)coordinatesForLocation:(TMBOPlace *)location;
+ (void)makeVisibleAllLocations:(NSArray *)locationsArray onMap:(MKMapView *)mapView;

@end
