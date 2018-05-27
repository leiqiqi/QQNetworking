//
//  LQBaseService.h
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LQServiceHeader.h"



@interface LQBaseService : NSObject
// 返回路径
+ (NSString *)requestURLWithPath:(NSString *)path;


/***
 请求返回状态处理
 ***/

// 请求成功后返回message  0和1
+ (NSString *)requestFinishWithCode:(LQServiceSuccessCode)code;

// 请求失败后返回message  非0和非1
+ (NSString *)requestErrorStatueCode:(NSInteger )code;

@end
