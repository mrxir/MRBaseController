//
//  MRBaseTabBarController.m
//  MRBaseController
//
//  Created by MrXir on 2017/7/10.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "MRBaseTabBarController.h"

@interface MRBaseTabBarController ()

@end

@implementation MRBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (BOOL)shouldAutorotate
{
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([self.selectedViewController respondsToSelector:@selector(supportedInterfaceOrientations)]) {
        return [self.selectedViewController supportedInterfaceOrientations];
    } else {
        UIUserInterfaceIdiom idiom = [[UIDevice currentDevice] userInterfaceIdiom];
        if (idiom == UIUserInterfaceIdiomPad) {
            return UIInterfaceOrientationMaskAll;
        } else {
            return UIInterfaceOrientationMaskPortrait;
        }
    }
    
}

@end
