//
//  CustomSegueRight.m
//  Formulae
//
//  Created by David McAfee on 12/08/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "CustomSegueRight.h"
#import "QuartzCore/QuartzCore.h"
#import "AppDelegate.h"

@implementation CustomSegueRight

-(void)perform {
    
    __block UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    __block UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromRight;
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
}



@end
