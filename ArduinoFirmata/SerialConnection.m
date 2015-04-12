//
//  SerialConnection.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-11.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "SerialConnection.h"

@implementation SerialConnection

// executes after everything in the xib/nib is initiallized
- (void)awakeFromNib {
    [self refreshSerialList:@"Select Serial Port"];
}

- (void) refreshSerialList: (NSString *) selectedText {
    io_object_t serialPort;
    io_iterator_t serialPortIterator;
    
    // remove everything from the pull down list
    [_serialPortPopUpBotton removeAllItems];
    
    // ask for all the serial ports
    IOServiceGetMatchingServices(kIOMasterPortDefault, IOServiceMatching(kIOSerialBSDServiceValue), &serialPortIterator);
    
    // loop through all the serial ports and add them to the array
    while ((serialPort = IOIteratorNext(serialPortIterator))) {
        [_serialPortPopUpBotton addItemWithTitle:
         (__bridge NSString*)IORegistryEntryCreateCFProperty(serialPort, CFSTR(kIOCalloutDeviceKey),  kCFAllocatorDefault, 0)];
        IOObjectRelease(serialPort);
    }
    
    // add the selected text to the top
    [_serialPortPopUpBotton insertItemWithTitle:selectedText atIndex:0];
    [_serialPortPopUpBotton selectItemAtIndex:0];
    
    IOObjectRelease(serialPortIterator);
}

@end
