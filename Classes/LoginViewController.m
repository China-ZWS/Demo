//
//  LoginViewController.m
//  Demo
//
//  Created by 周文松 on 15/10/24.
//  Copyright © 2015年 TalkWeb. All rights reserved.
//
#import "BaseNavigationBar.h"
#import "LoginViewController.h"
#import "NSMutableDictionary+PublicDomain.h"
#import "ProjectAPI.h"
#import "RequestModel.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)init
{
    if ((self = [super init]))
    {
        [self.navigationItem setNewTitle:@"意见反馈"];
        [self.navigationItem setBackItemWithTarget:self title:@"返回" action:@selector(back) image:@"back.png"];
    }
    return self;
}

- (void)back
{
    [self dismissViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 100);
    btn.backgroundColor = [UIColor yellowColor];
    [btn setTitle:@"请求" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(eventWithLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}


- (void)eventWithLogin
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"pwd"] = md5(@"111111");
    params[@"name"] = @"13600408899";
    params[@"login_type"] = @"0";
    [params setPublicDomain:kAPI_Login];

    _connection = [RequestModel POST:URL(kAPI_Login) parameter:params   class:[RequestModel class]
                             success:^(id data)
                   {
                       [self back];
                   }
                             failure:^(NSString *msg, NSString *state)
                   {
                   
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
