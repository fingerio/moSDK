//
//  moSDK.h
//  moSDK
//
//  Created by keithyau on 11/14/13.
//  Copyright (c) 2013 keithyau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DIOSSession.h"

@interface moSDK : NSObject {
    NSString *consumerKey;
    NSString *consumerSecret;
}

@property (nonatomic, retain) NSString *consumerKey;
@property (nonatomic, retain) NSString *consumerSecret;

+ (DIOSSession *) moInit;
+ (DIOSSession *) moSessionInit:(NSString*)url consumerKey:(NSString *)aConsumerKey secret:(NSString *)aConsumerSecret;
+ (void ) moDeviceTokenRegister;


@end
