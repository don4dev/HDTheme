//
//  UIColor+Extension.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/12.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)colorWithHexStringRGBA:(NSString *)hexStringRGBA {
    
    if(!hexStringRGBA || [hexStringRGBA isKindOfClass:[NSNull class]]){
        return [UIColor blackColor];
    }
    
    hexStringRGBA = [[hexStringRGBA stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // 字符串长度是8或9(如果带#)
    if ([hexStringRGBA length] < 8)
        return [UIColor blackColor];
    
    // 判断是否第一个字符为#，是的话去掉
    if ([hexStringRGBA hasPrefix:@"#"])
        hexStringRGBA = [hexStringRGBA substringFromIndex:1];
    
    // 判断是否只有8个字符长度
    if ([hexStringRGBA length] != 8)
        return [UIColor blackColor];
    
    // 分割为r、g、b、a四个子串
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    NSString *rString = [hexStringRGBA substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [hexStringRGBA substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [hexStringRGBA substringWithRange:range];
    
    range.location = 6;
    NSString *aString = [hexStringRGBA substringWithRange:range];
    
    // 扫描获取r、g、b、a的值
    unsigned int r, g, b, a;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    [[NSScanner scannerWithString:aString] scanHexInt:&a];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:((float) a / 255.0f)];
}

@end
