//
//  ViewController.m
//  HDThemeExample
//
//  Created by hedong on 2019/4/10.
//  Copyright © 2019 Don. All rights reserved.
//

#import "ViewController.h"
#import "HDThemeManager.h"
#import "UIView+HDTheme.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[HDThemeManager defaultManager] loadTheme:@"theme1"];
    
//    self.label1.themeType = @"1";
}

- (IBAction)changeTheme:(id)sender {
    [[HDThemeManager defaultManager] changeTheme];
}



@end
