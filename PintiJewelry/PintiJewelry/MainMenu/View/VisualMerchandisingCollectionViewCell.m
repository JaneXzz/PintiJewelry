//
//  VisualMerchandisingCollectionViewCell.m
//  PintiJewelry
//
//  Created by Jane on 16/7/30.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "VisualMerchandisingCollectionViewCell.h"
#import "Masonry.h"


@implementation VisualMerchandisingCollectionViewCell


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatSubView];
    }
    return self;
}
-(void)creatSubView
{
    
    
    UIColor * randomColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    _showImageView = [[UIImageView alloc] init];
    _showImageView.backgroundColor = randomColor;
    [self.contentView addSubview:_showImageView];
    NSString *string = [NSString stringWithFormat:@"%d",arc4random()%8+1] ;
//    NSLog(@"%@",string);
    _showImageView.image = [UIImage imageNamed:string];
    
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [_showImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));

    }];
}

@end
