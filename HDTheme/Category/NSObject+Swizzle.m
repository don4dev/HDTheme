//
//  NSObject+Swizzle.m
//  HDThemeExample
//
//  Created by Don on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import "NSObject+Swizzle.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzle)

+ (void)swizzleOriginSelector:(SEL)originSelector withSwizzledSelector:(SEL)swizzledSelector {
    Method originMethod = class_getInstanceMethod(self, originSelector);
    Method swizzledMethod = class_getInstanceMethod(self, swizzledSelector);
    
    method_exchangeImplementations(originMethod, swizzledMethod);
}

@end
