//
//  ViewController.h
//  Formulae
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {
    IBOutlet UIScrollView *scroller;
    IBOutlet UIWebView *webView;
    IBOutlet UIImageView *imageView;
}
@property (nonatomic,retain)IBOutlet UIWebView *webView;
@property (nonatomic,retain)IBOutlet UIImageView *imageView;
-(IBAction)powerRule1;
-(IBAction)sumRule;
-(IBAction)quotientRule;
-(IBAction)chainRule;
-(IBAction)trigRule;
-(IBAction)videoPlay;
@end
