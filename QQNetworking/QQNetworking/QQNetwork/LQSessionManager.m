//
//  LQSessionManager.m
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "LQSessionManager.h"

//标准化
static NSString *BaseURL  = @"http://apis.baidu.com/apistore";

static float const LQTimeoutInterval = 10.f;

@implementation LQSessionManager

+ (instancetype)sharedClient
{
    static LQSessionManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[LQSessionManager alloc]initWithBaseURL:[NSURL URLWithString:BaseURL]];
    });
    
    return manager;
}
/* 重写父类方法直接初始化(大属性建议写在初始化里面 )AFHTTPSessionManager */
-(instancetype)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if (self) {
        
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", @"text/plain", nil];
        self.requestSerializer .timeoutInterval = LQTimeoutInterval;
        
    }
    return self;
    
}

@end
