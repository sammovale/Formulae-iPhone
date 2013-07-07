//
//  ViewController.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
#import "MenuViewController.h"

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController () < MenuViewControllerDelegate>

@end

@implementation ViewController
@synthesize scroller;




- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)viewDidLoad
{
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 625)];
    [super viewDidLoad];
    
  
    
    }

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
     [Label setFont:[UIFont fontWithName:@"Kefa" size:17]];
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
    [Label23 setFont:[UIFont fontWithName:@"Kefa" size:17]];
    
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [[UIColor blackColor] CGColor];
    
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuViewController class]]) {
        self.slidingViewController.underLeftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuView"];
        
        [(MenuViewController *)self.slidingViewController.underLeftViewController setDelegate:self];
    }
    
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
}



    
    
    


- (void)menuViewControllerDidFinishWithCategoryId:(NSInteger)categoryId
{

    [self.slidingViewController resetTopView];
}


-(IBAction)exit:(UIStoryboardSegue *)test{
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
