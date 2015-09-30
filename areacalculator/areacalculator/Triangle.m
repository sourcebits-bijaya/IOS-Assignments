//
//  Triangle.m
//  areacalculator
//
//  Created by Nanthakumar R on 28/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "Triangle.h"
#define HALF ((float) 0.5)

@implementation Triangle

-(id)initWithWidth:(float)triangleWidth andHeight:(float)triangleHeight {
    width = triangleWidth;
    height = triangleHeight;
    return self;
}
-(void)calculateArea {
    area = HALF * width * height;
    NSLog(@"Area of Triangle is %.2f square meters", area);
}

@end
