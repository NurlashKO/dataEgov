//
//  ViewControllerParalax.m
//  dataEgov
//
//  Created by Nurlan on 25/09/2015.
//  Copyright (c) 2015 Nurlan. All rights reserved.
//

#import "ViewControllerParalax.h"

@interface ViewControllerParalax () <UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate>

@end

@implementation ViewControllerParalax


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.parallaxCollectionView.backgroundColor = [UIColor blackColor];

    NSUInteger index;
    for (index = 0; index < 5; ++index) {
        // Setup image name
        NSString *name = [NSString stringWithFormat:@"images%ld.jpg", (unsigned long)index];
        if(!self.images)
            self.images = [NSMutableArray arrayWithCapacity:0];
        [self.images addObject:name];
    }

    [self.parallaxCollectionView reloadData];

}

#pragma mark - UICollectionViewDatasource Methods
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MJCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MJCell" forIndexPath:indexPath];

    //get image name and assign
    NSString* imageName = [self.images objectAtIndex:indexPath.item];
    cell.image = [UIImage imageNamed:imageName];

    //set offset accordingly
    CGFloat yOffset = ((self.parallaxCollectionView.contentOffset.y - cell.frame.origin.y) / IMAGE_HEIGHT) * IMAGE_OFFSET_SPEED;
    cell.imageOffset = CGPointMake(0.0f, yOffset);

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    if(indexPath.row == 0){
        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"ecologyVC"];
        vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentViewController:vc animated:YES completion:NULL];

        NSLog(@"ecology");
    }
    else if(indexPath.row == 1){
        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"eduVC"];
        vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentViewController:vc animated:YES completion:NULL];

        NSLog(@"educaton");
    }
    else if(indexPath.row == 2){
        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"economicsVC"];
        vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentViewController:vc animated:YES completion:NULL];

        NSLog(@"economy");
    }
    else if(indexPath.row == 3){
        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"secVC"];
        vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentViewController:vc animated:YES completion:NULL];

        NSLog(@"security");
    }
    else{
        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"popVC"];
        vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
        [self presentViewController:vc animated:YES completion:NULL];

        NSLog(@"population");
    }
}

#pragma mark - UIScrollViewdelegate methods
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    for(MJCollectionViewCell *view in self.parallaxCollectionView.visibleCells) {
        CGFloat yOffset = ((self.parallaxCollectionView.contentOffset.y - view.frame.origin.y) / IMAGE_HEIGHT) * IMAGE_OFFSET_SPEED;
        view.imageOffset = CGPointMake(0.0f, yOffset);
    }
}

#pragma mark - Other
- (void)dealloc {
}
@end
