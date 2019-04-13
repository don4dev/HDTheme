//
//  HDThemeManager.m
//  HDThemeExample
//
//  Created by Don on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "HDThemeManager.h"
#import "HDViewControllerStore.h"
#import "UIView+HDTheme.h"

static NSString * const kThemeName = @"HDTheme.themeName";

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

- (void)changeThemeWithThemeName:(NSString *)themeName {
    [[NSUserDefaults standardUserDefaults] setObject:themeName forKey:kThemeName];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NSString *themeURLString = [[NSBundle mainBundle] pathForResource:themeName ofType:@"plist"];
    
    NSDictionary *theme = [NSDictionary dictionaryWithContentsOfFile:themeURLString];
    
    if (theme) {
        self.theme = theme;
        
        for (UIViewController *controller in [HDViewControllerStore shareInstance].controllers) {
            [self changeThemeInView:controller.view];
        }
    }
    else {
        NSLog(@"Parse plist file failed");
    }
}

- (void)changeThemeInView:(UIView *)view {
    NSArray *subviews = [view subviews];
    
    if ([subviews count] == 0) return;
    
    for (UIView *subview in view.subviews) {
        [self changeThemeOfView:subview];
        
        [self changeThemeInView:subview];
    }
}

- (void)changeThemeOfView:(UIView *)view {
    NSString *className = NSStringFromClass([view class]);
    NSDictionary *classThemeInfos = self.theme[className];
    if (classThemeInfos) {
        NSString *themeType = view.themeType;
        
        NSDictionary *themeTypeInfo = classThemeInfos[themeType];
        
        if (themeTypeInfo) {
            [view changeThemeWithInfo:themeTypeInfo];
        }
    }
}

- (NSDictionary *)theme {
    if (!_theme) {
        NSString *themeName = [[NSUserDefaults standardUserDefaults] stringForKey:kThemeName];
        
        NSString *themeURLString = [[NSBundle mainBundle] pathForResource:themeName ofType:@"plist"];
        
        NSDictionary *theme = [NSDictionary dictionaryWithContentsOfFile:themeURLString];
        
        _theme = theme;
    }
    return _theme;
}

@end
