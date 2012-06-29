//
//  Bird.h
//  Collection
//
//  Created by Roman Nazarkevych on 6/27/12.
//  Copyright (c) 2012 Roman Nazarkevych. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bird : NSObject

@property (strong, nonatomic) NSString * imageName;
@property (strong, nonatomic) NSString * birdName;

- (id) initWithBirdName:(NSString*)bird imageName:(NSString*)image;

@end
