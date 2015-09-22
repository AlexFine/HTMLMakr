//
//  htmlpage.m
//  htmlreader
//
//  Created by iD Student on 7/24/14.
//  Copyright (c) 2014 Ilya. All rights reserved.
//

#import "htmlpage.h"
#import "AppDelegate.h"
#import  <iAd/iAd.h>
#import "Social/Social.h"


@interface htmlpage ()
{
    //   BOOL _bannerIsVisible;
    //  ADBannerView *_adBanner;
}

@end

@implementation htmlpage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
    //  self.htmlfield.delegate = self;
    // self.textfield = field;
    // [field release];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSURL *readurl = appDelegate.url;
    NSError *error;
    NSString *Page = [NSString stringWithContentsOfURL:readurl
                                              encoding:NSUTF8StringEncoding
                                                 error:&error];
    
    _htmlfield.text = [NSString stringWithFormat:@"%@",Page];
    UITapGestureRecognizer *tapRec = [[UITapGestureRecognizer alloc]
                                      initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer: tapRec];
    
    self.run.layer.cornerRadius = 4.0;
    // self.run.layer.borderWidth = 2.0;
    self.back.layer.cornerRadius = 4.0;
    self.inspect.layer.cornerRadius = 4.0;
    _back.clipsToBounds = YES;
    _inspect.clipsToBounds = YES;
    _run.clipsToBounds = YES;
    _search.clipsToBounds = YES;
    _pregunta.clipsToBounds = YES;
    self.pregunta.layer.cornerRadius = 4.0;
    self.search.layer.cornerRadius = 4.0;
    
    self.save.layer.cornerRadius = 8.0;
    //  self.save.layer.borderWidth = 2.0;
    
    self.CSS.layer.cornerRadius = 8.0;
    //  self.CSS.layer.borderWidth = 2.0;
    
    self.Name.layer.cornerRadius = 8.0;
    //  self.Name.layer.borderWidth = 2.0;
    //  [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"grey"]]];
    
    _htmlfield.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed: @"grey"]];
    
    [self comments1:nil];
    [self comments2:nil];
    [self comments3:nil];
    [self comments4:nil];
    [self comments5:nil];
    [self comments6:nil];
    [self comments7:nil];
    [self comments8:nil];
    [self comments9:nil];
    [self comments10:nil];
    [self comments11:nil];
    [self comments12:nil];
    [self comments13:nil];
    self.textfield.delegate = self;
    
    //Retract keyboard
    _htmlfield.delegate = self;
    NSArray *values = @[@"stylesheet", @"<body", @"<head",
                        @"</head>", @"<p ", @"<h1 ", @"<h2 ", @"<h3 ", @"<span ", @"</span>", @"<strong "];
    
    
    NSArray *valuesTest = @[@"<!-- this is called a comment. The computer doesn't read commented lines. It allows me to explain parts of the code, to the reader. -->", @"<!-- this is the head of the document and below, is the title -->", @"<!-- Edit this line of code to say your name! Then click generate! -->",
                            @"<!-- Here's the body, where the bulk of the coding happens -->", @"<!-- Edit this line of code to say your name! Then click generate! -->", @"<!-- this h1 tag means the text is larger, and more important-->", @"<!-- Here's an image! If you don't like this image, try copying and pasting some of these images into the url section! See what they are. -->", @"<!-- You can also try resizing the image -->", @"<!-- http://htmlmakr.com/acooldude.jpg-->", @"<!-- http://htmlmakr.com/running.jpg-->", @"<!-- http://htmlmakr.com/swim.jpg-->", @"<!-- Now that you have an idea of what HTML is, try using the inspect button to find parts of the code-->", @"<!--If you're feeling ambitious, try checking out the code on the this link -->"];
    
    // NSLog(@"First german make: %@", germanMakes);
    //  NSLog(@"First U.K. make: %@", [ukMakes objectAtIndex:0]);
    
    
}
-(void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.screenName = @"HTML edit page";
}
//-(void)tap:(UITapGestureRecognizer *)tapRec{
//    [[self view] endEditing: YES];
//}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    } else {
        return YES;
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {
    [targetTextField resignFirstResponder];
    [self searchbutton:nil];
    return YES;
}

