//
//  Circle.m
//  areacalculator
//
//  Created by Nanthakumar R on 23/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "Circle.h"
#define PIE ((float) 3.14)
@implementation Circle
-(id)initWithRadius:(float)circleRadius {
    self = [super init];
    radius = circleRadius;
    return self;
}
-(void)calculateArea {
    area= roundf(PIE * radius * radius)*100/100.0;
    NSLog(@"Area of Circle is %.2f square meters", area);
}

@end
