//
//  htmlpage.h
//  htmlreader
//
//  Created by iD Student on 7/24/14.
//  Copyright (c) 2014 Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "GAITrackedViewController.h"

@interface htmlpage : GAITrackedViewController <UIAlertViewDelegate, ADBannerViewDelegate>{
    NSString *pagename;
    UIAlertView *message;
    NSString *searchword;
    UITextField * field;

}
@property (strong, nonatomic) IBOutlet UIButton *pregunta;
- (IBAction)Namesearch:(id)sender;
- (IBAction)run:(id)sender;
- (IBAction)savebutton:(id)sender;
- (IBAction)clearkeybord:(id)sender;
- (IBAction)searchbutton:(id)sender;
- (IBAction)CSSSearch:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *run;
@property (strong, nonatomic) IBOutlet UIButton *save;
@property (strong, nonatomic) IBOutlet UIButton *CSS;
@property (strong, nonatomic) IBOutlet UIButton *search;
@property (strong, nonatomic) IBOutlet UIButton *Name;
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *inspect;
- (IBAction)inspectrun:(id)sender;


+ (NSString *) applicationDocumentsDirectory;
@property (strong, nonatomic) IBOutlet UITextView *htmlfield;
@property (strong, nonatomic) IBOutlet UITextField *textfield;



@end
