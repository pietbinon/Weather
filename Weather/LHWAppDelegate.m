//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"






@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    LHWCity *brusselsData = [[LHWCity alloc] initWithCityName: @"Brussels" currentTemp: 15 andCurrentWeather: @"Sunny"];
    LHWCity *genevaData = [[LHWCity alloc] initWithCityName: @"Geneva" currentTemp: 12 andCurrentWeather: @"Cloudy"];
    LHWCity *vancouverData = [[LHWCity alloc] initWithCityName: @"Vancouver" currentTemp: 1 andCurrentWeather: @"Snow"];
    LHWCity *seoulData = [[LHWCity alloc] initWithCityName: @"Seoul" currentTemp: 3 andCurrentWeather: @"Unknown"];
    LHWCity *waterlooData = [[LHWCity alloc] initWithCityName: @"Waterloo" currentTemp: 16 andCurrentWeather: @"Partially cloudy"];
    
    
    UITabBarController *tbc = [[UITabBarController alloc] init];

    
    LHWCityViewController *brussels = [[LHWCityViewController alloc] init];
    brussels.data = brusselsData;
//    brussels.title = @"Brussels";
    
    LHWCityViewController *geneva = [[LHWCityViewController alloc] init];
    geneva.data = genevaData;
//    geneva.title = @"Geneva";
    
    LHWCityViewController *vancouver = [[LHWCityViewController alloc] init];
    vancouver.data = vancouverData;
//    vancouver.title = @"Vancouver";
    
    LHWCityViewController *seoul = [[LHWCityViewController alloc] init];
    seoul.data = seoulData;
//    seoul.title = @"Seoul";
    
    LHWCityViewController *waterloo = [[LHWCityViewController alloc] init];
    waterloo.data = waterlooData;
//    waterloo.title = @"Waterloo";
    
    
    UINavigationController *brusselsNvc = [[UINavigationController alloc] initWithRootViewController: brussels];
    UINavigationController *genevaNvc = [[UINavigationController alloc] initWithRootViewController: geneva];
    UINavigationController *vancouverNvc = [[UINavigationController alloc] initWithRootViewController: vancouver];
    UINavigationController *seoulNvc = [[UINavigationController alloc] initWithRootViewController: seoul];
    UINavigationController *waterlooNvc = [[UINavigationController alloc] initWithRootViewController: waterloo];
    
    
    tbc.viewControllers = @[brusselsNvc, genevaNvc, vancouverNvc, seoulNvc, waterlooNvc];
    self.window.rootViewController = tbc;
    self.window.backgroundColor = [UIColor greenColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
