//
//  ViewController.m
//  HDThemeExample
//
//  Created by Don on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "ViewController.h"
#import "HDThemeManager.h"
#import "UIView+HDTheme.h"

@interface ViewController ()

@property(nonatomic, assign) BOOL isTheme;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)changeTheme:(id)sender {
    self.isTheme = !self.isTheme;
    if (self.isTheme) {
        [[HDThemeManager defaultManager] changeThemeWithThemeName:@"theme1"];
    }
    else {
        [[HDThemeManager defaultManager] changeThemeWithThemeName:@"theme"];
    }
}



@end
