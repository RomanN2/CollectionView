//
//  ViewController.m
//  Collection
//
//  Created by Roman Nazarkevych on 6/25/12.
//  Copyright (c) 2012 Roman Nazarkevych. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "Bird.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize birds;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    birds = [NSArray arrayWithObjects:
            [[Bird alloc] initWithBirdName:@"Penguin" imageName:@"penguin.jpg"],
            [[Bird alloc] initWithBirdName:@"Crow" imageName:@"crow.jpg"],
            [[Bird alloc] initWithBirdName:@"Cuckoo" imageName:@"cuckoo.jpg"],
            [[Bird alloc] initWithBirdName:@"Eagle" imageName:@"eagle.jpg"],
            [[Bird alloc] initWithBirdName:@"Ostrich" imageName:@"ostrich.jpg"],
            [[Bird alloc] initWithBirdName:@"Owl" imageName:@"owl.jpg"],
            [[Bird alloc] initWithBirdName:@"Parrot" imageName:@"parrot.jpg"],
            [[Bird alloc] initWithBirdName:@"Sparrow" imageName:@"sparrow.jpg"],
            [[Bird alloc] initWithBirdName:@"Swan" imageName:@"swan.jpg"],
            [[Bird alloc] initWithBirdName:@"Woodpecker" imageName:@"woodpecker.jpg"],
            nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [birds count] / 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Bird *bird = [birds objectAtIndex:(indexPath.section*2 + indexPath.row)];
    cell.label.text = bird.birdName;
    cell.imageView.image = [UIImage imageNamed:bird.imageName];
    return cell;
}

@end
