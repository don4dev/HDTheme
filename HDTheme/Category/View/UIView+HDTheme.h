//
//  UIView+HDTheme.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Extension.h"

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE

@interface UIView (HDTheme)

@property(nonatomic, copy) IBInspectable NSString *themeType;

- (void)changeThemeWithInfo:(NSDictionary *)themeInfo;

@end

NS_ASSUME_NONNULL_END
