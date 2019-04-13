//
//  NSObject+Swizzle.h
//  HDThemeExample
//
//  Created by Don on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Swizzle)

+ (void)swizzleOriginSelector:(SEL)originSelector withSwizzledSelector:(SEL)swizzledSelector;

@end

NS_ASSUME_NONNULL_END
