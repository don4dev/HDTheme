//
//  HDThemeManager.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HDThemeManager : NSObject

+ (instancetype)defaultManager;

- (void)loadTheme:(NSString *)themeName;

- (void)changeTheme;

- (void)changeThemeInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
