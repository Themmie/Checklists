//
//  AddItemViewController.h
//  Checklists
//
//  Created by Tyler Hemmie on 3/29/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;

- (IBAction)cancel;
- (IBAction)done;

@end
