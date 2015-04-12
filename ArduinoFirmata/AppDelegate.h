//
//  AppDelegate.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (IBAction)toolbarArduinoIDEButton:(id)sender;

@property (weak) IBOutlet NSToolbarItem *toolbarArduinoIDEOutlet;

@end

