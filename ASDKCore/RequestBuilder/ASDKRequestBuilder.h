//
//  ASDKRequestBuilder.h
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

#import <Foundation/Foundation.h>
#import "ASDKApiKeys.h"
#import "ASDKAcquiringRequest.h"
#import "ASDKAcquringSdkError.h"

#define kASDKValidationErrorMaxLengthString @"Максимальная длина"

@interface ASDKRequestBuilder : NSObject

@property (nonatomic, strong) NSString *terminalKey;
@property (nonatomic, strong) NSString *password;

- (ASDKAcquiringRequest *)buildError:(ASDKAcquringSdkError **)error;
- (NSString *)makeToken;


- (NSString *)dataStringFromDictionary:(NSDictionary *)dataDictionary;

@end
