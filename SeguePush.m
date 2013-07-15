//
//  SeguePush.m
//  Formulae
//
//  Created by David McAfee on 15/07/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "SeguePush.h"

@implementation SeguePush

- (void) perform
{
    UIViewController *desViewController = (UIViewController *)self.destinationViewController;
    
    UIView *srcView = [(UIViewController *)self.sourceViewController view];
    UIView *desView = [desViewController view];
    
    desView.transform = srcView.transform;
    desView.bounds = srcView.bounds;
    

            desView.center = CGPointMake(srcView.center.x - srcView.frame.size.width, srcView.center.y);
      
    
    UIWindow *mainWindow = [[UIApplication sharedApplication].windows objectAtIndex:0];
    [mainWindow addSubview:desView];
    
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         desView.center = CGPointMake(srcView.center.x, srcView.center.y);
                         
                                                        srcView.center = CGPointMake(srcView.center.x - srcView.frame.size.width, srcView.center.y);
                             }
                        
                     completion:^(BOOL finished){
                        
                         [self.sourceViewController presentModalViewController:desViewController animated:NO];
                     }];
}








@end
