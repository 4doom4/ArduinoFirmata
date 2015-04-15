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
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort4;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort5;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort6;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort7;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort8;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort9;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort10;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort11;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort12;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPort13;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA0;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA1;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA2;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA3;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA4;
@property (weak) IBOutlet NSPopUpButton *popUpButtonPortA5;

@property (weak) IBOutlet NSMatrix *radioButtonPort0;
@property (weak) IBOutlet NSMatrix *radioButtonPort1;
@property (weak) IBOutlet NSMatrix *radioButtonPort2;
@property (weak) IBOutlet NSMatrix *radioButtonPort3;
@property (weak) IBOutlet NSMatrix *radioButtonPort4;
@property (weak) IBOutlet NSMatrix *radioButtonPort5;
@property (weak) IBOutlet NSMatrix *radioButtonPort6;
@property (weak) IBOutlet NSMatrix *radioButtonPort7;
@property (weak) IBOutlet NSMatrix *radioButtonPort8;
@property (weak) IBOutlet NSMatrix *radioButtonPort9;
@property (weak) IBOutlet NSMatrix *radioButtonPort10;
@property (weak) IBOutlet NSMatrix *radioButtonPort11;
@property (weak) IBOutlet NSMatrix *radioButtonPort12;
@property (weak) IBOutlet NSMatrix *radioButtonPort13;
@property (weak) IBOutlet NSMatrix *radioButtonPortA0;
@property (weak) IBOutlet NSMatrix *radioButtonPortA1;
@property (weak) IBOutlet NSMatrix *radioButtonPortA2;
@property (weak) IBOutlet NSMatrix *radioButtonPortA3;
@property (weak) IBOutlet NSMatrix *radioButtonPortA4;
@property (weak) IBOutlet NSMatrix *radioButtonPortA5;

@property (weak) IBOutlet NSSlider *sliderPort3;
@property (weak) IBOutlet NSSlider *sliderPort5;
@property (weak) IBOutlet NSSlider *sliderPort6;
@property (weak) IBOutlet NSSlider *sliderPort9;
@property (weak) IBOutlet NSSlider *sliderPort10;
@property (weak) IBOutlet NSSlider *sliderPort11;


// UI Element method definition
- (IBAction)popUpButtonPortSelected:(id)sender;

@end

