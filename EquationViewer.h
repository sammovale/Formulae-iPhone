//
//  EquationViewer.h
//  Formulae
//
//  Created by Sam Vale on 26/06/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EquationViewer : UIViewController{
    
    IBOutlet UILabel *Title;
    IBOutlet UIScrollView *scroll;
    
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
}

@property (nonatomic, strong)  UILabel *Title;
@property (nonatomic, strong)  UIScrollView *scroll;
-(IBAction)goBack;
@end
