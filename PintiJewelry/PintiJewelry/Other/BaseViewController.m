//
//  BaseViewController.m
//  PintiJewelry
//
//  Created by Jane on 16/7/28.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "BaseViewController.h"




@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}
-(void)titleIs:(NSString*)sender{
    
    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    [customLab setTextColor:[UIColor whiteColor]];
    customLab.layer.shadowColor = [UIColor whiteColor].CGColor;
    customLab.layer.shadowOpacity = 0.2;
    customLab.layer.shadowOffset = CGSizeMake(0, 3);
    customLab.backgroundColor = [UIColor clearColor];
    [customLab setText:sender];
    customLab.textAlignment = NSTextAlignmentCenter;
    customLab.font = [UIFont boldSystemFontOfSize:18];
    self.navigationItem.titleView = customLab;
    
}
-(void)leftCustomViewImageName:(NSString *)imageName action:(SEL)action{
    
    UIButton *button = [self myCustomButtonImageName:imageName frame:CGRectMake(0, 0, 25, 20) action:action];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftItem;
}
-(void)goback
{
    UIButton *button = [self myCustomButtonImageName:@"Left_Arrow_48" frame:CGRectMake(0, 0, 25, 20) action:@selector(didgoback)];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:button];
//    UIBarButtonItem *nagetiveSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//    nagetiveSpacer.width = -11;//这个值可以根据自己需要自己调整
    self.navigationItem.leftBarButtonItem = leftItem;
}

-(UIButton *)myCustomButtonImageName:(NSString *)imageName frame:(CGRect)frame action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    button.frame = frame;
    return button;
}
-(void)didgoback
{
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
