//
//  AppDelegate.m
//  converter
//
//  Created by Benoit C on 11/3/13.
//  Copyright (c) 2013 Benoit Caccinolo. All rights reserved.
//

#import "AppDelegate.h"
#import "ContentViewController.h"
#import "LeftViewController.h"
#import "PaperFoldNavigationController.h"
#import "ConverterViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ContentViewController *contentViewController = [[ContentViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:contentViewController];
    
    // load the view from the xib
    ConverterViewController *converterViewController = [[ConverterViewController alloc] initWithNibName:@"ConverterViewController" bundle:nil];
    [navController.view addSubview:converterViewController.view];
    
    PaperFoldNavigationController *paperFoldNavController = [[PaperFoldNavigationController alloc] initWithRootViewController:navController];
    [self.window setRootViewController:paperFoldNavController];
    
    LeftViewController *leftViewController = [[LeftViewController alloc] init];
    UINavigationController *leftNavController = [[UINavigationController alloc] initWithRootViewController:leftViewController];
    [leftNavController setNavigationBarHidden:YES];
    [paperFoldNavController setLeftViewController:leftNavController width:100.0];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
