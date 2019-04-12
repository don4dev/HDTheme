//
//  HDThemeModel.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HDThemeItem;

NS_ASSUME_NONNULL_BEGIN

@interface HDThemeModel : NSObject

@property(nonatomic, strong) Class class;

@property(nonatomic, copy) NSDictionary<NSString *, HDThemeItem *> *themeItems;

@end

NS_ASSUME_NONNULL_END
