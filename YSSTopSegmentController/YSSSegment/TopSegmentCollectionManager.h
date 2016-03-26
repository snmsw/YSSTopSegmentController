//
//  TopSegmentCollectionManager.h
//  YSSTopSegmentController
//
//  Created by king on 15/12/25.
//  Copyright © 2015年 songs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TopSegmentManagerDelegate <NSObject>

- (void)segmentCollectionViewCellDidSelect:(NSInteger)itemIndex;

@end

@interface TopSegmentCollectionManager : NSObject <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) id<TopSegmentManagerDelegate> delegate;

- (id)initWithImageArray:(NSArray <UIImage *> *)imageArray withCollectionView:(UICollectionView *)collectionView;

@end
