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

#import <Cordova/CDVPlugin.h>

@interface DSAppInfo : CDVPlugin

- (void)getVersion:(CDVInvokedUrlCommand*)command;

@end
