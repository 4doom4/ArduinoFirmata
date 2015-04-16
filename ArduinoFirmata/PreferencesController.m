//
//  PreferencesController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-15.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "PreferencesController.h"

@interface PreferencesController ()

@end

@implementation PreferencesController

- (void)windowDidLoad {
    [super windowDidLoad];
}

- (void) awakeFromNib {
    // Retrieve the Arduino IDE path and set it to an NSURL
    NSURL *arduinoIDEPath = NULL;
    NSData *theArduinoIDEPathData=[[NSUserDefaults standardUserDefaults] dataForKey:@"arduinoIDEPath"];
    if (theArduinoIDEPathData != nil)
        arduinoIDEPath =(NSURL *)[NSUnarchiver unarchiveObjectWithData:theArduinoIDEPathData];
    
    // Set the path picker to default Arduino IDE path or saved in preferences
    _pathControlToArduinoIDE.URL = arduinoIDEPath;
}

@end
