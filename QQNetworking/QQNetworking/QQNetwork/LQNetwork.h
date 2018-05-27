//
//  LQNetwork.h
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LQSessionManager.h"
#import "LQBaseService.h"


@interface LQNetwork : NSObject

/*
 *  GET网络请求的实例方法
 *  @param URLString 请求的地址
 *  @param params    请求的参数
 *  @param finishBlock 请求结果回调
 */
+ (void)getDataWithURLString:(NSString *)URLString
                  WithParams:(id)params
                 finishBlock:(LQServiceCallback )finish;


/*
 *  POST网络请求的实例方法
 *  @param URLString    请求的地址
 *  @param params      请求的参数
 *  @param finishBlock 请求结果回调
 */
+ (void)postDataWithURLString:(NSString *)URLString
                   WithParams:(id)params
                  finishBlock:(LQServiceCallback )finish;





/*
 *  上传图片网络请求的实例方法
 *  @param imageArray  上传图片数组
 *  @param URLString    请求的地址
 *  @param finishBlock 请求结果回调

 */
+(void)uploadImageWithImageArray:(NSArray *)imageArray
                   withURLString:(NSString *)URLlString
                      WithParams:(id)params
                     finishBlock:(LQServiceCallback )finish;


@end
