//
//  ViewController.h
//  test
//
//  Created by Mukesh Verma on 5/4/18.
//  Copyright © 2018 Mukesh Verma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TripMetryHotelBoxCell.h"

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    NSMutableArray *arrHotels;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

