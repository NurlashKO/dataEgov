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

    self.firstButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.firstButton.layer.borderWidth = 2.0f;
    self.firstButton.layer.cornerRadius = 10.0f;

    self.secondButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.secondButton.layer.borderWidth = 2.0f;
    self.secondButton.layer.cornerRadius = 10.0f;

    self.thirdButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.thirdButton.layer.borderWidth = 2.0f;
    self.thirdButton.layer.cornerRadius = 10.0f;

    self.fourthButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.fourthButton.layer.borderWidth = 2.0f;
    self.fourthButton.layer.cornerRadius = 10.0f;

    self.fivthButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.fivthButton.layer.borderWidth = 2.0f;
    self.fivthButton.layer.cornerRadius = 10.0f;


}

- (IBAction)firstButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:1 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/internet_users" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)secondButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:2 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/from_univers" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)thirdButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:3 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/special_libraries" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fourthButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setValue:@"http://data.egov.kz/api/v2/taken_students" forKey:@"api"];
    [userDef setInteger:4 forKey:@"graphShow"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fifthButtonTapped:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setValue:@"http://data.egov.kz/api/v2/training_doctoral_students" forKey:@"api"];
    [userDef setInteger:5 forKey:@"graphShow"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}



#pragma mark
- (void)dealloc {
}
@end
