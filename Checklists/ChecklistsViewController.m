//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Tyler Hemmie on 3/20/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import "ChecklistsViewController.h"

#import "ChecklistItem.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController {
    ChecklistItem *_row0item;
    ChecklistItem *_row1item;
    ChecklistItem *_row2item;
    ChecklistItem *_row3item;
    ChecklistItem *_row4item;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _row0text = @"Walk the dog";
    _row1text = @"Brush teeth";
    _row2text = @"Learn iOS development";
    _row3text = @"Soccer practice";
    _row4text = @"Eat ice cream";
    
    
    _row1checked = YES; _row2checked = YES; _row4checked = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5; }
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    if (indexPath.row == 0) { label.text = _row0text;
    } else if (indexPath.row == 1) {
        label.text = _row1text;
    } else if (indexPath.row == 2) {
        label.text = _row2text;
    } else if (indexPath.row == 3) {
        label.text = _row3text;
    } else if (indexPath.row == 4) {
        label.text = _row4text;
    }
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    return cell; }

- (void)configureCheckmarkForCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    BOOL isChecked = NO;
    if (indexPath.row == 0) {
        isChecked = _row0checked;
    } else if (indexPath.row == 1) {
        isChecked = _row1checked;
    } else if (indexPath.row == 2) {
        isChecked = _row2checked;
    } else if (indexPath.row == 3) {
        isChecked = _row3checked;
    } else if (indexPath.row == 4) {
        isChecked = _row4checked;
    }
    if (isChecked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) { _row0checked = !_row0checked;
    } else if (indexPath.row == 1) { _row1checked = !_row1checked;
    } else if (indexPath.row == 2) { _row2checked = !_row2checked;
    } else if (indexPath.row == 3) { _row3checked = !_row3checked;
    } else if (indexPath.row == 4) { _row4checked = !_row4checked;
    }
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; }
@end
