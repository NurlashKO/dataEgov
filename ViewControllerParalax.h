//
//  ViewControllerParalax.h
//  dataEgov
//
//  Created by Nurlan on 25/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

@import UIKit;
#import "MJCollectionViewCell.h"
#import "ViewController.h"
#import "EcologyViewController.h"
#import "EducationViewController.h"
#import "EconomicsViewController.h"
#import "SecurityViewController.h"
#import "PopulationViewController.h"

@interface ViewControllerParalax : UIViewController{
    
}

@property (weak, nonatomic) IBOutlet UICollectionView *parallaxCollectionView;
@property (nonatomic, strong) NSMutableArray* images;

@end
