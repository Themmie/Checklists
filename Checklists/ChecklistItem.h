//
//  ChecklistItem.h
//  Checklists
//
//  Created by Tyler Hemmie on 3/28/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject <NSCoding>

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;

- (void)toggleChecked;


@end
