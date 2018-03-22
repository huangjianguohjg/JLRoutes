//
//  AppDelegate.m
//  JLRoutes
//
//  Created by Developer on 2018/3/21.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "AppDelegate.h"
#import "JLRoutes.h"
#import "HJGNavController.h"
#import "HJGController.h"
#import "HJGController.h"
#import "HJGTabController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    HJGTabController *navController = [[HJGTabController alloc]init];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    return [[JLRoutes globalRoutes]routeURL:url];;
}


@end
