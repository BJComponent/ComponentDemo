//
//  CLFBaseNavController.m
//  CityLife
//
//  Created by 郑佳 on 16/6/22.
//  Copyright © 2016年 Triangle. All rights reserved.
//

#import "FFNavController.h"
#import <FFUtils/FFUtils.h>

@implementation FFNavController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:FONT_SIZE_16],
       NSForegroundColorAttributeName:[UIColor darkGrayColor]}];
    self.navigationBar.barTintColor = kNavBarTintColor;
}

#pragma mark - public
- (void)pushViewController:(UIViewController *)controller animated:(BOOL)animated {
    if (self.viewControllers.count) {
        controller.hidesBottomBarWhenPushed = YES;
        [self goBackItem:controller];
    }
    [super pushViewController:controller animated:animated];
}

#pragma mark - private
- (void)goBackItem:(UIViewController *)controller{
    self.interactivePopGestureRecognizer.delegate = nil;
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStylePlain target:self action:@selector(s_backTapEvent)];
    controller.navigationItem.leftBarButtonItem = back;
}

- (void)s_backTapEvent {
    if (self.presentingViewController != nil){
        [self dismissViewControllerAnimated:NO completion:nil];
    } else{
        [self popViewControllerAnimated:YES];
    }
}

@end
