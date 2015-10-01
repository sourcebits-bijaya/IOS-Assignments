//
//  ViewController.m
//  StudentRecords
//
//  Created by Nanthakumar R on 30/09/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSArray *records;
    int index;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    index=0;
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *s1 = @{
                         @"roll": @"01",
                         @"name": @"Jules",
                         @"mark": @534,
                         @"class": @"x"
                         };
    NSDictionary *s2 = @{
                         @"roll": @"02",
                         @"name": @"Becky",
                         @"mark": @234,
                         @"class": @"ix"
                         };
    NSDictionary *s3 = @{
                         @"roll": @"03",
                         @"name": @"Jordan",
                         @"mark": @334,
                         @"class": @"xii"
                         };
    NSDictionary *s4 = @{
                         @"roll": @"04",
                         @"name": @"Niki",
                         @"mark": @434,
                         @"class": @"xi"
                         };
    records = @[s1, s2, s3, s4];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)accessPreviousRecord:(id)sender {
    

     --index;
    if (index < 0) {
        index =0;
        NSLog(@"Reached the First Record");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reached the first record"
                                                        message:@"No more records to show."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
       
        return;
    }
   _labelForStudentRoll.text = [records[index] objectForKey:@"roll"];
   _labelForStudentName.text = [records[index] objectForKey:@"name"];
   _labelForStudentClass.text = [records[index] objectForKey:@"class"];
    
    NSLog(@"%@", records[index]);
//    NSLog(@"%@", [records[index] objectForKey:@"mark"]);
   
   }

- (IBAction)accessNextRecord:(id)sender {
    
    if (index>= records.count) {
        
        NSLog(@"Reached the Last Record");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reached the last record"
                                                        message:@"No more records to show."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        return;
    }
    _labelForStudentRoll.text = [records[index] objectForKey:@"roll"];
    _labelForStudentName.text = [records[index] objectForKey:@"name"];
    _labelForStudentClass.text = [records[index] objectForKey:@"class"];
    NSLog(@"%@", records[index]);
//    NSLog(@"%@", [records[index] objectForKey:@"mark"]);
    ++index;
    
   
}

@end
