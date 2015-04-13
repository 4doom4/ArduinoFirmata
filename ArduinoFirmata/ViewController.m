//
//  ViewController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void) addPropertyToPopUpButton: (NSPopUpButton *) popUpButtonName withID: (int) popUpButtonID {
    [popUpButtonName removeAllItems];
    
    // add the selected text to the top
    [popUpButtonName insertItemWithTitle:@"Output" atIndex:0];
    [popUpButtonName insertItemWithTitle:@"Input" atIndex:1];
    if ([_portWithPMW containsObject:[NSNumber numberWithInt:popUpButtonID]]) [popUpButtonName insertItemWithTitle:@"PWM" atIndex:2];
    [popUpButtonName selectItemAtIndex:0];
}


- (IBAction)popUpButtonPortSelected:(id)sender {
    
    // Depending what is selected change the view (what if i set something for tag which does not exist?)
    switch ([sender indexOfSelectedItem])
    {
    case 0:
            [_radioButtonArray[[sender tag]] setEnabled:YES];
            [_radioButtonArray[[sender tag]] setHidden:NO];
            if ([_portWithPMW containsObject:[NSNumber numberWithLong:[sender tag]]]) [[_sliderArray objectForKey:[NSNumber numberWithLong:[sender tag]]] setHidden:YES];
        break;
    case 1:
            [_radioButtonArray[[sender tag]] setEnabled:NO];
            [_radioButtonArray[[sender tag]] setHidden:NO];
            if ([_portWithPMW containsObject:[NSNumber numberWithLong:[sender tag]]]) [[_sliderArray objectForKey:[NSNumber numberWithLong:[sender tag]]] setHidden:YES];
        break;
    case 2:
            [_radioButtonArray[[sender tag]] setHidden:YES];
            [[_sliderArray objectForKey:[NSNumber numberWithLong:[sender tag]]] setHidden:NO];
        break;
    default:
        NSLog (@"Integer out of range");
        break;
    }
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Definition of the class arrays. Do not forget to set the tag in SB!!
    // Which ports of Arduino UNO provide 8bit PWM output
    _portWithPMW= [[NSArray alloc] initWithObjects: @3, @5, @6, @9, @10, @11, nil];
    
    // How do I connect the sender with its respective radiobutton?
    
    // Build the array of radioButtons
    _radioButtonArray = [[NSArray alloc] initWithObjects:_radioButtonPort0, _radioButtonPort1, _radioButtonPort2, _radioButtonPort3, nil];
    
    // Build the array of sliders for the PWM output ports
    _sliderArray = [[NSDictionary alloc] initWithObjectsAndKeys:
                    _sliderPort3, [NSNumber numberWithLong:3],
                    nil];
    
    // Build the array of popUpButtons
    _popUpButtonArray = [[NSArray alloc] initWithObjects:_popUpButtonPort0, _popUpButtonPort1, _popUpButtonPort2, _popUpButtonPort3, nil];
    
    for (int i = 0; i < [_popUpButtonArray count]; i++)
    {
        [self addPropertyToPopUpButton: [_popUpButtonArray objectAtIndex:i] withID: i];
    }

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
