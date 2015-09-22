//
//  TableViewCell.m
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        NSLog(@"HI");
    }
    return self;
}
- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
//- (IBAction)Viewers:(id)sender {
    
//}
@end
