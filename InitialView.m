//
//  InitialView.m
//  Formulae
//
//  Created by David McAfee on 7/07/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "InitialView.h"

@interface InitialView ()
@end


@implementation InitialView

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
}
@end
