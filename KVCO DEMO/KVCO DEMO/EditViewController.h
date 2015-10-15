//
//  EditViewController.h
//  KVCO DEMO
//
//  Created by Nanthakumar R on 14/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>

// 1. Forward declaration of ChildViewControllerDelegate - this just declares
// that a ChildViewControllerDelegate type exists so that we can use it
// later.

@protocol EditViewControllerDelegate;

@interface EditViewController : UIViewController


// 2. Declaration of the view controller class, as usual
@property (nonatomic, weak) id<EditViewControllerDelegate> delegate;


// A simple IBAction method that I'll associate with a close button in
// the UI. We'll call the delegate's childViewController:didChooseValue:
// method inside this handler.
- (IBAction)cancelEdit:(id)sender;
- (IBAction)saveData:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *studentName;
@property (strong, nonatomic) IBOutlet UITextField *studentClass;
@property (strong, nonatomic) IBOutlet UITextField *studentAge;

@end

// 3. Definition of the delegate's interface
@protocol ChildViewControllerDelegate <NSObject>

- (void)editViewController:(EditViewController*)viewController didChooseValue:(CGFloat)value;

@end