//
//  CTMediator+Ahthor.h
//  AFNetworking
//
//  Created by 张文军 on 2020/4/24.
//


#import <UIKit/UIKit.h>

#import <CTMediator/CTMediator.h>

#import <FFAPIs/FFAPIs-umbrella.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Ahthor)

- (UIViewController *)authorDetailViewController;

- (NSDictionary *)authorReformerWithOriginData:(NSDictionary *)data;

- (NSDictionary *)authorReformer;

- (APIRequest *)authorAPIRequest;

@end

NS_ASSUME_NONNULL_END
