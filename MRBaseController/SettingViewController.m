//
//  SettingViewController.m
//  MRBaseController
//
//  Created by MrXir on 2017/7/10.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "SettingViewController.h"

#import "MySettingViewController.h"

#import <MRUIKit.h>

@interface SettingViewController ()

@property (nonatomic, weak) IBOutlet UIButton *mySettingButton;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    [self.mySettingButton handleWithEvents:UIControlEventTouchUpInside completion:^(__kindof UIControl *control) {
        
        MySettingViewController *vc = [MySettingViewController matchControllerForMyself];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        
    }];
    
    
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
