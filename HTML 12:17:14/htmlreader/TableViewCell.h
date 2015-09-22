//
//  TableViewCell.h
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextView *savetextView;
//- (IBAction)Viewers:(id)sender;
@property (assign, nonatomic) int row;
//@property(nonatomic, getter=isEditing) BOOL editing
@end
