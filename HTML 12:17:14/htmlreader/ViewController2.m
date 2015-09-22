//
//  ViewController2.m
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController.h"
#import "TableViewCell.h"
#import "Global.h"


@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.table setDelegate:self];
    [self.table setDataSource:self];
    array = [Global getDataArray];
    self.deletebutton.layer.borderWidth = 0;
    self.deletebutton.layer.borderColor = ([UIColor blueColor].CGColor);
    self.deletebutton.layer.cornerRadius = 8.0;
    
    UINib *nib = [UINib nibWithNibName:@"tableCell" bundle:[NSBundle mainBundle]];
    [self.table registerNib:nib forCellReuseIdentifier:@"tableViewCell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 132;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [array count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.savetextView.text = [array objectAtIndex:[indexPath row]];
    return cell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [array removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
        //DO THIS TO SAVE
        NSString *filePath = [[ViewController applicationDocumentsDirectory] stringByAppendingString:@"/Notes.txt"];
        BOOL success = [array writeToFile:filePath atomically:YES];
        NSLog(@"%d", success);
    }
    
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)aTableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = (TableViewCell*)[aTableView cellForRowAtIndexPath:indexPath];
    if (!cell.editing)
    {
        return UITableViewCellEditingStyleDelete;
    }
    
    return UITableViewCellEditingStyleNone;
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)delete:(id)sender {
    //[array removeObjectAtIndex:];
    //  loadview array
}
@end
