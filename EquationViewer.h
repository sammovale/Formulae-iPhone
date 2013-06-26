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
}

@property (nonatomic, strong)  UILabel *Title;
@property (nonatomic, strong)  UIScrollView *scroll;
@end
