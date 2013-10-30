//
//  MenuViewController.m
//  SlideToDo
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "MenuViewController.h"
#import "ECSlidingViewController.h"

@interface MenuViewController() <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UINavigationBar *navigationBar;

@end

@implementation MenuViewController
@synthesize scrollView;
@synthesize Label2, Label16, Label15, Label14, Label13, Label12, Label11, Label10, Label9, Label8, Label7, Label6, Label5, Label, Label4, Label3, Label1;
@synthesize startTime, timer;

-(IBAction)back{
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    
    [scrollView setContentSize:CGSizeMake(320, 700)];
    
    
    
    [Label setFont:[UIFont fontWithName:@"Kefa" size:20]];
    [Label2 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label3 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label4 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label5 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label6 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label7 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label8 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label9 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label10 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label11 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label12 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label13 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label14 setFont:[UIFont fontWithName:@"Kefa" size:15]];
    [Label15 setFont:[UIFont fontWithName:@"Kefa" size:14]];
  [Label16 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}

-(void)viewDidAppear:(BOOL)animated {
    self.scrollView.scrollEnabled = NO;
    
    CGFloat scrollHeight = 220;
    [UIView animateWithDuration:20
                          delay:0
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         self.scrollView.contentOffset = CGPointMake(0, scrollHeight);
                     }
                     completion:nil];
}

-(void)viewWillDisappear:(BOOL)animated {
    [scrollView setContentOffset:CGPointMake(0,0) animated:YES];
}



@end
