//
//  HDThemeManager.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "HDThemeManager.h"
#import "HDViewControllerStore.h"
#import "UIView+HDTheme.h"

@interface HDThemeManager ()

@property(nonatomic, strong) NSDictionary *theme;

@end

@implementation HDThemeManager

+ (instancetype)defaultManager {
    static dispatch_once_t onceToken;
    static HDThemeManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[HDThemeManager alloc] init];
    });
    return manager;
}

- (void)loadTheme:(NSString *)themeName {
    NSString *themeURLString = [[NSBundle mainBundle] pathForResource:themeName ofType:@"plist"];
    
    NSDictionary *theme = [NSDictionary dictionaryWithContentsOfFile:themeURLString];
    
    if (theme) {
        self.theme = theme;
    }
    else {
        NSLog(@"Parse plist file failed");
    }
}

- (void)changeTheme {
    for (UIViewController *controller in [HDViewControllerStore shareInstance].controllers) {
        [self changeThemeInView:controller.view];
    }
}

- (void)changeThemeInView:(UIView *)view {
    NSArray *subviews = [view subviews];
    
    if ([subviews count] == 0) return;
    
    for (UIView *subview in view.subviews) {
        NSString *className = NSStringFromClass([subview class]);
        NSDictionary *classThemeInfos = self.theme[className];
        if (classThemeInfos) {
            // 暂时方案
//            NSString *themeType = [NSString stringWithFormat:@"%ld", (long)subview.tag];
            NSString *themeType = subview.themeType;
            
            NSDictionary *themeTypeInfo = classThemeInfos[themeType];
            
            if (themeTypeInfo) {
                [subview changeThemeWithInfo:themeTypeInfo];
            }
        }
        
        [self changeThemeInView:subview];
    }
}

- (NSDictionary *)theme {
    if (!_theme) {
        NSString *themeURLString = [[NSBundle mainBundle] pathForResource:@"theme1" ofType:@"plist"];
        
        NSDictionary *theme = [NSDictionary dictionaryWithContentsOfFile:themeURLString];
        
        _theme = theme;
    }
    return _theme;
}

@end
