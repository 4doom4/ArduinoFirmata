//
//  ToolbarController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToolbarController : NSObject <NSUserInterfaceValidations>

@property (weak) IBOutlet NSToolbarItem *toolbarArduinoIDEButton;
- (IBAction)toolbarArduinoIDEButton1:(id)sender;

- (BOOL)validateUserInterfaceItem:(id<NSValidatedUserInterfaceItem>)toolbarbutton;

@end
