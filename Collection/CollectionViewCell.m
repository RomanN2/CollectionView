//
//  CollectionViewCell.m
//  Collection
//
//  Created by Roman Nazarkevych on 6/25/12.
//  Copyright (c) 2012 Roman Nazarkevych. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

@synthesize imageView;
@synthesize label;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
