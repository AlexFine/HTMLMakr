//
//  ViewController2.h
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController2 : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *array;
}
@property (strong, nonatomic) IBOutlet UITableView *table;
- (IBAction)delete:(id)sender;
//@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UIButton *deletebutton;

@end