-(void)textViewShouldBeginEditing:(UITextView *)textView{
    UIView* accessoryView  = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 40.0)];
    [accessoryView setBackgroundColor:[UIColor lightGrayColor]];
    
    // Let’s create our buttons now. First the previous button.
    UIButton* button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
  
    [button setFrame: CGRectMake(0.0, 0.0, 40.0, 40.0)];
    [button setTitle: @"<img" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(40.0, 0.0, 35.0, 40.0)];
    [button setTitle: @"<h1" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(75.0, 0.0, 35.0, 40.0)];
    [button setTitle: @"<h2" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(110.0, 0.0, 35.0, 40.0)];
    [button setTitle: @"<h3" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
   
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(145.0, 0.0, 40.0, 40.0)];
    [button setTitle: @"<!--" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];

    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(185.0, 0.0, 25.0, 40.0)];
    [button setTitle: @"<" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(210.0, 0.0, 25.0, 40.0)];
    [button setTitle: @">" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(235.0, 0.0, 25.0, 40.0)];
    [button setTitle: @"}" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(250.0, 0.0, 25.0, 40.0)];
    [button setTitle: @"{" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
    
    button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setFrame: CGRectMake(275.0, 0.0, 45.0, 40.0)];
    [button setTitle: @"src" forState: UIControlStateNormal];
    [button setBackgroundColor: [UIColor whiteColor]];
    [button addTarget: self action: @selector(accessoryButtonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [accessoryView addSubview:button];
   // [self alert:nil];

    
    [_htmlfield setInputAccessoryView:accessoryView];
}
-(IBAction)alert:(id)sender{
    
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Code Keyboard" message:@"The code keyboard is coming soon!" delegate:self cancelButtonTitle:@"Okay!" otherButtonTitles:nil, nil];
     [alert show];

}
/*-(IBAction)key1:(id)sender{
    NSString *name = @"src";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[name]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}*/

-(void) accessoryButtonPressed:(id)sender
{
    int i = 1;
    i++;
    NSLog(@"Int I Here %d", i);
    UIButton *button = (UIButton*)sender;
    NSString *stringToAdd = button.titleLabel.text;
    NSRange cursorPosition = [_htmlfield selectedRange];
    NSMutableString *textViewContent = [[NSMutableString alloc] initWithString:[_htmlfield text]];
    [textViewContent replaceCharactersInRange:cursorPosition withString:stringToAdd];
    
    [_htmlfield setText:textViewContent];
    _htmlfield.selectedRange = NSMakeRange(cursorPosition.location + 1, 0);

   // NSString *stringToAdd = button.titleLabel.text;
 /*   [NSMutableString appendString :_htmlfield.stringToAdd.text];*/
    
}

/*- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {
 [targetTextField resignFirstResponder];
 [self searchbutton:nil];
 return YES;
 }
 */
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
-(void)tap:(UITapGestureRecognizer *)tapRec{
    [[self view] endEditing: YES];
}

- (IBAction)Namesearch:(id)sender {
    NSString *name = @"<a ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}

- (IBAction)run:(id)sender {
    NSString *basePath = [htmlpage applicationDocumentsDirectory];
    int i=0;
    i++;
    
    NSString *current = [NSString stringWithFormat:@"/%d/current.html", i];
    NSString *Newcurrent = [NSString stringWithFormat:@"/current.html"];
    NSLog(@"Current2");
    NSString *filePath = [basePath stringByAppendingString:@"/current.html"];
    
    BOOL success = [_htmlfield.text writeToFile:filePath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%d",success);
    
}

- (IBAction)savebutton:(id)sender {
    message = [[UIAlertView alloc] initWithTitle:@""
                                         message:@"Put name"
                                        delegate:self
                               cancelButtonTitle:@"Cancel"
                               otherButtonTitles:@"OK",nil];
    message.alertViewStyle = UIAlertViewStylePlainTextInput;
    [message show];
    message.alertViewStyle = UIAlertViewStylePlainTextInput;
    [message textFieldAtIndex:0].delegate = self;
    
}

-(void)alertView:(UIAlertView *)message clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        pagename = [[message textFieldAtIndex:0] text];
        
    }
}

- (IBAction)clearkeybord:(id)sender {
    [_htmlfield resignFirstResponder];
}

- (IBAction)searchbutton:(id)sender {
    searchword = self.textfield.text;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
}
- (IBAction)inspectrun:(id)sender {
    //    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    //  if ([buttonTitle isEqualToString:@"Yes"]) {
    /*      SLComposeViewController *slCompose = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
     NSString *postMessage = @"Hacking with HTML Makr. Check it out: https://itunes.apple.com/us/app/html-maker/id923218868?ls=1&mt=8 #coding #icanhack @htmlmakr";
     [slCompose setInitialText:postMessage];
     [self presentViewController:slCompose animated:YES completion:nil];
     
     */
    //  SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:(SLServiceTypeTwitter)];
    //  [self presentViewController:controller animated:YES completion:nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Highlighted" message:@"All key elements of this code have been highlighted in red." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [alert show];
    
    [self CSSSearch:nil];
    [self Namesearch:nil];
    [self bodysearch:nil];
    [self headersearch1:nil];
    [self headersearch2:nil];
    [self headersearch3:nil];
    [self headsearch:nil];
    [self headsearchfinal:nil];
    [self strong:nil];
    [self span:nil];
    [self spanend:nil];
}
- (IBAction)CSSSearch:(id)sender {
    NSString *css = @"stylesheet";
    
    searchword = css;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
}





+ (NSString *) applicationDocumentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

//Start of the inspect element features
- (IBAction)bodysearch:(id)sender {
    //   NSArray *values = @[@"stylesheet", @"<body", @"<head",
    //                       @"</head>", @"<p ", @"<h1 ", @"<h2 ", @"<h3 ", @"<span ", @"</span>", @"<strong "];
    
    NSString *name2 = @"<h1";
    NSString *name = @"<body";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)headsearch:(id)sender {
    NSString *name = @"<head";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}

- (IBAction)headsearchfinal:(id)sender {
    NSString *name = @"</head>";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)paragraphsearch:(id)sender {
    NSString *name = @"<p ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}

- (IBAction)headersearch1:(id)sender {
    NSString *name = @"<h1 ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
       
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)headersearch2:(id)sender {
    NSString *name = @"<h2 ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)headersearch3:(id)sender {
    NSString *name = @"<h3 ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}

- (IBAction)span:(id)sender {
    NSString *name = @"<span ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)spanend:(id)sender {
    NSString *name = @"</span>";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)strong:(id)sender {
    NSString *name = @"<strong ";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor redColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)comments1:(id)sender {
    NSString *name = @"<!-- this is called a comment. The computer doesn't read commented lines. It allows me to explain parts of the code, to the reader. -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)comments2:(id)sender {
    NSString *name = @"<!-- this is the head of the document and below, is the title -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments3:(id)sender {
    NSString *name = @"<!-- Edit this line of code to say your name! Then click generate! -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)comments4:(id)sender {
    NSString *name = @"<!-- Here's the body, where the bulk of the coding happens -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)comments5:(id)sender {
    NSString *name = @"<!-- Edit this line of code to say your name! Then click generate! -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments6:(id)sender {
    NSString *name = @"<!-- this h1 tag means the text is larger, and more important-->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments7:(id)sender {
    NSString *name = @"<!-- Here's an image! If you don't like this image, try copying and pasting some of these images into the url section! See what they are. -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments8:(id)sender {
    NSString *name = @"<!-- You can also try resizing the image -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments9:(id)sender {
    NSString *name = @"<!-- http://htmlmakr.com/acooldude.jpg-->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments10:(id)sender {
    NSString *name = @"<!-- http://htmlmakr.com/running.jpg-->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments11:(id)sender {
    NSString *name = @"<!-- http://htmlmakr.com/swim.jpg-->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}- (IBAction)comments12:(id)sender {
    NSString *name = @"<!-- Now that you have an idea of what HTML is, try using the inspect button to find parts of the code-->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
- (IBAction)comments13:(id)sender {
    NSString *name = @"<!--If you're feeling ambitious, try checking out the code on the this link -->";
    searchword = name;
    int currentIndex = 0;
    NSString *stringLeft = _htmlfield.text;
    while(true){
        NSRange selectedRange = [stringLeft rangeOfString:searchword];
        if(selectedRange.length == 0)break;
        NSRange modifiedSelectedRange = selectedRange;
        modifiedSelectedRange.location = currentIndex + selectedRange.location;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                       initWithAttributedString:_htmlfield.attributedText];
        [attributedString addAttribute:NSBackgroundColorAttributeName
                                 value:[UIColor purpleColor]
                                 range:modifiedSelectedRange];
        _htmlfield.attributedText = attributedString;
        currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
        stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
    }
    
}
/*
 - (IBAction)name:(id)sender {
 NSString *name = self.textfield.text;
 searchword = name;
 int currentIndex = 0;
 NSString *stringLeft = _htmlfield.text;
 while(true){
 NSRange selectedRange = [stringLeft rangeOfString:searchword];
 if(selectedRange.length == 0)break;
 NSRange modifiedSelectedRange = selectedRange;
 modifiedSelectedRange.location = currentIndex + selectedRange.location;
 NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
 initWithAttributedString:_htmlfield.attributedText];
 [attributedString addAttribute:NSBackgroundColorAttributeName
 value:[UIColor whiteColor]
 range:modifiedSelectedRange];
 _htmlfield.attributedText = attributedString;
 currentIndex = (int)modifiedSelectedRange.location + (int)modifiedSelectedRange.length;
 stringLeft = [_htmlfield.text substringFromIndex:currentIndex];
 }
 
 }
 */
@end
