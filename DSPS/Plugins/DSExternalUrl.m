/*
 *******************************************************************************
 *
 * Copyright (C) 2016 Dialog Semiconductor, unpublished work. This computer
 * program includes Confidential, Proprietary Information and is a Trade
 * Secret of Dialog Semiconductor. All use, disclosure, and/or reproduction
 * is prohibited unless authorized in writing. All Rights Reserved.
 *
 * bluetooth.support@diasemi.com
 *
 *******************************************************************************
 */

#import "DSExternalUrl.h"

@implementation DSExternalUrl

- (void)open:(CDVInvokedUrlCommand*)command
{
    // Open URL
    NSString* url = [command argumentAtIndex:0];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    // Return OK
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
