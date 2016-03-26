//
//  TopSegmentCollectionManager.m
//  YSSTopSegmentController
//
//  Created by king on 15/12/25.
//  Copyright © 2015年 songs. All rights reserved.
//

#import "TopSegmentCollectionManager.h"
#import "TopSegmentCollectionViewCell.h"

static NSString * const kTopSegmentCollectionViewCellID = @"kTopSegmentCollectionViewCellID";
static CGFloat const kCellHeight = 42;

@interface TopSegmentCollectionManager ()
{
    NSArray *_imageArray;
    UICollectionView *_collectionView;
}

@end

@implementation TopSegmentCollectionManager

- (id)initWithImageArray:(NSArray<UIImage *> *)imageArray withCollectionView:(UICollectionView *)collectionView
{
    if (self = [super init]) {
        _imageArray = imageArray;
        _collectionView = collectionView;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(TopSegmentCollectionViewCell.class) bundle:nil] forCellWithReuseIdentifier:kTopSegmentCollectionViewCellID];
        [_collectionView reloadData];
    }
    return self;
}

#pragma mark - UICollectionView DataSource && Delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _imageArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TopSegmentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kTopSegmentCollectionViewCellID forIndexPath:indexPath];
    [cell.cellIconButton setImage:_imageArray[indexPath.row] forState:UIControlStateNormal];
    return cell;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kCellWidth = _imageArray.count > 0 ? CGRectGetWidth([UIScreen mainScreen].bounds) / _imageArray.count : 0;
    return CGSizeMake(kCellWidth, kCellHeight);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.delegate respondsToSelector:@selector(segmentCollectionViewCellDidSelect:)]) {
        [self.delegate segmentCollectionViewCellDidSelect:indexPath.item];
    }
}

@end
