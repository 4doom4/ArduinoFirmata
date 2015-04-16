//
//  ToolbarController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "ToolbarController.h"

@implementation ToolbarController

- (IBAction)arduinoIDEToolbarAction:(id)sender {
    // Create the FileManage
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Retrieve the Arduino IDE path and set it to an NSURL
    NSURL *arduinoIDEPath = NULL;
    NSData *theArduinoIDEPathData=[[NSUserDefaults standardUserDefaults] dataForKey:@"arduinoIDEPath"];
    if (theArduinoIDEPathData != nil)
        arduinoIDEPath =(NSURL *)[NSUnarchiver unarchiveObjectWithData:theArduinoIDEPathData];
    
    // Check if the executable exists. If not show sheet
    if ([fileManager fileExistsAtPath:[arduinoIDEPath path]]) {
        [[NSWorkspace sharedWorkspace] launchApplication:[arduinoIDEPath path]];
    }
    else {
        NSAlert *arduinoIDENotFound = [[NSAlert alloc]init];
        [arduinoIDENotFound addButtonWithTitle:@"Ok"];
        arduinoIDENotFound.alertStyle = NSInformationalAlertStyle;
        arduinoIDENotFound.messageText= NSLocalizedString(@"Arduino IDE was not found", @"Try to open Arduino IDE but file not found");
        arduinoIDENotFound.informativeText=@"Please go to preferences and specify path";
        [arduinoIDENotFound beginSheetModalForWindow:self.window completionHandler:nil];
    }
    
}
@end
