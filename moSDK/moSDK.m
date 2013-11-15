//
//  moSDK.m
//  moSDK
//
//  Created by keithyau on 11/14/13.
//  Copyright (c) 2013 keithyau. All rights reserved.
//

#import "moSDK.h"
#import <UIKit/UIKit.h>

// moSDK init functions like generate oauth header, tokenid register
// *** no logout concept, parse got logout
//

@implementation moSDK

@synthesize consumerKey, consumerSecret;

// Init everything neede for moSDK
+ (DIOSSession *) moInit {
    
    //Init Oauth header
    DIOSSession *moSession = [self moSessionInit:@"http://dev-oapi.mobingi.com/test" consumerKey:@"suhWgG9GEMe9tAo2EneBBDVXAnpkXd9j" secret:@"ht9mQMR2n2cKrtjknH9gWyMrzq4YPMao"];
    
    //Register Device token by AWS SDK
    [self moDeviceTokenRegister];
    
    //Test the connection
    
    return moSession;
}

+ (DIOSSession *) moSessionInit:(NSString*)url consumerKey:(NSString *)aConsumerKey secret:(NSString *)aConsumerSecret {
    
    DIOSSession *session = [DIOSSession sharedOauthSessionWithURL:url consumerKey:aConsumerKey secret:aConsumerSecret];
    return session;
}

//Register device token by AWS SNS SDK
+ (void ) moDeviceTokenRegister {
    
}

//Init local db

//Register device to mobingi by openudid/applicationId
//https://github.com/ylechelle/OpenUDID

//Create S3 storage folder by AWS S3 SDK

@end