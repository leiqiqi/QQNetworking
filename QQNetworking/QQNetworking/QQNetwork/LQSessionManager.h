//
//  LQSessionManager.h
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface LQSessionManager : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
