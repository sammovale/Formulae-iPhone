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

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    
  
    
}



@end
