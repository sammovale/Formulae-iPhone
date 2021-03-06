//
//  EquationViewer.h
//  Formulae
//
//  Created by Sam Vale on 26/06/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h" 
#import "WorkedExamplesViewer.h"

@protocol EquationViewerDelegate;

@interface EquationViewer : ECSlidingViewController{
    IBOutlet UIWebView *Webview;
    IBOutlet UILabel *Title;
    IBOutlet UIScrollView *scroll;
    IBOutlet UILabel *special;
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
    IBOutlet UILabel *Label14;
    IBOutlet UILabel *Label15;
    IBOutlet UILabel *Label16;
    IBOutlet UILabel *Label17;
    IBOutlet UILabel *Label18;
    IBOutlet UILabel *Label19;
    IBOutlet UILabel *Label20;
    IBOutlet UILabel *Label21;
    IBOutlet UILabel *Label22;
    IBOutlet UILabel *LabelTop;
    
    WorkedExamplesViewer *WorkedViewer;
    
    
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image3;
    IBOutlet UIImageView *image4;
    IBOutlet UIImageView *image5;
    IBOutlet UIImageView *image6;
    IBOutlet UIImageView *image7;
    IBOutlet UIImageView *image8;
    IBOutlet UIImageView *image9;
    IBOutlet UIImageView *image10;
    IBOutlet UIImageView *image11;
    IBOutlet UIImageView *image12;
    IBOutlet UIImageView *image13;
    IBOutlet UILabel *labelVertical;
    
    CGPoint startOffset;
    CGPoint destinationOffset;
}
-(IBAction) verticalLine:(id)sender;
@property (nonatomic, strong)  UILabel *Title;
@property (nonatomic, strong)  UIScrollView *scroll;
@property (nonatomic, retain) IBOutlet UILabel *labelVertical;
@property (nonatomic, weak) id <EquationViewerDelegate> delegate;
@property (nonatomic, strong) NSArray *categoryList;
-(IBAction)returnToPreviousView;
-(IBAction)workedexample11;
-(IBAction)workedexample12;
-(IBAction)workedexample13;
-(IBAction)workedexample14;
-(IBAction)returnPreviousView;
-(IBAction)workedexample1;


@end
