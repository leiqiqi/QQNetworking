//
//  LQServiceHeader.h
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#ifndef LQServiceHeader_h
#define LQServiceHeader_h


//请求返回结果信息
typedef void (^LQServiceCallback) (BOOL success, id result, NSString *message);


static NSString *const LBaseRequestHost = @"http://api.zhxcloud.com/";



//  success后状态
typedef NS_ENUM(NSUInteger, LQServiceSuccessCode) {
    LQService_Success   = 1,
    LQService_Error     = 0
};

static NSString *const LServiceSuccessMessage = @"请求成功";
static NSString *const LServiceErrorMessage =   @"请求失败";



// failure 状态code
typedef NS_ENUM(NSUInteger, LQServiceErrorCode){
    LQErrorCancelled =                    -999,
    LQErrorTimedOut =                    -1001,
    LQErrorCannotFindHost =              -1003,
    LQErrorCannotConnectToHost =         -1004,
    LQErrorNetworkConnectionLost =       -1005,
    LQErrorDNSLookupFailed =             -1006,
    LQErrorHTTPTooManyRedirects =        -1007,
    LQErrorNotConnectedToInternet =      -1009,
    LQErrorUserCancelledAuthentication = -1012,
    LQErrorUserAuthenticationRequired =  -1013

};

/*** 请求失败返回值 */
static NSString *const LRequest_Cancelled =                    @"请求取消";
static NSString *const LRequest_TimedOut =                     @"请求超时,请检查网络";
static NSString *const LRequest_CannotFindHost =               @"未发现服务器";
static NSString *const LRequest_CannotConnectToHost =          @"未连接到服务器";
static NSString *const LRequest_NetworkConnectionLost =        @"";
static NSString *const LRequest_DNSLookupFailed =              @"连接服务器失败";
static NSString *const LRequest_HTTPTooManyRedirects =         @"请求重定向次数过多";
static NSString *const LRequest_NotConnectedToInternet =       @"无网络连接，请检查网络";
static NSString *const LRequest_UserCancelledAuthentication =  @"";
static NSString *const LRequest_UserAuthenticationRequired =   @"验证失败";



#ifndef WeakSelf
#define WeakSelf(self) \
__weak typeof(self) weakSelf = self;
#endif

#ifndef StrongSelf
#define StrongSelf(weakSelf) \
__strong typeof(weakSelf) strongSelf = weakSelf;
#endif





#endif /* LQServiceHeader_h */
