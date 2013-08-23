//
//  EquationViewer.m
//  Formulae
//
//  Created by Sam Vale on 26/06/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "EquationViewer.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "SeguePush.h"

@interface EquationViewer ()

@end

@implementation EquationViewer
@synthesize Title,labelVertical,scroll;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)returningMove {
    

self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    

}

-(IBAction)documentMenu {
    
    
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Documents"];
    
    
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    
        
        
    
}

-(IBAction)usub {
    NSString *name = @"Integration By Substitution";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
}

-(IBAction)exponent {
    NSString *name = @"Year 10 Exponents Quiz";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
}



- (IBAction)returnActionForSegue:(UIStoryboardSegue *)returnSegue {
    
    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    
}

-(IBAction)goBackward {
    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}



- (IBAction)unwindToRed:(UIStoryboardSegue *)segue {
   
}
-(IBAction) verticalLine:(id)sender {
  
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [self.labelVertical.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"readtext42://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    if ([ourApplication canOpenURL:ourURL]) {
        [ourApplication openURL:ourURL];
    }
    else {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"G1 Calculator Not Installed" message:@"You must have the G1 Calculator installed to open this." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"Get G1", nil];
        [alertView show];
        
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *name = [defaults objectForKey:@"name"];
    
    if([name isEqualToString:@"Integration By Substitution"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"u subsitution worksheet-1" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Year 10 Exponents Quiz"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"year 10 exponents and logs quiz" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    Label32.text = name;
    
    [LabelTop setAlpha:0];
    [Label setAlpha:0];
    [Label2 setAlpha:0];
    [Label3 setAlpha:0];
    [Label4 setAlpha:0];
    [Label5 setAlpha:0];
    [Label6 setAlpha:0];
    [Label7 setAlpha:0];
    [Label8 setAlpha:0];
    [Label9 setAlpha:0];
    [Label10 setAlpha:0];
    [Label11 setAlpha:0];
    
    myTimer1 = [NSTimer scheduledTimerWithTimeInterval:0.9 target:self selector:@selector (showData)userInfo: nil
                                              repeats: YES];
    myTimer2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector (showData2)userInfo: nil
                                               repeats: YES];
    myTimer2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector (showDataTop)userInfo: nil
                                               repeats: YES];
    myTimer3 = [NSTimer scheduledTimerWithTimeInterval:1.05 target:self selector:@selector (showData3)userInfo: nil
                                               repeats: YES];
    myTimer4 = [NSTimer scheduledTimerWithTimeInterval:1.1 target:self selector:@selector (showData4)userInfo: nil
                                               repeats: YES];
    myTimer4 = [NSTimer scheduledTimerWithTimeInterval: 1.15 target:self selector:@selector (showData4)userInfo: nil
                                               repeats: YES];
    myTimer5 = [NSTimer scheduledTimerWithTimeInterval:1.2 target:self selector:@selector (showData5)userInfo: nil
                                               repeats: YES];
    myTimer6 = [NSTimer scheduledTimerWithTimeInterval:1.25 target:self selector:@selector (showData6)userInfo: nil
                                               repeats: YES];
    myTimer7 = [NSTimer scheduledTimerWithTimeInterval:1.3 target:self selector:@selector (showData7)userInfo: nil
                                               repeats: YES];
    myTimer8 = [NSTimer scheduledTimerWithTimeInterval:1.35 target:self selector:@selector (showData8)userInfo: nil
                                               repeats: YES];
    myTimer9 = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector (showData9)userInfo: nil
                                               repeats: YES];
    myTimer10 = [NSTimer scheduledTimerWithTimeInterval:1.45 target:self selector:@selector (showData10)userInfo: nil
                                               repeats: YES];
    myTimer11 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector (showData11)userInfo: nil
                                               repeats: YES];
   
    
    [Label setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [LabelTop setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label2 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label3 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label4 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label5 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label6 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label7 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label8 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label9 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label10 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label11 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label12 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label13 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label14 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label15 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label16 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label17 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label18 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label19 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label20 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label21 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label22 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Label32 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    [Title setFont:[UIFont fontWithName:@"Kefa" size:19]];
    
    
    if ([Title.text isEqual: @"Differential Calculus"]) {
        [scroll setContentSize:CGSizeMake(320, 1270)];
    } else if ([Title.text isEqual:@"Linear Algebra"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Statistics"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Exponents"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Fractions"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    }
    else if ([Title.text isEqual:@"Trigonometry"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Equations of Motion"]){
        [scroll setContentSize:CGSizeMake(320, 800)];
    }  else if ([Title.text isEqual:@"Integral Calculus"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Polynomials"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Energy Equations"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual: @"Area and Volume"]) {
        [scroll setContentSize:CGSizeMake(320, 1270)];
    } else if([Title.text isEqual: @"Common Chemical Equations"]) {
        [scroll setContentSize:CGSizeMake(320, 1270)];
    }
    
	// Do any additional setup after loading the view.
}

-(void)showData {
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label setAlpha:1];
    
   
}

-(void)showData2{
  
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label2 setAlpha:1];
    
}

-(void)showData3{
   
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label3 setAlpha:1];
    
}

-(void)showData4{
   
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label4 setAlpha:1];
    
}

-(void)showData5{
    
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label5 setAlpha:1];
    
}
-(void)showDataTop{
    
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [LabelTop setAlpha:1];
    
}

-(void)showData6{
    
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label6 setAlpha:1];
    
}
-(void)showData7{
   
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label7 setAlpha:1];
    
}

-(void)showData8{
 
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label8 setAlpha:1];
   
}
-(void)showData9{
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label9 setAlpha:1];
    
}

-(void)showData10{
   
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label10 setAlpha:1];
    
}

-(void)showData11{
   
    
    [UILabel beginAnimations:NULL context:nil];
    [UILabel setAnimationDuration: 0.1];
    [UILabel commitAnimations];
    [Label11 setAlpha:1];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
