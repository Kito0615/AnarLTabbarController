//
//  AnarLTabbarController.h
//  CustomTabbar
//
//  Created by AnarL on 1/14/16.
//  Copyright © 2016 AnarL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnarLTabbarController : UITabBarController

@property (nonatomic, retain, readwrite) UIColor * tabbarBackgroundColor;
@property (nonatomic, retain, readwrite) UIColor * tabbarBarTintColor;

- (instancetype)initWithControllers:(NSArray<UIViewController *> *)controllers titles:(NSArray<NSString *> *)titles defaultImages:(NSArray<NSString *> *)images highLightedImages:(NSArray<NSString *> *)highlightedImages barTintColor:(UIColor *)tintColor barBackgroundColor:(UIColor *)backgroundColor;

@end
