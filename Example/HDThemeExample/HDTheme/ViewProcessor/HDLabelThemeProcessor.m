//
//  HDLabelThemeProcessor.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import "HDLabelThemeProcessor.h"

@implementation HDLabelThemeProcessor

- (void)processView:(UIView *)view withThemeModel:(HDThemeModel *)themeModel {
    if (![view isKindOfClass:[UILabel class]]) {
        return;
    }
//    NSAssert(<#condition#>, <#desc, ...#>)
    
    UILabel *label = (UILabel *)view;
    
}

@end
