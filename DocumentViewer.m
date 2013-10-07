//
//  DocumentViewer.m
//  Formulae
//
//  Created by Sam Vale on 31/08/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "DocumentViewer.h"

@interface DocumentViewer ()

@end

@implementation DocumentViewer
@synthesize Label8,Label7,Label6,Label5,Label4,Label3,Label2,Label;
@synthesize scroll;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)printdoc
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:@"jpg"];
    NSData *myData = [NSData dataWithContentsOfFile: path];
    
    
    UIPrintInteractionController *pic = [UIPrintInteractionController sharedPrintController];
    
    if(pic && [UIPrintInteractionController canPrintData: myData] ) {
        
        pic.delegate = self;
        
        UIPrintInfo *printInfo = [UIPrintInfo printInfo];
        printInfo.outputType = UIPrintInfoOutputGeneral;
        printInfo.jobName = [path lastPathComponent];
        printInfo.duplex = UIPrintInfoDuplexLongEdge;
        pic.printInfo = printInfo;
        pic.showsPageRange = YES;
        pic.printingItem = myData;
        
        void (^completionHandler)(UIPrintInteractionController *, BOOL, NSError *) = ^(UIPrintInteractionController *pic, BOOL completed, NSError *error) {
            
            if (!completed && error) {
                NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        
        [pic presentAnimated:YES completionHandler:completionHandler];
        
    }
    
}


-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(IBAction)usub {
    NSString *name = @"Integration By Substitution";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
     
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}


-(IBAction)exponent {
    NSString *name = @"Year 10 Exponents Quiz";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
        
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)diffCalc {
    NSString *name = @"Differential Calculus Quiz";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)quads {
    NSString *name = @"Year 11 Quadratics Elicitation";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)stats {
    NSString *name = @"Statistics";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
    //self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)binomialRevision {
    NSString *name = @"Mathematics Binomial Revision";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)fractions {
    NSString *name = @"Fractions Examination";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)moles {
    NSString *name = @"An introduction to moles";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
   // self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)physics {
    NSString *name = @"Physics Textbook";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
    //self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}

-(IBAction)steadyState {
    NSString *name = @"Steady State";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
    
    [defaults synchronize];
    
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Viewer"];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [Label setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label2 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label3 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label4 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label5 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label6 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label7 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label8 setFont:[UIFont fontWithName:@"Kefa" size:14]];
}

-(IBAction)returnToPreviousView{
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
}

@end
