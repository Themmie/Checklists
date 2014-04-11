//
//  ItemDetailViewController.h
//  Checklists
//
//  Created by Tyler Hemmie on 3/29/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import <UIKit/UIKit.h>

@class itemDetailViewController;
@class ChecklistItem;

@protocol ItemDetailViewControllerDelegate <NSObject>

- (void)itemDetailViewControllerDidCancel:
(itemDetailViewController *)controller;

- (void)itemDetailViewController:
(itemDetailViewController *)controller
          didFinishAddingItem:(ChecklistItem *)item;

- (void)itemDetailViewController:
(itemDetailViewController *)controller
         didFinishEditingItem:(ChecklistItem *)item;
@end

@interface itemDetailViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (nonatomic, weak) id <ItemDetailViewControllerDelegate> delegate;
@property (nonatomic, strong) ChecklistItem *itemToEdit;

- (IBAction)cancel;
- (IBAction)done;

@end
