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
    PieChartView *pieChart;
    BOOL ok;
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

    UISwipeGestureRecognizer * swipeleft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft:)];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];

    ok = false;

    self.view.backgroundColor = [UIColor whiteColor];

    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    NSInteger which = [[userDef valueForKey:@"graphShow"] integerValue];
    NSString *urlString = (NSString *)[userDef valueForKey:@"api"];
    [userDef synchronize];

    NSLog(@"%ld", (long)which);

    NSLog(@"%@", urlString);


    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];

    if (!data) {
        NSLog(@"not working");
    }
    else {

        NSMutableArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:NULL];

        NSMutableArray *arrayX = [[NSMutableArray alloc] init];
        NSMutableArray *arrayY = [[NSMutableArray alloc] init];

        int ind = 0;

        NSLog(@"%@", jsonArray.lastObject);

        for(int indY = 2000; indY<=2015; indY++){

            NSString *key = [NSString stringWithFormat:@"y%d", indY];
            NSString *val = (NSString *)jsonArray.lastObject[key];
            

            if([[jsonArray.lastObject allKeys] containsObject:key] && jsonArray.lastObject[key] != [NSNull null]){

                int y = [val intValue];

                BarChartDataEntry *dataEntry = [[BarChartDataEntry alloc] initWithValue:(double)y xIndex:ind];
                ind++;
                [arrayY addObject:dataEntry];

                NSString *str = (NSString *)key;

                [arrayX addObject:[str substringFromIndex:1]];

                NSLog(@"%@, %d", key, y);
            }
        }

        NSString *strin = (NSString *)jsonArray.lastObject[@"nameRu"];
        NSLog(@"%@", strin);

        barChartView = [[BarChartView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-100)];
        barChartView.noDataText = @"Not Data";
        barChartView.xAxis.labelPosition = XAxisLabelPositionBottom;
        barChartView.xAxis.labelHeight = 10.0;
        [barChartView.animator animateWithXAxisDuration:2.0 yAxisDuration:2.0 easingOption:ChartEasingOptionEaseInBounce];

        BarChartDataSet *dataSet = [[BarChartDataSet alloc] initWithYVals:arrayY label:strin];
        dataSet.colors = [ChartColorTemplates colorful];
        
        BarChartData *barData = [[BarChartData alloc] initWithXVals:arrayX dataSet:dataSet];
        
        barChartView.data = barData;
        
        [self.view addSubview:barChartView];


        pieChart = [[PieChartView alloc] initWithFrame:barChartView.frame];
        pieChart.centerText = strin;
        PieChartDataSet *pieDataSet = [[PieChartDataSet alloc] initWithYVals:arrayY label:strin];
        pieDataSet.colors = [ChartColorTemplates colorful];
        PieChartData *pieData = [[PieChartData alloc] initWithXVals:arrayX dataSet:pieDataSet];
        pieChart.data = pieData;
        //[self.view addSubview:pieChart];
    }

    //[self performSelector:@selector(saveToCameraBar) withObject:Nil afterDelay:3.0f];
}

-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer
{
    if(!ok){
        ok = true;
        [barChartView removeFromSuperview];
        [self.view addSubview:pieChart];
    }
    else{
        ok = false;
        [pieChart removeFromSuperview];
        [self.view addSubview:barChartView];
    }
}

- (IBAction)saveSnapshot:(id)sender {
    [barChartView saveToCameraRoll];
}

- (void)saveToCameraBar{
    if(!ok)
       [barChartView saveToCameraRoll];
    else
        [pieChart saveToCameraRoll];
}


#pragma mark - Other
- (void)dealloc {
}

@end
