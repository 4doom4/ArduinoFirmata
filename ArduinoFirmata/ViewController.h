//
//  ViewController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort0;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort1;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort2;
@property (weak) IBOutlet NSMatrix *radioPort0;

- (void) addPropertyToPopUpButton: (NSPopUpButton *) buttonName;
- (IBAction)popUpButtonPortSelected:(id)sender;

@end

