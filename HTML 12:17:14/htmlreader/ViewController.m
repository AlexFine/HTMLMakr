//
//  ViewController.m
//  htmlreader
//
//  Created by iD Student on 7/24/14.
//  Copyright (c) 2014 Ilya. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "htmlpage.h"
#import <iAd/iAd.h>
#import "Social/Social.h"
#import "ViewController2.h"
#import "Global.h"
#import "TableViewCell.h"


@interface ViewController ()
{
  //  BOOL _bannerIsVisible;
 //   ADBannerView *_adBanner;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.back2.layer.cornerRadius = 4.0;
    self.rad.layer.cornerRadius = 4.0;
    self.share.layer.cornerRadius = 8.0;
    self.back.layer.cornerRadius = 4.0;
    self.HTML.layer.cornerRadius = 4.0;
    _HTML.clipsToBounds = YES;
    _back2.clipsToBounds = YES;
    _back.clipsToBounds = YES;
    _share.clipsToBounds = YES;
    _Hack.clipsToBounds = YES;
    _Save.clipsToBounds = YES;
    _How.clipsToBounds = YES;
    _QueHTML.clipsToBounds = YES;
    _Home.clipsToBounds = YES;
    _HM.clipsToBounds = YES;
    self.HM.layer.cornerRadius = 8.0;
    self.search.layer.cornerRadius = 2.0;
    _search.clipsToBounds = YES;
    _Video2Back.clipsToBounds = YES;

    _rad.clipsToBounds = YES;
    self.preview.layer.cornerRadius = 4.0;
    _preview.clipsToBounds = YES;

    self.Hack.layer.cornerRadius = 8.0;
    self.Save.layer.cornerRadius = 8.0;
    self.How.layer.cornerRadius = 8.0;
    self.QueHTML.layer.cornerRadius = 8.0;
    self.Home.layer.cornerRadius = 3.0;
  //  self.Home.layer.borderWidth = 1.0;

    self.HTML.sizeToFit;

   // self.back.layer.borderWidth = 2.0;
    
    // Do any additional setup after loading the view.
    NSString *urlAddress = @"http://htmlmakr.com";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_videoview loadRequest:requestObj];
    [_videoview2 loadRequest:requestObj];
    self.Video2Back.layer.cornerRadius = 4.0;

    
    NSString *urlAddress2 = @"https://www.youtube.com/watch?v=bWPMSSsVdPk";
    
    //Create a URL object.
    NSURL *url2 = [NSURL URLWithString:urlAddress2];
    
    //URL Requst Object
    NSURLRequest *requestObj2 = [NSURLRequest requestWithURL:url2];
    
    //Load the request in the UIWebView.
    [_videoviewdos loadRequest:requestObj2];

	// Do any additional setup after loading the view, typically from a nib.
    [self.webview setDelegate:self];
    self.textfield.delegate = self;
    self.textfield.returnKeyType = UIReturnKeyGo;
    self.parentViewController.view.frame =
    CGRectMake(0, 0, self.view.frame.size.width,
               self.view.frame.size.height);
  //  var num: Int;

    int sum = 0;
 /*
UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
   swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeft];

    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeRight];
*/
  //  [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]]];
    [self.Web2 setDelegate:self];

    
 //   [self.savetextView setFont:[UIFont fontWithName:@"Courier New" size:20.0f]];
    
    NSString *filePath = [[ViewController applicationDocumentsDirectory] stringByAppendingString:@"/Notes.txt"];
    [Global readFromFile:filePath];
    
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [self.webview goForward];

    [self fowrdbutton:nil];
    NSLog(@"left");
    
}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [self.webview goBack];
    
    [self backbutton:nil];
    NSLog(@"right");
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {
    [targetTextField resignFirstResponder];
    [self surchbutton:nil];
    return YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
  //  _adBanner = [[ADBannerView alloc] initWithFrame:CGRectMake(0, 152, 320, 50)];
//    _adBanner.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.screenName = @"Homescreen + Codescreen";

  //  for (int i=0; i<1; i++){

   // [self current:nil];
//    }
    NSString *basePath = [htmlpage applicationDocumentsDirectory];
    // NSString *preBase = @"file:/";
         // Code to run once
int i=0;
    i++;
    
    NSString *Newcurrent = [NSString stringWithFormat:@"/current.html"];
    NSString *current = [NSString stringWithFormat:@"/%d/current.html", i];
    NSString *filePath = [basePath stringByAppendingString:@"/current.html"];
        NSLog(@"%d", i);

    NSURL *nurl = [[NSURL alloc] initWithString:filePath];
    NSURLRequest *urlrequest = [[NSURLRequest alloc] initWithURL:nurl];
     [self.webview loadRequest:urlrequest];
    [self.Web2 loadRequest:urlrequest];
    

}

