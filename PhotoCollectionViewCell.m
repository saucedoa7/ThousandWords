//
//  PhotoCollectionViewCell.m
//  ThousandWords
//
//  Created by Albert Saucedo on 9/15/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#define IMAGE_VIEW_BOARDER 5

@implementation PhotoCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUp];
    }
    return self;
}

-(void)setUp{
    self.imageView = [[UIImageView alloc] initWithFrame: CGRectInset(self.bounds, IMAGE_VIEW_BOARDER, IMAGE_VIEW_BOARDER)];
    [self.contentView addSubview:self.imageView];
}

@end
