//
//  ShareView.m
//  PintiJewelry
//
//  Created by Jane on 16/7/31.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "ShareView.h"
#import "PopMenu.h"

@implementation ShareView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatShare:frame];
    }
    return self;
}
-(void)creatShare:(CGRect)frame
{
    
    NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:4];
    MenuItem *menuItem = [[MenuItem alloc] initWithTitle:@"微信" iconName:@"wx.png" glowColor:nil index:0];
    [items addObject:menuItem];
    menuItem = [MenuItem initWithTitle:@"QQ" iconName:@"kj.png" glowColor:nil index:1];
    [items addObject:menuItem];
    menuItem = [MenuItem initWithTitle:@"微博" iconName:@"wb.png" glowColor:nil index:2];
    [items addObject:menuItem];
    menuItem = [MenuItem initWithTitle:@"朋友圈" iconName:@"pyq.png" glowColor:nil index:3];
    [items addObject:menuItem];
    
    PopMenu *popMenu = [[PopMenu alloc] initWithFrame:frame items:items];
    popMenu.menuAnimationType = kPopMenuAnimationTypeNetEase; // kPopMenuAnimationTypeSina
    popMenu.perRowItemCount = 4;
    popMenu.didSelectedItemCompletion = ^(MenuItem *selectedItem) {
        NSLog(@"点击了%ld",(long)selectedItem.index);
    };
    [popMenu showMenuAtView:self.window];
    
}

@end
