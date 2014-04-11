//
//  ChecklistItem.m
//  Checklists
//
//  Created by Tyler Hemmie on 3/28/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

- (void)toggleChecked
{
    self.checked = !self.checked;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.text forKey:@"Text"]; [aCoder encodeBool:self.checked forKey:@"Checked"];
}

@end
