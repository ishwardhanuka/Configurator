//
//  AppDelegate.h
//  sq
//
//  Created by Tegan Tang on 7/14/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class TabBarController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) TabBarController *tabBarController;

@end
