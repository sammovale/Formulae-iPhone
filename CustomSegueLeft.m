//
//  CustomSegueLeft.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "CustomSegueLeft.h"
#import "QuartzCore/QuartzCore.h"
#import "AppDelegate.h"

@implementation CustomSegueLeft


-(void)perform {
    
    __block UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    __block UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; 
    transition.subtype = kCATransitionFromLeft; 
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
}

- (void)animationDone:(id)vc{
    UIViewController *destination = (UIViewController*)vc;
    UINavigationController *navController = [[self sourceViewController] navigationController];
    [navController pushViewController:destination animated:NO];
    
}
@end
