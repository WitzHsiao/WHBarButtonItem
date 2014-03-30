//
//  WHBarButtonItem.m
//  WHBarButtonItem
//
//  Created by Witz Hsiao on 3/30/14.
//  Copyright (c) 2014 Witz Hsiao. All rights reserved.
//

#import "WHBarButtonItem.h"

@implementation WHBarButtonItem

-(id)initWithTitle:(NSString *)title style:(WHBarButtonItemStyle)style target:(id)target action:(SEL)action
{
    UIView *view;
    switch (style) {
        case WHBarButtonItemStyleLeft:
            view = [self buildViewForLeftButton];
            break;
        case WHBarButtonItemStyleRight:
            view = [self buildViewForRightButton];
    }
    
    for (id subview in [view subviews]) {
        if ([subview isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel*)subview;
            [label setText:title];
        }
    }
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]
                                             initWithTarget:target action:action];
    tapRecognizer.numberOfTapsRequired = 1;
    view.userInteractionEnabled = YES;
    [view addGestureRecognizer:tapRecognizer];
    self = [super initWithCustomView:view];
    
    return self;
}

- (UIView*)buildViewForLeftButton;
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(11, 0, 60, 44)];
    [label setFont:[UIFont fontWithName:@"BrandonGrotesque-Regular" size:19.0]];
    [view addSubview:label];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(-8, (44-22)/2, 60*22/85, 22)];
    [imageView setImage:[UIImage imageNamed:@"icon-ios7-arrow-back"]];
    [view addSubview:imageView];
    
    return view;
}

- (UIView*)buildViewForRightButton;
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 44)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 67.5, 44)];
    [label setFont:[UIFont fontWithName:@"BrandonGrotesque-Regular" size:19.0]];
    [label setTextAlignment:NSTextAlignmentRight];
    [view addSubview:label];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(65, (44-33)/2, 33, 33)];
    [imageView setImage:[UIImage imageNamed:@"icon-ios7-arrow-forward"]];
    [view addSubview:imageView];
    
    return view;
}

@end
