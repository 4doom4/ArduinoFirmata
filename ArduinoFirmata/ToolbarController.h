//
//  ToolbarController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ToolbarController : NSObject <NSUserInterfaceValidations>

- (IBAction)randomToolbarItem:(id)sender;

- (BOOL)validateUserInterfaceItem:(id<NSValidatedUserInterfaceItem>)item;

@end
