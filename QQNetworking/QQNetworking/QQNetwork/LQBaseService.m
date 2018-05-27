//
//  LQBaseService.m
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "LQBaseService.h"

@implementation LQBaseService


/** 判断 **/
+ (NSString *)requestURLWithPath:(NSString *)path {
    
    NSString *requestURL = [NSString stringWithString:LBaseRequestHost];
    if (path && (path.length > 0)) {
        requestURL = [requestURL stringByAppendingString:path];
    }
    return requestURL;
}

+ (NSString *)requestFinishWithCode:(LQServiceSuccessCode)code
{
    switch (code) {
        case LQService_Success:
        {
            return LServiceSuccessMessage;
            break;
        }
        case LQService_Error:
        {
            return LServiceErrorMessage;
            break;
        }
        default:
            
            break;
    }
}
+ (NSString *)requestErrorStatueCode:(NSInteger )code
{
    switch (code) {
        case LQErrorCancelled:
            return LRequest_Cancelled;
            
        case LQErrorTimedOut:
            return LRequest_TimedOut;
            
        case LQErrorCannotFindHost:
            return LRequest_CannotFindHost;
            
        case LQErrorCannotConnectToHost:
            return LRequest_CannotConnectToHost;
            
        case LQErrorNetworkConnectionLost:
            return LRequest_NetworkConnectionLost;
            
        case LQErrorDNSLookupFailed:
            return LRequest_DNSLookupFailed;
            
        case LQErrorHTTPTooManyRedirects:
            return LRequest_HTTPTooManyRedirects;
            
        case LQErrorNotConnectedToInternet:
            return LRequest_NotConnectedToInternet;
            
        case LQErrorUserCancelledAuthentication:
            return LRequest_UserCancelledAuthentication;
            
        case LQErrorUserAuthenticationRequired:
            return LRequest_UserAuthenticationRequired;
            
        default: return [NSHTTPURLResponse localizedStringForStatusCode:code];
    }
}

@end
