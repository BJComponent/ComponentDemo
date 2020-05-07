//
//  SpecialAPIRequest.m
//  FlowerField
//
//  Created by kepuna on 2017/9/5.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "SpecialAPIRequest.h"

@implementation SpecialAPIRequest

- (NSString *)apiRequestURL {
    return @"http://m.htxq.net/servlet/SysArticleServlet?action=mainList";
}

- (NSDictionary *)apiRequestParams {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"currentPageIndex"] = @0;
    params[@"pageSize"] = @(5);
    return params.copy;
}

- (NSString *)method {
    return GET;
}

- (BOOL)isCache {
    return YES;
}

- (id)fetchDataWithReformer:(NSDictionary<FFReformProtocol> *)reformer {
    NSMutableArray *tempArray = [NSMutableArray array];
    
    //到指定目录
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    bundleURL = [bundleURL URLByAppendingPathComponent:@"FFSpecialKit"];
    bundleURL = [bundleURL URLByAppendingPathExtension:@"framework"];
    if (bundleURL) {
        NSBundle *imgBundle = [NSBundle bundleWithURL:bundleURL];
        bundleURL = [imgBundle URLForResource:@"FFSpecialKit" withExtension:@"bundle"];
        if (bundleURL) {
            NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
            NSString *path = [bundle pathForResource:@"special_page" ofType:@"json"];
            NSData *data = [[NSData alloc] initWithContentsOfFile:path];
            NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            for (NSDictionary *dict in jsonDict[@"result"]) {
                NSDictionary *dataDict = [reformer reformData:dict];
                [tempArray addObject:dataDict];
            }
            return tempArray.copy;
        } else {
            return nil;
        }
    } else {
        return nil;
    }
    
//    NSBundle *xibBundle = [NSBundle bundleForClass:[self class]];
//    NSString *path = [xibBundle pathForResource:@"special_page" ofType:@"json"];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
//    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//    for (NSDictionary *dict in jsonDict[@"result"]) {
//        NSDictionary *dataDict = [reformer reformData:dict];
//        [tempArray addObject:dataDict];
//    }
//    return tempArray.copy;
}

@end
