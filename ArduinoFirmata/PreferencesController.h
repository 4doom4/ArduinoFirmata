//
//  PreferencesController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-15.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PreferencesController : NSWindowController <NSWindowDelegate>
@property (weak) IBOutlet NSPathControl *pathControlToArduinoIDE;

@end
