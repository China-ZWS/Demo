//
//  ProjectAPI.h
//  LotteryUnion
//
//  Created by 周文松 on 15/10/24.
//  Copyright © 2015年 TalkWeb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableDictionary+PublicDomain.h"

extern NSString *const serverUrl;



#define kSp_id @"90010" // 渠道ID
#define kTerminal_no @"ios" //终端编号


// MD5盐值
#if 0
#define MD5_MARCO @"agtech_silvercreek_0755_2012" //现场
#else
#define MD5_MARCO @"{moloclient}" //测试
/*--{moloCliend}fjydtc-client-md5-salt--*/
#endif



#define URL(url) [ProjectAPI setUrl:url]

typedef NS_ENUM(NSInteger, API_CODE) // 消息类型码 枚举
{
    kAPI_QueryVersion = 100,  //版本号查询
    kAPI_Register = 101,    //注册
    kAPI_BasicInfoRegister = 102,  //基本信息注册
    kAPI_BasicInfoModify = 103,  //基本信息修改
    kAPI_BankInfoRegister = 104,  //银行信息注册
    kAPI_BankInfoModify = 105,  //银行信息修改
    kAPI_BankInfoQuery = 106,  //银行信息查询
    kAPI_PasswordReset = 113,   //密码重置
    kAPI_GetVCode = 108,   //获取验证码
    
    kAPI_Login = 110,   //登录
    kAPI_Logout = 111,  //退出
    kAPI_ModifyPwd = 112,   //密码修改
    kAPI_ResetPwd = 113,    // 重置密码
    kAPI_QueryAccount = 114,    //查询账户余额
    kAPI_QueryTrade = 115,    //查询账户明细
    kAPI_GetAccountInfo = 116,  //基本信息查询
    
    kAPI_QueryBetRecord = 120,  //查询投注记录
    kAPI_QueryRewardRecord = 121,   //查询中奖记录
    kAPI_QueryRewardNotice = 122,   //查询开奖详情公告
    kAPI_QueryPlayPeriod = 123, //查询玩法期数
    kAPI_QueryFootballVS = 124, //查询足彩对阵
    kAPI_QueryFollowRecord = 125,   //查询追号记录
    kAPI_QueryLuckyRecord = 126,    //查询送幸运记录
    kAPI_QueryRevendList = 127,     //查询开奖公告
    kAPI_GetRevendDetail = 128,     //查询开奖公告详情
    kAPI_QueryTransferMoneyRecord = 129,        //查询转帐记录
    kAPI_QueryXyscMissValue = 130,      //查询幸运赛车遗漏数据
    
    kAPI_BookmarkAdd = 131,           //收藏夹add
    kAPI_BookmarkList = 132,           //收藏夹list
    kAPI_BookmarkDelete = 133,           //收藏夹删除
    
    kAPI_BetAction = 140,           //投注
    kAPI_CancelFollow = 142,        //取消追号
    kAPI_BetCartAction = 143,       // 购物车投注
    kAPI_RandomBetAction = 144,     // 机选投注
    
    kAPI_TransferToMobile = 158,        //转手机支付
    kAPI_TransferToBank = 151,          //转银行卡
    kAPI_PayAli = 152,          //支付宝在线充值  153
    kAPI_PayUpomp = 152,          //银联在线充值  154
    kAPI_Pay_Notify = 155,          //充值结果通知
    kAPI_PayAliWap = 156,          //支付宝wap在线充值
    kAPI_PayUpomp_call = 157,          //银联语音充值
    kAPI_LotteryInformation = 161,      //彩票资讯
    kAPI_LotteryContent = 163,          //资讯内容
    //    kAPI_Trend = 163,                   //走势图
    kAPI_NewsCount = 164,               //查询新资讯数量
    
    kAPI_Feedback = 170,                //意见建议
    kAPI_Help = 171,                    //帮助
    kAPI_City = 172,                    //城市
    kAPI_Xysc_Video = 180
};

@interface ProjectAPI : NSObject
+ (NSString *)setUrl:(API_CODE)code;

@end
