//
//  ViewController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void) addPropertyToPopUpButton: (NSPopUpButton *) buttonName; {
    [buttonName removeAllItems];
    
    // add the selected text to the top
    [buttonName insertItemWithTitle:@"Output" atIndex:0];
    [buttonName insertItemWithTitle:@"Input" atIndex:1];
    [buttonName insertItemWithTitle:@"Analog" atIndex:2];
    [buttonName selectItemAtIndex:0];
}

- (IBAction)popUpButtonPortSelected:(id)sender {
    NSLog(@"%@", [sender titleOfSelectedItem]);
    if ([[sender titleOfSelectedItem] isEqualToString: @"Input"]) {
        [_radioPort0 setEnabled:NO];
    }
    else if ([[sender titleOfSelectedItem] isEqualToString: @"Output"]) {
        [_radioPort0 setEnabled:YES];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // How to do this in loop ?!
    [self addPropertyToPopUpButton: _popUpButtonPort0];
    [self addPropertyToPopUpButton: _popUpButtonPort1];
    [self addPropertyToPopUpButton: _popUpButtonPort2];
    
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
