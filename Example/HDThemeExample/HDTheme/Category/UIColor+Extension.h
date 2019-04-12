//
//  UIColor+Extension.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/12.
//  Copyright © 2019 Don. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)


/**
 NSString转UIColor
 

 @param hexStringRGBA NSString字符串格式为#开头的长度为9的16进制符号，或不带#开头的长度为8的16进制符号，大小写不敏感。如@"#Fed132"、@"ABC123"等
 @return return UIColor
 */
+ (UIColor *)colorWithHexStringRGBA:(NSString *)hexStringRGBA;

@end

NS_ASSUME_NONNULL_END
