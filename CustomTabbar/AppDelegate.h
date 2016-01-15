//
//  AppDelegate.h
//  CustomTabbar
//
//  Created by AnarL on 1/14/16.
//  Copyright © 2016 AnarL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnarLTabbarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    AnarLTabbarController * _tabbarController;
}

@property (strong, nonatomic) UIWindow *window;


@end

