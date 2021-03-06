//
//  ASDKInitRequest.h
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



#import "ASDKAcquiringRequest.h"

@interface ASDKInitRequest : ASDKAcquiringRequest

@property (nonatomic, copy) NSString *payType;
@property (nonatomic, strong) NSNumber *amount;
@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *customerKey;
@property (nonatomic, copy) NSString *requestDescription;
@property (nonatomic, copy) NSString *payForm;
@property (nonatomic) BOOL recurrent;

- (ASDKInitRequest *)initWithTerminalKey:(NSString *)terminalKey
                                  amount:(NSNumber *)amount
                                 orderId:(NSString *)orderId
                             description:(NSString *)description
                                   token:(NSString *)token
                                 payForm:(NSString *)payForm
								 payType:(NSString *)payType
                             customerKey:(NSString *)customerKey
                               recurrent:(BOOL)recurrent;

@end
