//
//  LQModelService.h
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LQServiceHeader.h"
#import "LQNetwork.h"
#import "LQLoginModel.h"
#import "YYModel.h"
#import "LQServiceURL.h"

@interface LQModelService : NSObject


@property(nonatomic, strong)LQLoginModel *loginModel;

//所有接口可写在这里

- (void)getRequestPieData: (LQServiceCallback)finished;

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password finished:(LQServiceCallback)finished;

-(void)uploadImageWithImageArray:(NSArray *)imageArray finished:(LQServiceCallback)finished;
@end
