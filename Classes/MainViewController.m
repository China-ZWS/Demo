//
//  MainViewController.m
//  Demo
//
//  Created by 周文松 on 15/10/24.
//  Copyright © 2015年 TalkWeb. All rights reserved.
//

#import "MainViewController.h"
#import "BaseNavigationBar.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    if ((self = [super init]))
    {
        [self.navigationItem setNewTitle:@"意见反馈"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 100);
    btn.backgroundColor = [UIColor yellowColor];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(eventWithLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)eventWithLogin
{
    [self gotoLogingWithSuccess:^(BOOL isSuccess)
     {
         if (isSuccess)
         {
             [self makeToast:@"登录成功"];
         }
     }class:@"LoginViewController"];
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
