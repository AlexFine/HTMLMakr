//
//  ViewController.h
//  htmlreader
//
//  Created by iD Student on 7/24/14.
//  Copyright (c) 2014 Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "GAITrackedViewController.h"

@interface ViewController : GAITrackedViewController <UIWebViewDelegate, UITextFieldDelegate, ADBannerViewDelegate>{
    NSString *weburl;
   // int num = 1;
}
@property (strong, nonatomic) IBOutlet UIImageView *HM;
@property (strong, nonatomic) IBOutlet UIWebView *videoviewdos;
@property (strong, nonatomic) IBOutlet UIButton *Home;
@property (strong, nonatomic) IBOutlet UIWebView *Web2;
@property (strong, nonatomic) IBOutlet UIButton *search;

@property (strong, nonatomic) IBOutlet UIButton *preview;
@property (strong, nonatomic) IBOutlet UIWebView *videoview;
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *HTML;
@property (strong, nonatomic) IBOutlet UIButton *Hack;
@property (strong, nonatomic) IBOutlet UIButton *Save;
@property (strong, nonatomic) IBOutlet UIButton *How;
@property (strong, nonatomic) IBOutlet UIButton *QueHTML;
@property (strong, nonatomic) IBOutlet UIButton *back2;
- (IBAction)Saved:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *rad;
@property (strong, nonatomic) IBOutlet UIButton *share;
- (IBAction)Share:(id)sender;
- (IBAction)About:(id)sender;

- (IBAction)surchbutton:(id)sender;
- (IBAction)gotohtml:(id)sender;
- (IBAction)backbutton:(id)sender;
- (IBAction)fowrdbutton:(id)sender;
- (IBAction)deleteButton:(id)sender;
- (IBAction)Random:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *textView;
- (IBAction)nextView:(id)sender;
- (IBAction)goButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (strong, nonatomic) IBOutlet UIWebView *web;
@property (strong, nonatomic) IBOutlet UIButton *goButtonoutlet;
@property (strong, nonatomic) IBOutlet UILabel *headLabel;
@property (strong, nonatomic) IBOutlet UIButton *nextView;
+ (NSString *) applicationDocumentsDirectory;

@property (strong, nonatomic) IBOutlet UIWebView *videoview2;
@property (strong, nonatomic) IBOutlet UIButton *Video2Back;


@end
