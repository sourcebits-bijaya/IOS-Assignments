//
//  Triangle.h
//  areacalculator
//
//  Created by Nanthakumar R on 28/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "Area.h"

@interface Triangle : Area

{
    float width;
    float height;
    
}
-(id)initWithWidth: (float)triangleWidth andHeight: (float)triangleHeight;

@end
