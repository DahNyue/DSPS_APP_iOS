//
//  Echo.h
//  DSPS
//
//  Created by app.hanbat on 2017. 10. 30..
//  Copyright © 2017년 Dialog Semiconductor. All rights reserved.
//

#ifndef Echo_h
#define Echo_h

#import <Cordova/CDVPlugin.h>

@interface Echo : CDVPlugin

- (void)echo:(CDVInvokedUrlCommand*)command;

@end

#endif /* Echo_h */
