//
//  Square.m
//  areacalculator
//
//  Created by Nanthakumar R on 28/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id)initWithSide:(float)side {
    length = side;
    return self;
}
-(void)calculateArea {
    area = length*length;
    NSLog(@"Area of Square is %.2f square mtrs",area);
}

@end
