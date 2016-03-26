//
//  ContentCollectionViewManager.h
//  YSSTopSegmentController
//
//  Created by king on 15/12/25.
//  Copyright © 2015年 songs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ContentCollectionViewManager : NSObject <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

- (id)initWithImageArray:(NSArray <UIViewController *> *)controllerArray withCollectionView:(UICollectionView *)collectionView;

@end
