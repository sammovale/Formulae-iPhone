//
//  MenuViewController.h
//  SlideToDo
//
//  Created by David McAfee on 20/04/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewControllerDelegate;

@interface MenuViewController : UIViewController
@property (nonatomic, weak) id <MenuViewControllerDelegate> delegate;
@property (nonatomic, strong) NSArray *categoryList;
@end


@protocol MenuViewControllerDelegate
-(void)menuViewControllerDidFinishWithCategoryId:(NSInteger)categoryId;
@end
