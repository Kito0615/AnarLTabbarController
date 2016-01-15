//
//  AppDelegate.m
//  CustomTabbar
//
//  Created by AnarL on 1/14/16.
//  Copyright © 2016 AnarL. All rights reserved.
//

#define COLOR_WITH_RGB(r, g, b) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1]
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    NSMutableArray * controllers = [[NSMutableArray alloc] init];
    NSMutableArray * titles = [[NSMutableArray alloc] init];
    NSMutableArray * defaultImages = [[NSMutableArray alloc] init];
    NSMutableArray * highlightedImages = [[NSMutableArray alloc] init];
    
    
    for (int i = 0; i < 4; i ++) {
        
        UIViewController * controller = [[UIViewController alloc] init];
        controller.view.backgroundColor = COLOR_WITH_RGB(arc4random()%255, arc4random()%255, arc4random()%255);
        [controllers addObject:controller];
        NSString * title = [NSString stringWithFormat:@"Tabbar%d", i];
        [titles addObject:title];
        NSString * defaultTabbar = [NSString stringWithFormat:@"tabbar%d",i];
        [defaultImages addObject:defaultTabbar];
        NSString * highlightTabbar = [NSString stringWithFormat:@"tabbar%d.png", i];
        [highlightedImages addObject:highlightTabbar];
        
    }
    
    _tabbarController = [[AnarLTabbarController alloc] initWithControllers:controllers titles:titles defaultImages:defaultImages highLightedImages:highlightedImages barTintColor:[UIColor greenColor] barBackgroundColor:[UIColor grayColor]];
    _window.rootViewController = _tabbarController;
    
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
