//
//  ViewController.m
//  TableView Assignment
//
//  Created by Nanthakumar R on 09/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *msg ;
}
@end

@implementation ViewController


- (IBAction)sendMessage:(id)sender {
    msg = _messageBox.text;
  
   [_allChats addObject:msg];
   [self.tableV reloadData];
    _messageBox.text = @"";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.allChats=[NSMutableArray array];
    
    self.tableV.estimatedRowHeight = 44.0;
    self.tableV.rowHeight = UITableViewAutomaticDimension;
    self.tableV.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_allChats count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [_allChats objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines = 0;
    return cell;
}

@end
