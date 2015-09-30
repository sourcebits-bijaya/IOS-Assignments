//
//  ViewController.m
//  EmployeeDetail
//
//  Created by Nanthakumar R on 28/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ViewController.h"
#import "Sound.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cowSound:(id)sender {
    Sound* cowSound = [[Sound alloc] init];
    cowSound.source = @"COW";
    cowSound.soundDescription = @"Muhh";
    NSLog(@"%@ says %@",cowSound.source , cowSound.soundDescription );
}
- (IBAction)dogSound:(id)sender {
    Sound* dogSound = [[Sound alloc] init];
    dogSound.source = @"DOG";
    dogSound.soundDescription = @"Bark";
    NSLog(@"%@ says %@",dogSound.source , dogSound.soundDescription );
}
- (IBAction)catSound:(id)sender {
    
    Sound* catSound = [[Sound alloc] init];
    catSound.source = @"CAT";
    catSound.soundDescription = @"Meow";
    NSLog(@"%@ says %@",catSound.source , catSound.soundDescription );
    
}

@end
