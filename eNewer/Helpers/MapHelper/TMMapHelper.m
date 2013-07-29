//
//  TMMapHelper.m
//  eNewer
//
//  Created by Vlad Korzun on 29.07.13.
//  Copyright (c) 2013 Vlad Korzun. All rights reserved.
//

#import "TMMapHelper.h"



@implementation TMMapHelper

+ (void)createAnnotationsOnMap:(MKMapView *)mapView withLocationsArray:(NSArray *)locationsArray
{
    for (TMBOPlace* location in locationsArray) {
        CLLocationCoordinate2D annotationCoord = [self coordinatesForLocation:location];
        
        MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc] init];
        pointAnnotation.coordinate = annotationCoord;
        pointAnnotation.title = location.placeName;
        pointAnnotation.subtitle = location.placeAddress;
        [mapView addAnnotation:pointAnnotation];
    }
}

+ (CLLocationCoordinate2D)coordinatesForLocation:(TMBOPlace *)location
{
    CLLocationCoordinate2D locationCoord;
    locationCoord.latitude = location.placeGeo.geoLatitude.doubleValue;
    locationCoord.longitude = location.placeGeo.geoLongitude.doubleValue;
    return locationCoord;
}

+ (void)makeVisibleAllLocations:(NSArray *)locationsArray onMap:(MKMapView *)mapView
{
    MKMapRect zoomRect = MKMapRectNull;
    for (TMBOPlace *location in locationsArray) {
        CLLocationCoordinate2D annotationCoord = [self coordinatesForLocation:location];
        MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc] init];
        pointAnnotation.coordinate = annotationCoord;
        MKMapPoint annotationPoint = MKMapPointForCoordinate(pointAnnotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1);
        zoomRect = MKMapRectUnion(zoomRect, pointRect);
    }
    [mapView setVisibleMapRect:zoomRect animated:YES];
}


@end
