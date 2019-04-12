//
//  HDViewControllerStore.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "HDViewControllerStore.h"

@interface HDViewControllerStore ()

//@property(nonatomic, strong) NSMutableArray<UIViewController *> *controllers;
@property(nonatomic, strong) NSPointerArray *controllers;

@end

@implementation HDViewControllerStore

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static HDViewControllerStore *store;
    dispatch_once(&onceToken, ^{
        store = [[HDViewControllerStore alloc] init];
    });
    return store;
}

- (NSPointerArray *)controllers {
    if (!_controllers) {
        _controllers = [[NSPointerArray alloc] initWithOptions:NSPointerFunctionsWeakMemory];
    }
    return _controllers;
}

- (void)addController:(UIViewController *)controller {
    [self.controllers addPointer:(__bridge void * _Nullable)(controller)];
}

@end
