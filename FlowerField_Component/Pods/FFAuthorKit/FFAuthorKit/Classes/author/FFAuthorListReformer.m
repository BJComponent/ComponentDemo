//
//  FFAuthorPropertyListReformer.m
//  FlowerField
//
//  Created by kepuna on 2017/9/1.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "FFAuthorListReformer.h"
#import <UIKit/UIKit.h>

@implementation FFAuthorListReformer

- (NSDictionary *)reformData:(NSDictionary *)originData {
    
    return originData ? @{
              kAuthorPropertyListHeaderURL:[NSURL URLWithString:originData[@"headImg"]] ,
              kAuthorPropertyListKeyName:originData[@"userName"],
              kAuthorPropertyListKeyAuthIcon:[self authorAuthIcon:originData[@"newAuth"]]
              } : nil;
}

/// 作者认证的icon
- (UIImage *)authorAuthIcon:(NSNumber *)auth {
    switch ([auth integerValue]) {
        case 1:
            return [UIImage ff_imagePathWithName:@"u_vip_yellow" bundle:@"FFAuthorKit" targetClass:[self class]];
        case 2:
            return [UIImage ff_imagePathWithName:@"personAuth" bundle:@"FFAuthorKit" targetClass:[self class]];
        default:
            return [UIImage ff_imagePathWithName:@"u_vip_blue" bundle:@"FFAuthorKit" targetClass:[self class]];
    }
}

@end
