//
//  EducationGraphViewController.m
//  dataEgov
//
//  Created by Nurlan on 26/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

#import "EducationGraphViewController.h"

@interface EducationGraphViewController (){
    BarChartView *barChartView;
}

@end

@implementation EducationGraphViewController


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    NSInteger which = [[userDef valueForKey:@"eduGraphShow"] integerValue];

    NSLog(@"%ld", (long)which);

    if(which == 1){
        NSString *urlString = @"http://data.egov.kz/api/v2/internet_users";

        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];

        if (!data) {
            NSLog(@"not working");
        }
        else {

            NSMutableArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:NULL];

            NSMutableArray *arrayX = [[NSMutableArray alloc] init];
            NSMutableArray *arrayY = [[NSMutableArray alloc] init];

            int ind = 0;

            NSLog(@"%@", jsonArray.firstObject);

            for(int indY = 2006; indY<=2010; indY++){
                NSString *key = [NSString stringWithFormat:@"y%d", indY];
                int y = [jsonArray.firstObject[key] intValue];

                BarChartDataEntry *dataEntry = [[BarChartDataEntry alloc] initWithValue:(double)y xIndex:ind];
                ind++;
                [arrayY addObject:dataEntry];

                NSString *str = (NSString *)key;

                [arrayX addObject:[str substringFromIndex:1]];

                NSLog(@"%@, %d", key, y);
            }

            NSString *strin = (NSString *)jsonArray.firstObject[@"nameRu"];
            NSLog(@"%@", strin);

            barChartView = [[BarChartView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            barChartView.noDataText = @"Not Data";
            barChartView.xAxis.labelPosition = XAxisLabelPositionBottom;
            barChartView.xAxis.labelHeight = 10.0;
            [barChartView.animator animateWithXAxisDuration:2.0 yAxisDuration:2.0 easingOption:ChartEasingOptionEaseInBounce];

            BarChartDataSet *dataSet = [[BarChartDataSet alloc] initWithYVals:arrayY label:@"hello"];
            dataSet.colors = [ChartColorTemplates colorful];
            
            BarChartData *barData = [[BarChartData alloc] initWithXVals:arrayX dataSet:dataSet];
            
            barChartView.data = barData;
            
            [self.view addSubview:barChartView];
        }

        [self performSelector:@selector(saveToCameraBar) withObject:Nil afterDelay:3.0f];
    }
}

- (void)saveToCameraBar{
    [barChartView saveToCameraRoll];
}


#pragma mark - Other
- (void)dealloc {
}
@end
