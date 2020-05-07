//
//  CTMediator+Special.h
//  AFNetworking
//
//  Created by 张文军 on 2020/4/24.
//

#import <UIKit/UIKit.h>

#import <CTMediator/CTMediator.h>

#import <FFAPIs/FFAPIs-umbrella.h>


NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Special)

- (UIViewController *)specialDetailController;

- (NSDictionary *)specialReformerWithOriginData:(NSDictionary *)data;

- (NSDictionary *)specialReformer;

- (APIRequest *)specialAPIRequest;

@end

NS_ASSUME_NONNULL_END
