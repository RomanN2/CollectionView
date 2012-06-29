//
//  Bird.m
//  Collection
//
//  Created by Roman Nazarkevych on 6/27/12.
//  Copyright (c) 2012 Roman Nazarkevych. All rights reserved.
//

#import "Bird.h"

@implementation Bird

@synthesize imageName;
@synthesize birdName;

- (id) initWithBirdName:(NSString*)bird imageName:(NSString*)image
{
    if (self = [super init]) {
        self.imageName = image;
        self.birdName = bird;
    }
    return self;
}

@end
