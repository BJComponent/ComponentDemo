//
//  Target_Special.h
//  AFNetworking
//
//  Created by 张文军 on 2020/4/24.
//

#import <Foundation/Foundation.h>
#import <FFAPIs/FFAPIs-umbrella.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Special : NSObject

- (UIViewController *)Action_specialDetailViewController:(NSDictionary *)params;

- (NSDictionary *)Action_specialReformerWithOriginData:(NSDictionary *)params;

- (NSDictionary *)Action_specialReformer:(NSDictionary *)params;

- (APIRequest *)Action_specialAPIRequest:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
