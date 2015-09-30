//
//  main.m
//  areacalculator
//
//  Created by Nanthakumar R on 23/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Circle.h"
#import "Square.h"
#import "Triangle.h"

int main(int argc, char * argv[]) {
    
    
    
    @autoreleasepool {
        Circle *objCircle = [[Circle alloc] initWithRadius:50];
        [objCircle calculateArea];
        
        Square *square = [[Square alloc]initWithSide:70.0];
        [square calculateArea];
    
        Triangle *triangle = [[Triangle alloc]initWithWidth: 20.0 andHeight:30.0];
        [triangle calculateArea];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    
}
