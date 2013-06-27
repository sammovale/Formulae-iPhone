//
//  ViewController.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize scroller;
- (void)viewDidLoad
{
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 625)];
    
    [super viewDidLoad];
    
    	}


-(IBAction)exit:(UIStoryboardSegue *)test{
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
