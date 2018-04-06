//
//  AppDelegate.m
//  hexletTest
//
//  Created by Dmitriy Tarelkin on 3/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "AppDelegate.h"
#import "City.h"
#import "Metropolis.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    City* pinsk = [[City alloc] init];
    
    [pinsk setName:@"Pinsk" age:900.f population:110000];
    
    NSLog(@"%@", [pinsk getName]);
    
    for (int i = 0; i < 10; i+=1) {
        [pinsk nextDay];
    }
    
    Metropolis* metro = [[Metropolis alloc]init];
    
    [metro createCity:@"Almaty" atIndex:0 withPopulation:120000];
    [metro createCity:@"Minsk" atIndex:1 withPopulation:1234134];
    [metro createCity:@"Pinsk" atIndex:12 withPopulation:134311];
    [metro createCity:@"Vitebsk" atIndex:5 withPopulation:322232];
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
