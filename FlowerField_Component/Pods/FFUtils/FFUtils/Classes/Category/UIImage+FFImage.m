//
//  UIImage+FFImage.m
//  FFUtils_Example
//
//  Created by 张文军 on 2020/5/6.
//  Copyright © 2020 zhangwenjun0630@163.com. All rights reserved.
//

#import "UIImage+FFImage.h"


@implementation UIImage (FFImage)

+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass {
    
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
    NSString *name = [NSString stringWithFormat:@"%@@%zdx",imageName,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundle];
    NSString *path = [currentBundle pathForResource:name ofType:@"png" inDirectory:dir];
    return path ? [UIImage imageWithContentsOfFile:path] : nil;
}

@end
