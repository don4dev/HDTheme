//
//  UILabel+HDTheme.m
//  HDThemeExample
//
//  Created by Don on 2019/4/12.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UILabel+HDTheme.h"
#import "UIView+HDTheme.h"

static NSString * const kLabelThemeFont = @"fontName";
static NSString * const kLabelThemeFontSize = @"fontSize";
static NSString * const kLabelThemeTextColor = @"textColor";

@implementation UILabel (HDTheme)

- (void)changeThemeWithInfo:(NSDictionary *)themeInfo {
    [super changeThemeWithInfo:themeInfo];
    
    NSString *fontName = themeInfo[kLabelThemeFont];
    
    if (fontName) {
        NSString *fontSizeString = themeInfo[kLabelThemeFontSize];
        CGFloat fontSize = fontSizeString ? [fontSizeString floatValue] : 14.0;
        self.font = [UIFont fontWithName:fontName size:fontSize];
    }
    
    NSString *textColorString = themeInfo[kLabelThemeTextColor];
    if (textColorString) {
        UIColor *color = [UIColor colorWithHexStringRGBA:textColorString];
        self.textColor = color;
    }
}

@end
