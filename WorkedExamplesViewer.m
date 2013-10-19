//
//  WorkedExamplesViewer.m
//  Formulae
//
//  Created by Sam Vale on 5/09/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "WorkedExamplesViewer.h"

@interface WorkedExamplesViewer ()

@end

@implementation WorkedExamplesViewer
@synthesize Webview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)returnToPreviousView{
    
    
    [self.navigationController popViewControllerAnimated:YES];
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
    if([name isEqualToString:@"Slope"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"SLOPE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    if([name isEqualToString:@"Distance"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"DISTANCE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    if([name isEqualToString:@"Midpoint"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"MIDPOINT" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Intercepts"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"INTERCEPTS" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    
    if([name isEqualToString:@"ln Differentiation"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"LNX" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Chain Rule"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CHAIN RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Trigonometric Differentiation"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"TRIGONOMETRIC FUNCTION DERIVATIVES" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    
    if([name isEqualToString:@"Quotient Rule"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"QUOTIENT RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Euler Differentiation"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"EULER RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    if([name isEqualToString:@"Product Rule"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"PRODUCT RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    if([name isEqualToString:@"Sum Rule"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"SUM RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Power Rule"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"POWER RULE" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Power Rule Basics"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"POWER RULE 101" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    
    if([name isEqualToString:@"First Principles"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"First Principles" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    
    if([name isEqualToString:@"An introduction to moles"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"How many moles in a ham and cheese sandwich" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Physics Textbook"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Physics Textbook 5.0" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Fractions Examination"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Fractions Exam Grade 7" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Mathematics Binomial Revision"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Maths Studies Binomial Distribution Revision" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    
    if([name isEqualToString:@"Statistics"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Mathematics Statistics Test " ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
    
    if([name isEqualToString:@"Year 11 Quadratics Elicitation"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Year 11 Quadratics What do I remember" ofType:@"pdf"];
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
    
    if([name isEqualToString:@"Differential Calculus Quiz"]) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Diff Quiz" ofType:@"pdf"];
        NSURL *url = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [Webview loadRequest:request];
        [Webview setScalesPageToFit:YES];
        [Webview setHidden:NO];
        
    }
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
