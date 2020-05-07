//
//  AuthorAPIManager.m
//  FlowerField
//
//  Created by kepuna on 2017/9/6.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "AuthorAPIRequest.h"
#import "FFAuthorListReformer.h"

@implementation AuthorAPIRequest

- (NSString *)apiRequestURL {
    return @"http://ec.htxq.net/servlet/SysArticleServlet?currentPageIndex=0&pageSize=10";
}

- (NSDictionary *)apiRequestParams {
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"action"] = @"topArticleAuthor";
    return  params.copy;
}

- (BOOL)isCache {
    return YES;
}

- (id)fetchDataWithReformer:(NSDictionary<FFReformProtocol> *)reformer {
    if (reformer == nil) {
        return nil;
    }
    NSMutableArray *tempArray = [NSMutableArray array];

    //到指定目录
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    bundleURL = [bundleURL URLByAppendingPathComponent:@"FFAuthorKit"];
    bundleURL = [bundleURL URLByAppendingPathExtension:@"framework"];
    if (bundleURL) {
        NSBundle *imgBundle = [NSBundle bundleWithURL:bundleURL];
        bundleURL = [imgBundle URLForResource:@"FFAuthorKit" withExtension:@"bundle"];
        if (bundleURL) {
            NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
            NSString *path = [bundle pathForResource:@"author_page" ofType:@"json"];
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
    
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"author_page" ofType:@"json"];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
//    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//
//    NSMutableArray *tempArray = [NSMutableArray array];
//    for (NSDictionary *dict in jsonDict[@"result"]) {
//        NSDictionary *dataDict = [reformer reformData:dict];
//        [tempArray addObject:dataDict];
//    }
//    return tempArray.copy;
}

@end
