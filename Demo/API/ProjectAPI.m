//
//  ProjectAPI.m
//  LotteryUnion
//
//  Created by 周文松 on 15/10/24.
//  Copyright © 2015年 TalkWeb. All rights reserved.
//

#import "ProjectAPI.h"
//TODO:服务器地址选择
#if 0
NSString *const serverUrl = @"http://ip:port/molo/client";
#else
NSString *const serverUrl = @"http://test.caipiaolianmeng.cn:9095";
#endif

@implementation ProjectAPI
+ (NSString *)setUrl:(API_CODE)code ;
{
    NSDictionary *apiPlist = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"action_code_urls" ofType:@"plist"]];
    NSString *actionUrl = [apiPlist objectForKey:[NSString stringWithFormat:@"%d",code]];
   
    NSLog(@"%@", [NSString stringWithFormat:@"%@;jsessionid=%@?",[serverUrl stringByAppendingString:actionUrl],@""]);
    
    return [NSString stringWithFormat:@"%@;jsessionid=%@?",[serverUrl stringByAppendingString:actionUrl],@""]; //响应中都会返回jsessionid参数，客户端需要获取并替换，
//    return [serverUrl stringByAppendingString:actionUrl];
}
@end
