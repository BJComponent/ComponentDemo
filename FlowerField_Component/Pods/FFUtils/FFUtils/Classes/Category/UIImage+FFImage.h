//
//  UIImage+FFImage.h
//  FFUtils_Example
//
//  Created by 张文军 on 2020/5/6.
//  Copyright © 2020 zhangwenjun0630@163.com. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FFImage)

+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
