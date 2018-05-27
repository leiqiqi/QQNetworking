//
//  LQNetwork.m
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "LQNetwork.h"

@implementation LQNetwork

/*****************************************GET**********************************************/

+ (void)getDataWithURLString:(NSString *)URLString
                  WithParams:(id)params
                 finishBlock:(LQServiceCallback )finish;
{
    [[LQSessionManager sharedClient] GET:URLString parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        //进度条加载
        //CGFloat progress = downloadProgress.completedUnitCount / downloadProgress.totalUnitCount;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        /* 我认为这样取值安全性高于 responseObject[@"result"] */
        NSInteger result = [[responseObject objectForKey:@"result"] integerValue];
        /* result 状态为0和1*/
        if (result == 1) {
            id content = [responseObject objectForKey:@"content"];
            NSLog(@"S+++++++++++++++%@", [LQBaseService requestFinishWithCode:LQService_Success]);
            finish(YES, content, [LQBaseService requestFinishWithCode:LQService_Success]);
        }else{
            NSLog(@"E---------------%@", [LQBaseService requestFinishWithCode:LQService_Error]);
            finish(NO, nil, [LQBaseService requestFinishWithCode:LQService_Error]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        /* failure状态下的错误信息  */
        NSLog(@"F---------------%@", [LQBaseService requestErrorStatueCode:error.code]);
        finish(NO, nil, [LQBaseService requestErrorStatueCode:error.code]);
    }];
}

/*****************************************POST**********************************************/

+ (void)postDataWithURLString:(NSString *)URLString
                   WithParams:(id)params
                  finishBlock:(LQServiceCallback )finish
{
    
    [[LQSessionManager sharedClient] POST:URLString parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSInteger result = [[responseObject objectForKey:@"result"] integerValue];
        /* result 状态为0和1*/
        if (result == 1) {
            id content = [responseObject objectForKey:@"content"];
            NSLog(@"S+++++++++++++++%@", [LQBaseService requestFinishWithCode:LQService_Success]);
            finish(YES, content, [LQBaseService requestFinishWithCode:LQService_Success]);
        }else{
            NSLog(@"E---------------%@", [LQBaseService requestFinishWithCode:LQService_Error]);
            finish(NO, nil, [LQBaseService requestFinishWithCode:LQService_Error]);
        }

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        /* failure状态下的错误信息  */
        NSLog(@"F---------------%@", [LQBaseService requestErrorStatueCode:error.code]);
        finish(NO, nil, [LQBaseService requestErrorStatueCode:error.code]);

    }];
    
}

/*******************************************上传图片********************************************/

+(void)uploadImageWithImageArray:(NSArray *)imageArray
                   withURLString:(NSString *)URLlString
                      WithParams:(id)params
                     finishBlock:(LQServiceCallback )finish
{
    [[LQSessionManager sharedClient] POST:URLlString parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        /**出于性能考虑,根据需求是否将上传图片进行压缩*/
        [imageArray enumerateObjectsUsingBlock:^(id  _Nonnull image, NSUInteger idx, BOOL * _Nonnull stop) {
            /* png格式 */
            NSData * imgData = UIImagePNGRepresentation(image);
            NSString *imageNames = [NSString stringWithFormat:@"wlm%ld",idx];
            [formData appendPartWithFileData:imgData name:imageNames fileName:@"image.png" mimeType:@"image/png"];
        }];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSInteger result = [[responseObject objectForKey:@"result"] integerValue];
        /* result 状态为0和1*/
        if (result == 1) {
            id content = [responseObject objectForKey:@"content"];
            NSLog(@"S+++++++++++++++%@", [LQBaseService requestFinishWithCode:LQService_Success]);
            finish(YES, content, [LQBaseService requestFinishWithCode:LQService_Success]);
        }else{
            NSLog(@"E---------------%@", [LQBaseService requestFinishWithCode:LQService_Error]);
            finish(NO, nil, [LQBaseService requestFinishWithCode:LQService_Error]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        /* failure状态下的错误信息  */
        NSLog(@"F---------------%@", [LQBaseService requestErrorStatueCode:error.code]);
        finish(NO, nil, [LQBaseService requestErrorStatueCode:error.code]);
        
    }];
}




@end
