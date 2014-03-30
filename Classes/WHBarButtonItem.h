//
//  WHBarButtonItem.h
//  WHBarButtonItem
//
//  Created by Witz Hsiao on 3/30/14.
//  Copyright (c) 2014 Witz Hsiao. All rights reserved.
//

#import <UIKit/UIKit.h>

enum {
    WHBarButtonItemStyleLeft,
    WHBarButtonItemStyleRight,
};
typedef NSInteger WHBarButtonItemStyle;

@interface WHBarButtonItem : UIBarButtonItem

-(id)initWithTitle:(NSString *)title style:(WHBarButtonItemStyle)style target:(id)target action:(SEL)action;

@end
