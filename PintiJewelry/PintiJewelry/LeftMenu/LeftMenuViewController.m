//
//  LeftMenuViewController.m
//  PintiJewelry
//
//  Created by Jane on 16/7/28.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "MainViewController.h"
#import "Masonry.h"
#import "JNavigationViewController.h"
#import "LocationViewController.h"
#import "ShareViewController.h"
#import "SettingViewController.h"

#define kCellHeight 54
//#define kCellCount 4

@interface LeftMenuViewController ()
{
    NSArray *titlesArr;
    NSArray *iconImageArr;
}

@property (strong, readwrite, nonatomic) UITableView *tableView;


@end

@implementation LeftMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    titlesArr = @[@"Home", @"Location", @"share", @"Setting"];
    iconImageArr = @[@"IconHome", @"IconCalendar", @"IconProfile", @"IconSettings"];
    self.tableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - kCellHeight * titlesArr.count) / 2.0f, self.view.frame.size.width, kCellHeight * titlesArr.count) style:UITableViewStylePlain];
        tableView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.opaque = NO;
        tableView.backgroundColor = [UIColor clearColor];
        tableView.backgroundView = nil;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableView.bounces = NO;
        tableView;
    });
    [self.view addSubview:self.tableView];
}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
            [self.sideMenuViewController setContentViewController:[[JNavigationViewController alloc] initWithRootViewController:[[MainViewController alloc] init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 1:
            [self.sideMenuViewController setContentViewController:[[JNavigationViewController alloc] initWithRootViewController:[[LocationViewController alloc] init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 2:
            [self.sideMenuViewController setContentViewController:[[JNavigationViewController alloc] initWithRootViewController:[[ShareViewController alloc] init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 3:
            [self.sideMenuViewController setContentViewController:[[JNavigationViewController alloc] initWithRootViewController:[[SettingViewController alloc] init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
    }
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kCellHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return titlesArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:18];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.highlightedTextColor = [UIColor lightGrayColor];
        cell.selectedBackgroundView = [[UIView alloc] init];
    }
    cell.textLabel.text = titlesArr[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:iconImageArr[indexPath.row]];
    
    return cell;
}
@end
