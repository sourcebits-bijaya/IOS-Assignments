//
//  ViewController.h
//  TableView Assignment
//
//  Created by Nanthakumar R on 09/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *messageBox;
@property(strong, nonatomic, readwrite) NSMutableArray *allChats;
@property (strong, nonatomic) IBOutlet UITableView *tableV;

@end

