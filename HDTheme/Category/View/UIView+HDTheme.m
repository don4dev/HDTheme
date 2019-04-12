//
//  UIView+HDTheme.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UIView+HDTheme.h"
#import "HDThemeManager.h"
#import <objc/runtime.h>
#import "NSObject+Swizzle.h"

static NSString * const kViewThemeBackgroundColor = @"backgroundColor";

@implementation UIView (HDTheme)

+ (void)load {
    [self _swizzleInitWithFrame];
    
    [self _swizzleInitWithCoder];
}

- (void)setThemeType:(NSString *)themeType {
    objc_setAssociatedObject(self, (__bridge const void * _Nonnull)(self), themeType, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)themeType {
    NSString *themeType = objc_getAssociatedObject(self, (__bridge const void * _Nonnull)(self));
    return themeType;
}

#pragma mark - Public method

- (void)changeThemeWithInfo:(NSDictionary *)themeInfo {
    NSString *colorString = themeInfo[kViewThemeBackgroundColor];
    if (colorString) {
        UIColor *color = [UIColor colorWithHexStringRGBA:colorString];
        self.backgroundColor = color;
    }
}

#pragma mark - Swizzle method

- (instancetype)hd_initWithCoder:(NSCoder *)aDecoder {
    UIView *instance = [self hd_initWithCoder:aDecoder];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[HDThemeManager defaultManager] changeThemeOfView:instance];
    });
    
    return instance;
}

- (instancetype)hd_initWithFrame:(CGRect)frame {
    UIView *instance = [self hd_initWithFrame:frame];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[HDThemeManager defaultManager] changeThemeOfView:instance];
    });
    
    return instance;
}

#pragma mark - Private method

+ (void)_swizzleInitWithFrame {
    SEL originSelector = @selector(initWithFrame:);
    SEL swizzledSelector = @selector(hd_initWithFrame:);
    
    [self swizzleOriginSelector:originSelector withSwizzledSelector:swizzledSelector];
}

+ (void)_swizzleInitWithCoder {
    SEL originSelector = @selector(initWithCoder:);
    SEL swizzledSelector = @selector(hd_initWithCoder:);
    
    [self swizzleOriginSelector:originSelector withSwizzledSelector:swizzledSelector];
}

@end
