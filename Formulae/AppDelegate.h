//
//  AppDelegate.h
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "EquationViewer.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    ViewController *viewController;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) ViewController *viewController;



@end
