//
//  SecurityViewController.m
//  dataEgov
//
//  Created by Nurlan on 26/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

#import "SecurityViewController.h"

@interface SecurityViewController ()

@end

@implementation SecurityViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.fb.layer.borderColor = [UIColor whiteColor].CGColor;
    self.fb.layer.borderWidth = 2.0f;
    self.fb.layer.cornerRadius = 10.0f;

    self.sb.layer.borderColor = [UIColor whiteColor].CGColor;
    self.sb.layer.borderWidth = 2.0f;
    self.sb.layer.cornerRadius = 10.0f;

    self.tb.layer.borderColor = [UIColor whiteColor].CGColor;
    self.tb.layer.borderWidth = 2.0f;
    self.tb.layer.cornerRadius = 10.0f;

    self.fourthb.layer.borderColor = [UIColor whiteColor].CGColor;
    self.fourthb.layer.borderWidth = 2.0f;
    self.fourthb.layer.cornerRadius = 10.0f;

    self.firthb.layer.borderColor = [UIColor whiteColor].CGColor;
    self.firthb.layer.borderWidth = 2.0f;
    self.firthb.layer.cornerRadius = 10.0f;
}

- (IBAction)fbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:1 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/gdp_per_capita" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)sbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:2 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/taxes_on_products" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)tbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:3 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/gross_output" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fourthbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:4 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/basic_food_min" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fifthBt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:5 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/foodstuffs" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

@end
