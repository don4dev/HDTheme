//
//  UIButton+HDTheme.m
//  HDThemeExample
//
//  Created by Don on 2019/4/13.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UIButton+HDTheme.h"
#import "UIView+HDTheme.h"

// 按钮图片
static NSString * const kButtonThemeNormalImage = @"normalImage";
static NSString * const kButtonThemeHighlightedImage = @"highlightedImage";
static NSString * const kButtonThemeDisabledImage = @"disabledImage";
static NSString * const kButtonThemeSelectedImage = @"selectedImage";
static NSString * const kButtonThemeFocusedImage = @"focusedImage";

// 按钮背景图
static NSString * const kButtonThemeNormalBackgroundImage = @"normalBackgroundImage";
static NSString * const kButtonThemeHighlightedBackgroundImage = @"highlightedBackgroundImage";
static NSString * const kButtonThemeDisabledBackgroundImage = @"disabledBackgroundImage";
static NSString * const kButtonThemeSelectedBackgroundImage = @"selectedBackgroundImage";
static NSString * const kButtonThemeFocusedBackgroundImage = @"focusedBackgroundImage";

@implementation UIButton (HDTheme)

- (void)changeThemeWithInfo:(NSDictionary *)themeInfo {
    [super changeThemeWithInfo:themeInfo];
    
    [self changeImageWithInfo:themeInfo];
    
    [self changeBackgroundImageWithInfo:themeInfo];
}

- (void)changeImageWithInfo:(NSDictionary *)themeInfo {
    NSString *normalImageName = themeInfo[kButtonThemeNormalImage];
    if (normalImageName) {
        [self setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    }
    
    NSString *highlightedImageName = themeInfo[kButtonThemeHighlightedImage];
    if (highlightedImageName) {
        [self setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    }
    
    NSString *disabledImageName = themeInfo[kButtonThemeDisabledImage];
    if (disabledImageName) {
        [self setImage:[UIImage imageNamed:disabledImageName] forState:UIControlStateDisabled];
    }
    
    NSString *selectedImageName = themeInfo[kButtonThemeSelectedImage];
    if (selectedImageName) {
        [self setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    }
    
    NSString *focusedImageName = themeInfo[kButtonThemeFocusedImage];
    if (focusedImageName) {
        [self setImage:[UIImage imageNamed:focusedImageName] forState:UIControlStateFocused];
    }
}

- (void)changeBackgroundImageWithInfo:(NSDictionary *)themeInfo {
    NSString *normalBackgroundImageName = themeInfo[kButtonThemeNormalBackgroundImage];
    if (normalBackgroundImageName) {
        [self setBackgroundImage:[UIImage imageNamed:normalBackgroundImageName] forState:UIControlStateNormal];
    }
    
    NSString *highlightedBackgroundImageName = themeInfo[kButtonThemeHighlightedBackgroundImage];
    if (highlightedBackgroundImageName) {
        [self setBackgroundImage:[UIImage imageNamed:highlightedBackgroundImageName] forState:UIControlStateHighlighted];
    }
    
    NSString *disabledBackgroundImageName = themeInfo[kButtonThemeDisabledBackgroundImage];
    if (disabledBackgroundImageName) {
        [self setBackgroundImage:[UIImage imageNamed:disabledBackgroundImageName] forState:UIControlStateDisabled];
    }
    
    NSString *selectedBackgroundImageName = themeInfo[kButtonThemeSelectedBackgroundImage];
    if (selectedBackgroundImageName) {
        [self setBackgroundImage:[UIImage imageNamed:selectedBackgroundImageName] forState:UIControlStateSelected];
    }
    
    NSString *focusedBackgroundImageName = themeInfo[kButtonThemeFocusedBackgroundImage];
    if (focusedBackgroundImageName) {
        [self setBackgroundImage:[UIImage imageNamed:focusedBackgroundImageName] forState:UIControlStateFocused];
    }
}

@end
