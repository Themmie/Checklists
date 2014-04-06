//
//  AddItemViewController.h
//  Checklists
//
//  Created by Tyler Hemmie on 3/29/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddItemViewController; @class ChecklistItem;
@protocol AddItemViewControllerDelegate <NSObject> - (void)addItemViewControllerDidCancel:
(AddItemViewController *)controller;
- (void)addItemViewController:
(AddItemViewController *)controller
          didFinishAddingItem:(ChecklistItem *)item;
@end

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (nonatomic, weak) id <AddItemViewControllerDelegate> delegate;
@property (nonatomic, strong) ChecklistItem *itemToEdit;

- (IBAction)cancel;
- (IBAction)done;

@end
