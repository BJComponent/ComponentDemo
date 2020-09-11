//
//  ILFTabBarController.m
//  iLife
//
//  Created by 郑佳 on 16/1/22.
//  Copyright © 2016年 Triangle. All rights reserved.
//

#import "FFTabBarController.h"
#import "FFBase.h"
#import "FFSpecialController.h"
#import "FFAuthorController.h"

@implementation FFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addChildViewController:[FFSpecialController new] navTitle:@"SPECIAL" tabbarTitle:@"专题" tabbarImage:@"tb_0"];
    [self addChildViewController:[FFAuthorController new] navTitle:@"AUTHOR" tabbarTitle:@"作者" tabbarImage:@"tb_2"];
}

- (void)addChildViewController:(UIViewController *)controller navTitle:(NSString *)navTitle tabbarTitle:(NSString *)tabbarTitle tabbarImage:(NSString *)tabbarImage{
    
    FFNavController *nav = [[FFNavController alloc]initWithRootViewController:controller];
    controller.navigationItem.title = navTitle;
    controller.tabBarItem.title = tabbarTitle;
    controller.tabBarItem.image= [[UIImage imageNamed:tabbarImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage= [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",tabbarImage]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:nav];
}

@end
