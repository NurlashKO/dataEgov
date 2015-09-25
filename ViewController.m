//
//  ViewController.m
//  dataEgov
//
//  Created by Nurlan on 25/09/2015.
//  Copyright © 2015 Nurlan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *urlString = @"http://data.egov.kz/api/v2/taxes_on_products";

    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];

    if (!data) {
        NSLog(@"not working");
    }
    else {

    NSMutableArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:NULL];

    NSMutableArray *arrayX = [[NSMutableArray alloc] init];
    NSMutableArray *arrayY = [[NSMutableArray alloc] init];

    int ind = 0;

    for(int indY = 2000; indY<=2014; indY++){
        NSString *key = [NSString stringWithFormat:@"y%d", indY];
        int y = [jsonArray.firstObject[key] intValue];

        BarChartDataEntry *dataEntry = [[BarChartDataEntry alloc] initWithValue:(double)y xIndex:ind];
        ind++;
        [arrayY addObject:dataEntry];

        NSString *str = (NSString *)key;

        [arrayX addObject:[str substringFromIndex:1]];

        NSLog(@"%@, %d", key, y);
    }

    BarChartView *barChartView = [[BarChartView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
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

}


#pragma mark - Other
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
