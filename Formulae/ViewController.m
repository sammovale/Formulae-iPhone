//
//  ViewController.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
#import "MenuViewController.h"

@interface ViewController () < MenuViewControllerDelegate>

@end

@implementation ViewController
@synthesize scroller;

- (void)viewDidLoad
{
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 625)];
    [super viewDidLoad];
    
    }

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
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
