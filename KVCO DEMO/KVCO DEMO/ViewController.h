//
//  ViewController.h
//  KVCO DEMO
//
//  Created by Nanthakumar R on 14/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"

@interface ViewController : UIViewController <EditViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *studentRecords;

@end

