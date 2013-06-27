//
//  EquationViewer.m
//  Formulae
//
//  Created by Sam Vale on 26/06/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "EquationViewer.h"

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    if ([Title.text isEqual: @"Differential Calculus"]) {
        [scroll setContentSize:CGSizeMake(320, 1270)];
        
    }else if([Title.text isEqual:@"Linear Algebra"]){
        
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
