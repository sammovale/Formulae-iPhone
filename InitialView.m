//
//  InitialView.m
//  Formulae
//
//  Created by David McAfee on 7/07/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "InitialView.h"
#import "ViewController.h"

@interface InitialView ()
@end


@implementation InitialView

- (void)viewDidLoad
{
    [super viewDidLoad];
	//self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
}

<<<<<<< HEAD

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
}
=======
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}



>>>>>>> 1bad0b1d15717d1a004c47a5771153a0b63a9146



@end
