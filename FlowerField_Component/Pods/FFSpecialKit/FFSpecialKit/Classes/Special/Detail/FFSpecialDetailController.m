//
//  FFSpecialDetailController.m
//  FlowerField
//
//  Created by kepuna on 2017/8/25.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "FFSpecialDetailController.h"
#import "FFSpecialDetailView.h"

@interface FFSpecialDetailController ()

@property (nonatomic, strong) FFSpecialDetailView *detailView;

@end

@implementation FFSpecialDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"专题的详情换了boundle";
    self.view.backgroundColor = [UIColor greenColor];
    
    NSBundle *xibBundle = [NSBundle bundleForClass:[self class]];
    self.detailView = [xibBundle loadNibNamed:@"FFSecialDetailView" owner:self options:nil].lastObject;
    [self.view addSubview:self.detailView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.detailView.frame = self.view.frame;
}

@end
