//
//  HJGTabController.m
//  JLRoutes
//
//  Created by Developer on 2018/3/22.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "HJGTabController.h"
#import "HJGOneController.h"
#import "HJGTwoController.h"
#import "HJGThreeController.h"
#import "HJGNavController.h"
#import "HJGController.h"
#import "JLRoutes.h"
@interface HJGTabController ()

@end

@implementation HJGTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HJGController *one = [[HJGController alloc]init];
    HJGNavController *nav1 = [[HJGNavController alloc]initWithRootViewController:one];
    nav1.tabBarItem.title = @"模块一";
    [self addChildViewController:nav1];
    
    HJGTwoController *two = [[HJGTwoController alloc]init];
    HJGNavController *nav2 = [[HJGNavController alloc]initWithRootViewController:two];
    nav2.tabBarItem.title = @"模块二";
    [self addChildViewController:nav2];
    
    HJGThreeController *three = [[HJGThreeController alloc]init];
    HJGNavController *nav3 = [[HJGNavController alloc]initWithRootViewController:three];
    nav3.tabBarItem.title = @"模块三";
    [self addChildViewController:nav3];
    
    //
    [[JLRoutes globalRoutes]addRoute:@"/:toController/:paramOne/:paramTwo/:paramThree/:paramFour" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        
        Class class = NSClassFromString(parameters[@"toController"]);
        UIViewController *vc = [[class alloc]init];
        NSURL *headUrl = parameters[JLRouteURLKey];
        NSString *head = [headUrl.absoluteString componentsSeparatedByString:@"://"].firstObject;
        if ([head isEqualToString:@"hjgone"]) {
            [nav1 pushViewController:vc animated:YES];
        }else if ([head isEqualToString:@"hjgtwo"]){
            [nav2 pushViewController:vc animated:YES];
        }else if([head isEqualToString:@"hjgthree"]){
            [nav3 pushViewController:vc animated:YES];
        }
        
        return YES;
    }];

}

@end
