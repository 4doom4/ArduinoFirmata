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

- (IBAction)toolbarArduinoIDEButton:(id)sender {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSURL *applicationsFolder = [fileManager URLForDirectory:NSApplicationDirectory inDomain:NSSystemDomainMask appropriateForURL:nil create:NO error:nil];
    
    NSURL *arduinoPath = [applicationsFolder URLByAppendingPathComponent:@"Arduino.aspp"];
    
    
    if ([fileManager fileExistsAtPath:[arduinoPath path]]) {
        [[NSWorkspace sharedWorkspace] launchApplication:[arduinoPath path]];
    }
    else {
        //        NSAlert *arduinoIDENotFound = [[NSAlert alloc]init];
        //
        //        [arduinoIDENotFound addButtonWithTitle:@"Ok"];
        //        arduinoIDENotFound.alertStyle = NSInformationalAlertStyle;
        //        arduinoIDENotFound.messageText= NSLocalizedString(@"Arduino IDE was not found", @"Try to open Arduino IDE but file not found");
        //        arduinoIDENotFound.informativeText=@"Please go to preferences and specify path";
        //        [arduinoIDENotFound runModal];
        NSLog(@"app");
    }
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
