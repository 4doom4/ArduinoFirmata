//
//  ViewController.h
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

// Class array definition
@property (strong) NSArray *portWithPMW;
@property (strong) NSArray *radioButtonArray;
@property (strong) NSDictionary *sliderArray;
@property (strong) NSArray *popUpButtonArray;


// Class method definition
- (void) addPropertyToPopUpButton: (NSPopUpButton *) buttonName withID: (int) popUpButtonID;


// UI Element definition
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort0;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort1;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort2;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort3;

@property (weak) IBOutlet NSMatrix *radioButtonPort0;
@property (weak) IBOutlet NSMatrix *radioButtonPort1;
@property (weak) IBOutlet NSMatrix *radioButtonPort2;
@property (weak) IBOutlet NSMatrix *radioButtonPort3;

@property (weak) IBOutlet NSSlider *sliderPort3;


// UI Element method definition
- (IBAction)popUpButtonPortSelected:(id)sender;

@end

