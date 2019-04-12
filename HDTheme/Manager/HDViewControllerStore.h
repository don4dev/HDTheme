//
//  HDViewControllerStore.h
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HDViewControllerStore : NSObject

@property(nonatomic, strong, readonly) NSPointerArray *controllers;

+ (instancetype)shareInstance;

- (void)addController:(UIViewController *)controller;

@end

NS_ASSUME_NONNULL_END
