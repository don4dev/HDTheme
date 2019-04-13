//
//  UIViewController+HDTheme.m
//  HDThemeExample
//
//  Created by Don on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UIViewController+HDTheme.h"
#import "HDViewControllerStore.h"
#import "NSObject+Swizzle.h"

@implementation UIViewController (HDTheme)

+ (void)load {
    SEL originSelector = @selector(viewDidLoad);
    SEL swizzledSelector = @selector(hd_viewDidLoad);
    
    [self swizzleOriginSelector:originSelector withSwizzledSelector:swizzledSelector];
}

- (void)hd_viewDidLoad {
    [[HDViewControllerStore shareInstance] addController:self];
    
    [self hd_viewDidLoad];
}

@end
