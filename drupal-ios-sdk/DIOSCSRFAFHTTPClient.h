//
//  DIOSCSRFAFHTTPClient.h
//  WalkthroughAcquia
//
//  Created by Zoltán Váradi on 7/3/13.
//  Copyright (c) 2013 Zoltán Váradi. All rights reserved.
//

#import "AFHTTPClient.h"

@interface DIOSCSRFAFHTTPClient : AFHTTPClient

- (NSString*)getCSRFToken;
-(void)getCSRFTokenWithSuccess:(void (^)(NSString *csrfToken))success
                       failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
@end
