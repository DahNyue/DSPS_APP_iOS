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

#import "SplashViewController.h"
#import "MainViewController.h"
#import "AppDelegate.h"

@interface SplashViewController ()

@property NSTimer *timer;

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(showMain) userInfo:nil repeats:NO];

    UITapGestureRecognizer *detectClick = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClick)];
    [self.view addGestureRecognizer:detectClick];
}

- (void) onClick {
    if (self.timer && self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }
    [self showMain];
}

- (void) showMain {
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    [app getWindow];
    app.viewController = (CDVViewController*)[[MainViewController alloc] init];
    app.window.rootViewController = app.viewController;
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
