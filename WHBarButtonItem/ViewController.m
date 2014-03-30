//
//  ViewController.m
//  WHBarButtonItem
//
//  Created by Witz Hsiao on 3/30/14.
//  Copyright (c) 2014 Witz Hsiao. All rights reserved.
//

#import "ViewController.h"
#import "WHBarButtonItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = [[WHBarButtonItem alloc] initWithTitle:@"Back" style:WHBarButtonItemStyleLeft target:self.navigationController action:@selector(popViewControllerAnimated:)];
    
    self.navigationItem.rightBarButtonItem = [[WHBarButtonItem alloc] initWithTitle:@"Next" style:WHBarButtonItemStyleRight target:self action:@selector(tapRightBarButtonItem:)];
    
}

- (void)tapRightBarButtonItem:(id)sender
{
    NSLog(@"press right button");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
