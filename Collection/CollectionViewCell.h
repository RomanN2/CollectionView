//
//  CollectionViewCell.h
//  Collection
//
//  Created by Roman Nazarkevych on 6/25/12.
//  Copyright (c) 2012 Roman Nazarkevych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end
