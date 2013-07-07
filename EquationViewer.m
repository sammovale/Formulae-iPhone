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

@interface EquationViewer ()

@end

@implementation EquationViewer
@synthesize Title, scroll;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated {
    
    [Label setFont:[UIFont fontWithName:@"Kefa" size:19]];
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

}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
            
    if ([Title.text isEqual: @"Differential Calculus"]) {
        [scroll setContentSize:CGSizeMake(320, 1270)];
    } else if ([Title.text isEqual:@"Linear Algebra"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Statistics"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Exponents"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Trigonometry"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    } else if ([Title.text isEqual:@"Equations of Motion"]){
        [scroll setContentSize:CGSizeMake(320, 800)];
    }  else if ([Title.text isEqual:@"Integral Calculus"]){
        [scroll setContentSize:CGSizeMake(320, 850)];
    }
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
