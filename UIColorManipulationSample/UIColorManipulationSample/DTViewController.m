//
//  DTViewController.m
//  UIColorManipulationSample
//
//  Created by  Danielle Lancashireon 24/05/2013.
//  Copyright (c) 2013 Shadow Developments. All rights reserved.
//

#import "DTViewController.h"

@interface DTViewController ()

@end

@implementation DTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *def = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    [def setBackgroundColor:[UIColor redColor]];
    
    UIView *invert = [[UIView alloc] initWithFrame:CGRectMake(70, 10, 50, 50)];
    [invert setBackgroundColor:[[UIColor redColor] invert]];
    
    UIView *greyscale = [[UIView alloc] initWithFrame:CGRectMake(130, 10, 50, 50)];
    [greyscale setBackgroundColor:[[UIColor redColor] greyscale]];
    
    [self.view addSubview:def];
    [self.view addSubview:invert];
    [self.view addSubview:greyscale];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
