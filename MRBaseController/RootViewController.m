//
//  RootViewController.m
//  MRBaseController
//
//  Created by MrXir on 2017/7/10.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "RootViewController.h"

#import <UIStoryboard+Extension.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *storyboardNames = @[@"Main",
                                 @"Home",
                                 @"Setting"];
    
    [UIStoryboard setStoryboardNames:storyboardNames];
    
    UINavigationController *home = [[UIStoryboard storyboardWithName:@"Home" bundle:nil] instantiateInitialViewController];
    home.viewControllers.firstObject.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home"
                                                                                image:[UIImage imageNamed:@"home_n"]
                                                                        selectedImage:[UIImage imageNamed:@"home_s"]];
    
    UINavigationController *setting = [[UIStoryboard storyboardWithName:@"Setting" bundle:nil] instantiateInitialViewController];
    setting.viewControllers.firstObject.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Setting"
                                                                                   image:[UIImage imageNamed:@"setting_n"]
                                                                           selectedImage:[UIImage imageNamed:@"setting_s"]];
    
    self.viewControllers = @[home, setting];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
