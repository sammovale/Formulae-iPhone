//
//  DocumentViewer.h
//  Formulae
//
//  Created by Sam Vale on 31/08/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DocumentViewer : ECSlidingViewController{
    IBOutlet UIScrollView *scroll;
    IBOutlet UILabel *Label;
    IBOutlet UILabel *Label2;
    IBOutlet UILabel *Label3;
    IBOutlet UILabel *Label4;
    IBOutlet UILabel *Label5;
    IBOutlet UILabel *Label6;
    IBOutlet UILabel *Label7;
    IBOutlet UILabel *Label8;

}

@property (nonatomic, strong)IBOutlet UIScrollView *scroll;
-(IBAction)returnToPreviousView;

@property(nonatomic, strong) IBOutlet UILabel *Label;
@property(nonatomic, strong) IBOutlet UILabel *Label2;
@property(nonatomic, strong) IBOutlet UILabel *Label3;
@property(nonatomic, strong) IBOutlet UILabel *Label4;
@property(nonatomic, strong) IBOutlet UILabel *Label5;
@property(nonatomic, strong) IBOutlet UILabel *Label6;
@property(nonatomic, strong) IBOutlet UILabel *Label7;
@property(nonatomic, strong) IBOutlet UILabel *Label8;

-(IBAction)usub;
-(IBAction)exponent;
-(IBAction)diffCalc;
-(IBAction)quads;
-(IBAction)stats;
-(IBAction)binomialRevision;
-(IBAction)fractions;
-(IBAction)moles;
-(IBAction)physics;
@end
