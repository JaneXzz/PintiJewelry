//
//  MainViewController.m
//  PintiJewelry
//
//  Created by Jane on 16/7/28.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"
#import "VisualMerchandisingCollectionViewCell.h"
#import "CommodityDisplayViewController.h"

@interface MainViewController ()
{

    UICollectionView * _collectionView;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self titleIs:@"PintiJewelry"];
    [self leftCustomViewImageName:@"paragraph" action:@selector(presentLeftMenuViewController:)];
    [self creatPromptWords];
    [self creatCollectionView];

}

-(void)creatPromptWords{
    UILabel *promotLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:promotLabel];
    promotLabel.backgroundColor = [UIColor whiteColor];
    promotLabel.text = @"亲,选择你喜欢的联系我们吆!";
    promotLabel.textAlignment = NSTextAlignmentCenter;
    [promotLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10.0);
            make.right.mas_equalTo(-10.0);
            make.top.mas_equalTo(10.0);
            make.height.mas_equalTo(30.0);
        }];
}

//创建瀑布流
-(void)creatCollectionView
{
    //创建瀑布流
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.minimumLineSpacing = 40;
    layout.sectionInset = UIEdgeInsetsMake(0, 10, 10, 10);
    //创建集合视图
    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
    _collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_collectionView];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [_collectionView registerClass:[VisualMerchandisingCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(50, 0, 0, 0));
    }];
}
//组数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
//组件个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 40;
}

//设置cell
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static  NSString * indentifier = @"cell";
    VisualMerchandisingCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:indentifier forIndexPath:indexPath];
    //图片
    return cell;
}

//每个cell的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(80, 80);
    
}

//点击选择的cell触发的事件

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    VisualMerchandisingCollectionViewCell *cell = (VisualMerchandisingCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    CommodityDisplayViewController *detailVC = [[CommodityDisplayViewController alloc]init];
    detailVC.myClickImage = cell.showImageView.image;
    [self.navigationController pushViewController:detailVC animated:YES];
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
