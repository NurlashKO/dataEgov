//
//  EconomicsViewController.h
//  dataEgov
//
//  Created by Nurlan on 26/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

@import UIKit;

@interface EconomicsViewController : UIViewController{

}

@property (weak, nonatomic) IBOutlet UIButton *fb;
@property (weak, nonatomic) IBOutlet UIButton *sb;
@property (weak, nonatomic) IBOutlet UIButton *tb;
@property (weak, nonatomic) IBOutlet UIButton *fourthb;
@property (weak, nonatomic) IBOutlet UIButton *fifthb;


- (IBAction)sbt:(id)sender;
- (IBAction)fbt:(id)sender;
- (IBAction)tbt:(id)sender;
- (IBAction)fourbt:(id)sender;
- (IBAction)fifthbt:(id)sender;


@end
