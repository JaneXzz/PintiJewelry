//
//  BaseViewController.h
//  PintiJewelry
//
//  Created by Jane on 16/7/28.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
#import "Masonry.h"


@interface BaseViewController : UIViewController

@property(strong,nonatomic)UIImageView *navView;


-(void)titleIs:(NSString *)sender;
-(void)leftCustomViewImageName:(NSString *)imageName action:(SEL)action;
@end
