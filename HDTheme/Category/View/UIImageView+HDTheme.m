//
//  UIImageView+HDTheme.m
//  HDThemeExample
//
//  Created by Don on 2019/4/13.
//  Copyright © 2019 Don. All rights reserved.
//

#import "UIImageView+HDTheme.h"
#import "UIView+HDTheme.h"

static NSString * const kImageViewThemeImage = @"image";
static NSString * const kImageViewThemeHighlightedImage = @"highlightedImage";

@implementation UIImageView (HDTheme)

- (void)changeThemeWithInfo:(NSDictionary *)themeInfo {
    [super changeThemeWithInfo:themeInfo];
    
    NSString *imageName = themeInfo[kImageViewThemeImage];
    
    if (imageName) {
        self.image = [UIImage imageNamed:imageName];
    }
    
    NSString *highlightedImageName = themeInfo[kImageViewThemeHighlightedImage];
    
    if (highlightedImageName) {
        self.highlightedImage = [UIImage imageNamed:highlightedImageName];
    }
}

@end
