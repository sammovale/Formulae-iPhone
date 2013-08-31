//
//  DocumentViewer.m
//  Formulae
//
//  Created by Sam Vale on 31/08/13.
//  Copyright (c) 2013 David McAfee. All rights reserved.
//

#import "DocumentViewer.h"

@interface DocumentViewer ()

@end

@implementation DocumentViewer
@synthesize Label8,Label7,Label6,Label5,Label4,Label3,Label2,Label;
@synthesize scroll;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [Label setFont:[UIFont fontWithName:@"Kefa" size:20]];
    [Label2 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label3 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label4 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label5 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label6 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label7 setFont:[UIFont fontWithName:@"Kefa" size:14]];
    [Label8 setFont:[UIFont fontWithName:@"Kefa" size:14]];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
