//
//  AnarLTabbarController.m
//  CustomTabbar
//
//  Created by AnarL on 1/14/16.
//  Copyright © 2016 AnarL. All rights reserved.
//

#import "AnarLTabbarController.h"

@interface AnarLTabbarController ()
{
    NSArray <UIViewController *>* _controllers;
    NSArray <NSString *>* _titles;
    NSArray <NSString *>* _defaultImages;
    NSArray <NSString *>* _highlightedImages;
}

@end

@implementation AnarLTabbarController

- (instancetype)initWithControllers:(NSArray<UIViewController *> *)controllers titles:(NSArray<NSString *> *)titles defaultImages:(NSArray<NSString *> *)images highLightedImages:(NSArray<NSString *> *)highlightedImages barTintColor:(UIColor *)tintColor barBackgroundColor:(UIColor *)backgroundColor
{
    if (self = [super init]) {
        
        _controllers = controllers;
        _titles = titles;
        _defaultImages = images;
        _highlightedImages = highlightedImages;
        _tabbarBarTintColor = tintColor;
        _tabbarBackgroundColor = backgroundColor;
        
        [self createTabbarItems];
        
        [self.tabBarController.tabBar setHidden:YES];
    }
    return self;
}

- (void)createTabbarItems
{
    NSMutableArray * tabbarItems = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < _controllers.count; i ++) {
        
        UIViewController * tabbarItem = _controllers[i];
        
        tabbarItem.title = _titles[i];
        UINavigationController * tabbarNavi = [[UINavigationController alloc] initWithRootViewController:tabbarItem];
        tabbarNavi.tabBarItem.image = [[UIImage imageNamed:_defaultImages[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        tabbarNavi.tabBarItem.selectedImage = [[UIImage imageNamed:_highlightedImages[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [tabbarNavi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
        [tabbarItems addObject:tabbarNavi];
        
    }
    
    self.viewControllers = tabbarItems;
    self.tabBar.tintColor = self.tabbarBarTintColor ? self.tabbarBarTintColor : [UIColor blackColor];
    self.tabBar.backgroundColor = self.tabbarBackgroundColor ? self.tabbarBackgroundColor : [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
