//
//  ViewController.m
//  KVCO DEMO
//
//  Created by Nanthakumar R on 14/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ViewController.h"

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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    EditViewController *detailViewController = [[EditViewController alloc] init];
    // Assign self as the delegate for the child view controller
    detailViewController.delegate = self;
    [self.navigationController pushViewController:detailViewController animated:YES];
}

// Implement the delegate methods for ChildViewControllerDelegate
- (void)editViewController:(EditViewController *)viewController didChooseValue:(CGFloat)value {
    
    // Do something with value...
    
    // ...then dismiss the child view controller
    [self.navigationController popViewControllerAnimated:YES];
}

@end
