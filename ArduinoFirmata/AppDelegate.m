//
//  AppDelegate.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Create the FileManager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Find the default Application folder
    NSURL *applicationsFolder = [fileManager URLForDirectory:NSApplicationDirectory inDomain:NSSystemDomainMask appropriateForURL:nil create:NO error:nil];
    
    // Append the Arduino IDE executable
    NSURL *arduinoIDEPath = [applicationsFolder URLByAppendingPathComponent:@"Arduino.app"];
    
    // Transform NSUSRL into NSData
    NSData *theDefaultsData=[NSArchiver archivedDataWithRootObject:arduinoIDEPath];
    
    // Write the app defaults as dictionary
    NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:theDefaultsData forKey:@"arduinoIDEPath"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:appDefaults];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
