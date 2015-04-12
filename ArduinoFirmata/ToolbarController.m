//
//  ToolbarController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "ToolbarController.h"

@implementation ToolbarController

- (IBAction)randomToolbarItem:(id)sender {
}

- (BOOL)validateUserInterfaceItem:(id<NSValidatedUserInterfaceItem>)item {
    
    if ([item action] == @selector(randomToolbarItem:)) {
        return YES;
    }
    return YES;
}

//- (IBAction)toolbarArduinoIDEButton1:(id)sender {
//////    NSFileManager *fileManager = [NSFileManager defaultManager];
//////    
//////    NSURL *applicationsFolder = [fileManager URLForDirectory:NSApplicationDirectory inDomain:NSSystemDomainMask appropriateForURL:nil create:NO error:nil];
//////    
//////    NSURL *arduinoPath = [applicationsFolder URLByAppendingPathComponent:@"Arduino.aspp"];
//////    
//////    
//////    if ([fileManager fileExistsAtPath:[arduinoPath path]]) {
//////        [[NSWorkspace sharedWorkspace] launchApplication:[arduinoPath path]];
//////    }
//////    else {
//////        //        NSAlert *arduinoIDENotFound = [[NSAlert alloc]init];
//////        //
//////        //        [arduinoIDENotFound addButtonWithTitle:@"Ok"];
//////        //        arduinoIDENotFound.alertStyle = NSInformationalAlertStyle;
//////        //        arduinoIDENotFound.messageText= NSLocalizedString(@"Arduino IDE was not found", @"Try to open Arduino IDE but file not found");
//////        //        arduinoIDENotFound.informativeText=@"Please go to preferences and specify path";
//////        //        [arduinoIDENotFound runModal];
//////        NSLog(@"tool");
////    }
//    NSLog(@"dasd");
//    // NSWindow *window = [self window];
//    //NSAlert *alert = [[NSAlert alloc]init];
//    //[alert beginSheetModalForWindow:window completionHandler:nil];
//}


@end
