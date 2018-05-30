//
//  ViewController.m
//  test
//
//  Created by Mukesh Verma on 5/4/18.
//  Copyright © 2018 Mukesh Verma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor blackColor],
       NSFontAttributeName:[UIFont boldSystemFontOfSize:22]}];
    
    [self setTitle:@"Hotels"];

    arrHotels = [[NSMutableArray alloc] init];
    
    self.collectionView.contentInset = UIEdgeInsetsMake(0, 15, 0, 15);
    
    NSLog(@"arr count = %lu",(unsigned long)arrHotels.count);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 8;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TripMetryHotelBoxCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TripMetryHotelBoxCell" forIndexPath:indexPath];
    [cell.imgHotel setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld",indexPath.row+1]]];
    return cell;
}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(self.view.frame.size.width/2-20, 300);
//}
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//{
//    return UIEdgeInsetsMake(0, 15, 0, 15);
//}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [self.collectionView.collectionViewLayout invalidateLayout];
}



@end
