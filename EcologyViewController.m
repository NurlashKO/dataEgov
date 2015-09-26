//
//  EcologyViewController.m
//  dataEgov
//
//  Created by Nurlan on 26/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

#import "EcologyViewController.h"

@interface EcologyViewController ()

@end

@implementation EcologyViewController

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
    [userDef setValue:@"http://data.egov.kz/api/v2/drain" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)sbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:2 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/increase_of_emis" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)tbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:3 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/organized_stat_source" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fourthbt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:4 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/water_to_consumers" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)fifthBt:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setInteger:5 forKey:@"graphShow"];
    [userDef setValue:@"http://data.egov.kz/api/v2/energy_consumers" forKey:@"api"];
    [userDef synchronize];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"graphShowView"];
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:NULL];
}
@end
