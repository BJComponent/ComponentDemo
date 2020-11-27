//
//  Target_Author.h
//  AFNetworking
//
//  Created by 张文军 on 2020/4/24.
//

#import <Foundation/Foundation.h>
//#import <FFAPIs/FFAPIs-umbrella.h>
#warning import
#import "FFApis.h"

NS_ASSUME_NONNULL_BEGIN

@interface Target_Author : NSObject

- (UIViewController*)Action_authorDetailViewController:(NSDictionary*)params;

- (NSDictionary*)Action_authorReformerWithOriginData:(NSDictionary*)params;

- (NSDictionary *)Action_authorReformer:(NSDictionary*)params;

- (APIRequest*)Action_authorAPIRequest:(NSDictionary*)params;

@end

NS_ASSUME_NONNULL_END
