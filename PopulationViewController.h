//
//  PopulationViewController.h
//  dataEgov
//
//  Created by Nurlan on 26/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

@import UIKit;

@interface PopulationViewController : UIViewController{

}

@property (weak, nonatomic) IBOutlet UIButton *fb;
@property (weak, nonatomic) IBOutlet UIButton *sb;
@property (weak, nonatomic) IBOutlet UIButton *tb;
@property (weak, nonatomic) IBOutlet UIButton *fourthb;
@property (weak, nonatomic) IBOutlet UIButton *firthb;
@property (weak, nonatomic) IBOutlet UIButton *sixb;


- (IBAction)fbt:(id)sender;
- (IBAction)sbt:(id)sender;
- (IBAction)tbt:(id)sender;
- (IBAction)fourthbt:(id)sender;
- (IBAction)fifthBt:(id)sender;
- (IBAction)sixbt:(id)sender;

@end
