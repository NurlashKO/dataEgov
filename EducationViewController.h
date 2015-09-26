//
//  EducationViewController.h
//  dataEgov
//
//  Created by Nurlan on 25/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

@import UIKit;
#import <QuartzCore/QuartzCore.h>

@interface EducationViewController : UIViewController{

}
- (IBAction)firstButtonTapped:(id)sender;
- (IBAction)secondButtonTapped:(id)sender;
- (IBAction)thirdButtonTapped:(id)sender;
- (IBAction)fourthButtonTapped:(id)sender;
- (IBAction)fifthButtonTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
@property (weak, nonatomic) IBOutlet UIButton *fourthButton;
@property (weak, nonatomic) IBOutlet UIButton *fivthButton;

@end
