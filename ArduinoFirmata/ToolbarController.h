//
//  ToolbarController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToolbarController : NSObject

@property (weak) IBOutlet NSToolbarItem *toolbarArduinoIDEButton;
- (IBAction)toolbarArduinoIDEButton:(id)sender;

@end
