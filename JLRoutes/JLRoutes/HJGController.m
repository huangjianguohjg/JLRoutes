//
//  HJGController.m
//  JLRoutes
//
//  Created by Developer on 2018/3/21.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "HJGController.h"
#import "JLRoutes.h"
#define  JLRoutesJumpUrl(module,toController,paramaOne,paramaTwo,paramaThree,paramaFour) [NSString stringWithFormat:@"%@://%@/%@/%@/%@/%@",module,toController,paramaOne,paramaTwo,paramaThree,paramaFour];

@interface HJGController ()

@end

@implementation HJGController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    UIButton *but1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    but1.backgroundColor = [UIColor redColor];
    [self.view addSubview:but1];
    [but1 addTarget:self action:@selector(but1Click) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *but2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 250, 100, 50)];
    but2.backgroundColor = [UIColor redColor];
    [self.view addSubview:but2];
    [but2 addTarget:self action:@selector(but2Click) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *but3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 100, 50)];
    but3.backgroundColor = [UIColor redColor];
    [self.view addSubview:but3];
    [but3 addTarget:self action:@selector(but3Click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)but1Click{
    
    NSString *url = JLRoutesJumpUrl(@"hjgone", @"HJGOneController", @"123", nil, nil, nil);
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url] options:nil completionHandler:nil];
    
}

- (void)but2Click{
    
    NSString *url = JLRoutesJumpUrl(@"hjgtwo", @"HJGTwoController", @"123", nil, nil, nil);
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url] options:nil completionHandler:nil];
    
}


- (void)but3Click{
    NSString *url = JLRoutesJumpUrl(@"hjgthree", @"HJGThreeController", @"123", nil, nil, nil);
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url] options:nil completionHandler:nil];
    
}

@end
