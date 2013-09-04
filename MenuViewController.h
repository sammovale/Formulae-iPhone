//
//  MenuViewController.h
//  SlideToDo
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewControllerDelegate;

@interface MenuViewController : UIViewController {
    IBOutlet UILabel *Label;
    IBOutlet UILabel *Label2;
    IBOutlet UILabel *Label3;
    IBOutlet UILabel *Label4;
    IBOutlet UILabel *Label5;
    IBOutlet UILabel *Label6;
    IBOutlet UILabel *Label7;
    IBOutlet UILabel *Label8;
    IBOutlet UILabel *Label9;
    IBOutlet UILabel *Label10;
    IBOutlet UILabel *Label11;
    IBOutlet UILabel *Label12;
    IBOutlet UILabel *Label13;
    IBOutlet UITextView *Label14;
    IBOutlet UITextView *Label15;
    IBOutlet UITextView *Label16;
    
    IBOutlet UIScrollView *scrollView;
    CGPoint startOffset;
    CGPoint destinationOffset;
    NSDate *startTime;
    NSTimer *timer;
    
}
    @property (nonatomic, retain) NSDate *startTime;
    @property (nonatomic, retain) NSTimer *timer;
@property (nonatomic, strong) UILabel *Label;
@property (nonatomic, strong) UILabel *Label1;
@property (nonatomic, strong) UILabel *Label2;
@property (nonatomic, strong) UILabel *Label3;
@property (nonatomic, strong) UILabel *Label4;
@property (nonatomic, strong) UILabel *Label5;
@property (nonatomic, strong) UILabel *Label6;
@property (nonatomic, strong) UILabel *Label7;
@property (nonatomic, strong) UILabel *Label8;
@property (nonatomic, strong) UILabel *Label9;
@property (nonatomic, strong) UILabel *Label10;
@property (nonatomic, strong) UILabel *Label11;
@property (nonatomic, strong) UILabel *Label12;
@property (nonatomic, strong) UILabel *Label13;
@property (nonatomic, strong) UITextView *Label14;
@property (nonatomic, strong) UITextView *Label15;
@property (nonatomic, strong) UITextView *Label16;
-(IBAction)back;



@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) id <MenuViewControllerDelegate> delegate;
@property (nonatomic, strong) NSArray *categoryList;
@end


@protocol MenuViewControllerDelegate
-(void)menuViewControllerDidFinishWithCategoryId:(NSInteger)categoryId;
@end
