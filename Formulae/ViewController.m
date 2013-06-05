//
//  ViewController.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "CustomAlertView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;
@synthesize imageView;

- (void)viewDidLoad
{ [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1120)];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"computer 62" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
	[theAudio play];
    theAudio.numberOfLoops = 1;
    [super viewDidLoad];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://twitter.com/formulaeios"]]];
    
    
    [imageView setHidden:YES];
    
    { UISwipeGestureRecognizer *swipeRecognizer =
		[[UISwipeGestureRecognizer alloc]
		 initWithTarget:self
		 action:@selector(swipeRightDetected:)];
		swipeRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self.view addGestureRecognizer:swipeRecognizer];
	}
	{UISwipeGestureRecognizer *swipeRecognizer =
		[[UISwipeGestureRecognizer alloc]	 initWithTarget:self
												   action:@selector(swipeLeftDetected:)];
		swipeRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self.view addGestureRecognizer:swipeRecognizer];
		 }
    
    
    BOOL ranBefore = [[NSUserDefaults standardUserDefaults]boolForKey:@"RanBefore"];
    if(!ranBefore) {
        CustomAlertView *alert = [[CustomAlertView alloc]
                                  initWithTitle:@"Welcome to Formulae 1.1" message:@"Thank you for purchasing! Worked examples for the Differential Calculus section are now in the app. Simply tap on a formula to view then swipe left or right to dismiss. Remember to contribute formulae on twitter (@FormulaeiOS). More worked examples coming soon."  delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
                
         
        [alert show];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];

    
    
    
        }
    
}

-(IBAction)messages {
    
    CustomAlertView *alert = [[CustomAlertView alloc]
                              initWithTitle:@"What is Formulae?" message:@"Formulae is a community in #math #physics #chemistry which grows based on contributions. Converse with the community via Twitter and enjoy the many formulae you have at your fingertips. Worked examples, like those in the Differential Calculus section, are being added and will help you feel confident with using formulae."  delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    
    
    [alert show];

    
    
}

-(IBAction)videoPlay {

NSString *filepath   =   [[NSBundle mainBundle] pathForResource:@"Formulae" ofType:@"mp4"];
NSURL    *fileURL    =   [NSURL fileURLWithPath:filepath];
MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
[self.view addSubview:moviePlayerController.view];
moviePlayerController.fullscreen = YES;
[moviePlayerController play];

}
-(void)viewDidAppear:(BOOL)animated {
    
    [imageView setHidden:YES];
   
    
}

-(IBAction)firstPrinciples {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"slopederivative.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)euler {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"euler.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)powerRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"powerule.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)powerRule1 {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"poweri.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)sumRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"sumrule.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)quotientRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"mymaths.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)lnxRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"lnxlog.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
        
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)trigRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"trigfunctions.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}

-(IBAction)chainRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"chain.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    } ];
    
    
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}


-(IBAction)productRule {
    [imageView setHidden:NO];
    UIImage *image = [UIImage imageNamed: @"productrule.png"];
    [imageView setImage:image];
    
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 1;
        
        
        
    
    } ];
    
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Button Click On-SoundBible.com-459633989" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;

    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 850)];
    
}
- (IBAction)swipeRightDetected:(UIGestureRecognizer *)sender {
	[UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 0;
        [imageView setHidden:YES];
        
        
    } ];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Page_Turn-Mark_DiAngelo-1304638748" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;


    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1120)];

}
     


- (IBAction)swipeLeftDetected:(UIGestureRecognizer *)sender {
    [UIView animateWithDuration:.5 animations:^{
        
        imageView.alpha = 0;
        [imageView setHidden:YES];
        
        
    } ];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Page_Turn-Mark_DiAngelo-1304638748" ofType:@"mp3"];
    AVAudioPlayer* theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
	[theAudio play];
    theAudio.numberOfLoops = 1;


    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1120)];
}
    
	// Do any additional setup after loading the view, typically from a nib.

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"This function requires an Internet Connection" message:@"Please turn on Wi-Fi or Cellular Data to access this function" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
