//
//  ASDKAcquiringResponse.m
//  ASDKCore
//
// Copyright (c) 2016 TCS Bank
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.



#import "ASDKAcquiringResponse.h"

@implementation ASDKAcquiringResponse

- (BOOL)success
{
    return [_dictionary[kASDKSuccess] boolValue];
}

- (ASDKPaymentStatus)status
{
    if (!_status)
    {
        NSString *status = _dictionary[kASDKStatus];
        
        if ([status isEqualToString:kASDKPaymentStatusNew])
        {
            _status = ASDKPaymentStatus_NEW;
        }
        else if ([status isEqualToString:kASDKPaymentStatusCancelled])
        {
            _status = ASDKPaymentStatus_CANCELLED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusPreauthorizing])
        {
            _status = ASDKPaymentStatus_PREAUTHORIZING;
        }
        else if ([status isEqualToString:kASDKPaymentStatusFormshowed])
        {
            _status = ASDKPaymentStatus_FORMSHOWED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusAuthorizing])
        {
            _status = ASDKPaymentStatus_AUTHORIZING;
        }
        else if ([status isEqualToString:kASDKPaymentStatus3DSChecking])
        {
            _status = ASDKPaymentStatus_3DS_CHECKING;
        }
        else if ([status isEqualToString:kASDKPaymentStatus3DSChecked])
        {
            _status = ASDKPaymentStatus_3DS_CHECKED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusAuthorized])
        {
            _status = ASDKPaymentStatus_AUTHORIZED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusReversing])
        {
            _status = ASDKPaymentStatus_REVERSING;
        }
        else if ([status isEqualToString:kASDKPaymentStatusReversed])
        {
            _status = ASDKPaymentStatus_REVERSED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusConfirming])
        {
            _status = ASDKPaymentStatus_CONFIRMING;
        }
        else if ([status isEqualToString:kASDKPaymentStatusConfirmed])
        {
            _status = ASDKPaymentStatus_CONFIRMED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusRefunding])
        {
            _status = ASDKPaymentStatus_REFUNDING;
        }
        else if ([status isEqualToString:kASDKPaymentStatusRefunded])
        {
            _status = ASDKPaymentStatus_REFUNDED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusRejected])
        {
            _status = ASDKPaymentStatus_REJECTED;
        }
        else if ([status isEqualToString:kASDKPaymentStatusUnknown])
        {
            _status = ASDKPaymentStatus_UNKNOWN;
        }
    }
    
    return _status;
}

- (NSString *)errorCode
{
    if (!_errorCode)
    {
        _errorCode = _dictionary[kASDKErrorCode];
    }
    
    return _errorCode;
}

- (NSString *)message
{
    if (!_message)
    {
        _message = _dictionary[kASDKMessage];
    }
    
    return _message;
}

- (NSString *)details
{
    if (!_details)
    {
        _details = _dictionary[kASDKDetails];
    }
    
    return _details;
}


@end