/*- (IBAction)current:(id)sender {
    static dispatch_once_t once;
    dispatch_once(&once, ^ {
        int i = 0;
        i++;
        NSString *basePath = [htmlpage applicationDocumentsDirectory];
  
        NSString *current = [NSString stringWithFormat:@"/current%d.html", i];
        NSString *filePath = [basePath stringByAppendingString:current];
        NSLog(@"%d", i*10);
        
        NSURL *nurl = [[NSURL alloc] initWithString:filePath];
        NSURLRequest *urlrequest = [[NSURLRequest alloc] initWithURL:nurl];
        [self.webview loadRequest:urlrequest];
        [self.Web2 loadRequest:urlrequest];
    
    });

}*/

- (void)webViewDidFinishLoad:(UIWebView*)webview{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    weburl = [self.webview stringByEvaluatingJavaScriptFromString:@"document.URL"];
    [self.textfield setText:[NSString stringWithFormat:@"%@",weburl]];
    if (self.textfield == nil){
        [self beamers];
    }
}

-(void)beamers{

}

+ (NSString *) applicationDocumentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

- (IBAction)Saved:(id)sender {
   // UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save Feature Test" message:@"Try the early version of our save feature!" delegate:self cancelButtonTitle:@"Okay!" otherButtonTitles:nil, nil];
   // [alert show];

}

- (IBAction)Share:(id)sender {
    SLComposeViewController *slCompose = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    NSString *postMessage = @"Hacking with HTML Makr. Check it out: https://itunes.apple.com/us/app/html-maker/id923218868?ls=1&mt=8 #coding #icanhack @htmlmakr";
    [slCompose setInitialText:postMessage];
    [self presentViewController:slCompose animated:YES completion:nil];
    

}

- (IBAction)About:(id)sender {
    [self Random:nil];

}

- (IBAction)surchbutton:(id)sender {
    NSLog(@"textfield");
    NSString *urlString = self.textfield.text;
    NSURL *url;
  
    if([urlString hasPrefix:@"http://"] || [urlString hasPrefix:@"http:/"] || [urlString hasPrefix:@"http:"]) {
        url = [NSURL URLWithString:urlString];
    }else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.textfield.text]];
    }
    
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webview loadRequest:urlRequest];
    [self.Web2 loadRequest:urlRequest];

    NSLog(@"finalstep");

}

- (IBAction)gotohtml:(id)sender {
    NSLog(@"html");

    NSURL *currentURL = _webview.request.URL.absoluteURL;
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.url = currentURL; // デリゲートプロパティに値代入
    NSLog(@"htmlfinished");
    [self nextView:nil];
}

- (IBAction)backbutton:(id)sender {
    [self.webview goBack];
}

- (IBAction)fowrdbutton:(id)sender {
    [self.webview goForward];
}

- (IBAction)deleteButton:(id)sender {
    [self.textfield setText:[NSString stringWithFormat:@""]];
}

- (IBAction)Random:(id)sender {
    NSLog(@"textfield");
    NSString *firstString = @"http://techcrunch.com";
    NSString *secondString = @"http://google.com";
    NSString *thirdString = @"http://yahoo.com";
  //  let names = ["Anna", "Alex", "Brian", "Jack"]

    NSString *urlString = @"http://htmlmakr.com/use.html";
    NSURL *url;
    
    if([urlString hasPrefix:@"http://"] || [urlString hasPrefix:@"http:/"] || [urlString hasPrefix:@"http:"]) {
        url = [NSURL URLWithString:urlString];
    }else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.textfield.text]];
    }
    
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webview loadRequest:urlRequest];
    NSLog(@"finalstep");
    

}


+ (NSString *) applicationDocumentsDirectory2
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}
- (IBAction)nextView:(id)sender {
    NSMutableArray *array = [Global getDataArray];
    [array insertObject:self.textfield.text atIndex:0];
    ViewController2 *vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"viewController2"];
    [self.navigationController pushViewController:vc2 animated:YES];
    //DO THIS TO SAVE
    NSString *filePath = [[ViewController applicationDocumentsDirectory2] stringByAppendingString:@"/Notes.txt"];
    BOOL success = [array writeToFile:filePath atomically:YES];
    NSLog(@"%d", success);
    
}
-(BOOL)textViewShouldEndEditing:(UITextView *)textView{
    [textView resignFirstResponder];
    return YES;
}


//int values[4] = {240, 320, 640, 920};
//int value = values[random() % 4];


@end
