//
//  HDViewThemeProcessor.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/11.
//  Copyright © 2019 Don. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDThemeModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol HDViewThemeProcessor <NSObject>

- (void)processView:(UIView *)view withThemeModel:(HDThemeModel *)themeModel;

@end

NS_ASSUME_NONNULL_END
