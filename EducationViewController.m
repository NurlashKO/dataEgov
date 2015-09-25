//
//  EducationViewController.m
//  dataEgov
//
//  Created by Nurlan on 25/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

#import "EducationViewController.h"
#import "ViewController.h"

@interface EducationViewController ()

@end

@implementation EducationViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)firstButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:1 forKey:@"eduGraphShow"];
    [userDef synchronize];
}

- (IBAction)secondButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:2 forKey:@"eduGraphShow"];
    [userDef synchronize];
}

- (IBAction)thirdButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:3 forKey:@"eduGraphShow"];
    [userDef synchronize];
}

- (IBAction)fourthButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:4 forKey:@"eduGraphShow"];
    [userDef synchronize];
}

- (IBAction)fifthButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:5 forKey:@"eduGraphShow"];
    [userDef synchronize];
}



#pragma mark
- (void)dealloc {
}
@end
