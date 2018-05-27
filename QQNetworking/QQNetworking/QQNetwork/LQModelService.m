//
//  LQModelService.m
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "LQModelService.h"

@implementation LQModelService


/**********************  ——————————————饼图网络请求—————————————— ********************/
- (void)getRequestPieData: (LQServiceCallback)finished
{
    [LQNetwork getDataWithURLString:[LQBaseService requestURLWithPath:PieData_URL] WithParams:nil finishBlock:^(BOOL success, id result, NSString *message) {
        if (success) {
            finished(success, result, message);
            self.loginModel = [LQLoginModel yy_modelWithDictionary:result];

        }
        else{
            finished(success, result, message);

        }
    }];
}

/**********************  ——————————————登录请求———————————— ********************/
- (void)loginWithUserName:(NSString *)userName password:(NSString *)password finished:(LQServiceCallback)finished
{
    NSDictionary *params = @{@"userName": userName,
                             @"password": password};
    [LQNetwork getDataWithURLString:@"" WithParams:params finishBlock:^(BOOL success, id result, NSString *message) {
        if (success) {
            
            finished(success, result, message);
        }
        else{
            finished(success, result, message);

        }
    }];

}
/**********************  ————————————————上传头像——————————————————  ********************/

-(void)uploadImageWithImageArray:(NSArray *)imageArray finished:(LQServiceCallback)finished
{
    [LQNetwork uploadImageWithImageArray:imageArray withURLString:@"http://zhxcloud.com/login/upload.action?usercode=bytest@163.com" WithParams:nil finishBlock:^(BOOL success, id result, NSString *message) {
        if (success) {
            
            finished(success, result, message);
        }
        else{
            finished(success, result, message);
            
        }
    }];
}

@end
