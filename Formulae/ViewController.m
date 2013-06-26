//
//  ViewController.m
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "CustomAlertView.h"

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

-(IBAction)videoPlay {

NSString *filepath   =   [[NSBundle mainBundle] pathForResource:@"Formulae" ofType:@"mp4"];
NSURL    *fileURL    =   [NSURL fileURLWithPath:filepath];
MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
[self.view addSubview:moviePlayerController.view];
moviePlayerController.fullscreen = YES;
[moviePlayerController play];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
