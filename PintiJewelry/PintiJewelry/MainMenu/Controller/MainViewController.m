//
//  MainViewController.m
//  PintiJewelry
//
//  Created by Jane on 16/7/28.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self titleIs:@"PintiJewelry"];
    [self leftCustomViewImageName:@"paragraph" action:@selector(presentLeftMenuViewController:)];

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
