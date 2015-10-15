//
//  EditViewController.m
//  KVCO DEMO
//
//  Created by Nanthakumar R on 14/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveData:(id)sender {
    
    // Xcode will complain if we access a weak property more than
    // once here, since it could in theory be nilled between accesses
    // leading to unpredictable results. So we'll start by taking
    // a local, strong reference to the delegate.
    id<EditViewControllerDelegate> strongDelegate = self.delegate;
    
    // Our delegate method is optional, so we should
    // check that the delegate implements it
    if ([strongDelegate respondsToSelector:@selector(EditViewController:didChooseValue:)]) {
        [strongDelegate editViewController:self didChooseValue:self.studentName.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelEdit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
