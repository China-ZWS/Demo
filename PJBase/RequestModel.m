//
//  RequestModel.m
//  Demo
//
//  Created by 周文松 on 15/10/24.
//  Copyright © 2015年 TalkWeb. All rights reserved.
//

#import "RequestModel.h"

@implementation RequestModel

+ (void )createData:(NSString *)responseString success:(void (^)(id data))success failure:(void (^)(NSString *msg, NSString *state))failure;
{
    NSLog(@"%@",responseString);
    NSData *data=[responseString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSString * code = dict[@"code"];
    
    NSString *msg = dict[@"note"];
    
    if ([code isEqualToString:@"000"])
    {
        success(dict);
    }
    else
    {
        failure(msg,@"0");
    }
}

@end
