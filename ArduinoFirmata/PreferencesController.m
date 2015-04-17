//
//  PreferencesController.m
//  ArduinoFirmata
//
//  Created by Maximilian Ebert on 2015-04-15.
//  Copyright (c) 2015 Maximilian Ebert. All rights reserved.
//

#import "PreferencesController.h"

@interface PreferencesController ()

@end

@implementation PreferencesController

- (void)windowDidLoad {
    [super windowDidLoad];
}

- (void) awakeFromNib {
    // Retrieve the Arduino IDE path and set it to an NSURL
    NSURL *arduinoIDEPath = NULL;
    NSData *theArduinoIDEPathData=[[NSUserDefaults standardUserDefaults] dataForKey:@"arduinoIDEPath"];
    if (theArduinoIDEPathData != nil)
        arduinoIDEPath =(NSURL *)[NSUnarchiver unarchiveObjectWithData:theArduinoIDEPathData];
    
    // Build the applicationSelector
    [self buildMenu: arduinoIDEPath];
}

- (void) buildMenu: (NSURL *) appURL {
    // Load the custom view
    NSRect buttonFrame = [_applicationSelectorCustomView frame];
    
    // Initialize a button and draw it in the view
    NSPopUpButton *applicationSelector = [[NSPopUpButton alloc] initWithFrame:buttonFrame];
    [_preferenceMainView addSubview:applicationSelector];
    
    // Create the menu for the popupbutton
    NSMenu *yourMenu = [[NSMenu alloc] init];
    
    // First menu item is the Arduino app pointer. Only display the name
    NSMenuItem *arduinoApp = [[NSMenuItem alloc] initWithTitle:[[[NSFileManager defaultManager] displayNameAtPath:[appURL path]] stringByDeletingPathExtension] action:nil keyEquivalent:@""];
    
    // Also add the app icon next to the name
    NSImage *iconImage = [[NSWorkspace sharedWorkspace] iconForFile:[appURL path]];
    [iconImage setSize:NSMakeSize(15,15)];
    [arduinoApp setImage:iconImage];
    
    // Add it to the menu
    [yourMenu insertItem:arduinoApp atIndex:0];
    
    // Add seperator line to the menu
    [yourMenu insertItem:[NSMenuItem separatorItem] atIndex:1];
    
    // Add item to select another app and assign action to open dialogue
    NSMenuItem *otherApp = [[NSMenuItem alloc] initWithTitle:@"Other ..." action:@selector(selectApplication:) keyEquivalent:@""];
    [otherApp setRepresentedObject:appURL]; // Please explain
    [yourMenu insertItem:otherApp atIndex:2];
    
    // Don't understand but Reason http://stackoverflow.com/questions/1970135/adding-item-to-nsmenu-with-action-selector-preset otherwise can't find the action
    [otherApp setTarget:self];
    
    // Attach menu to button
    [applicationSelector setMenu:yourMenu];
}

- (void)selectApplication:(id)sender {
    //this gives you a copy of an open file dialogue
    NSOpenPanel* openPanel = [NSOpenPanel openPanel];
    
    //shoud the user be able to resize the window?
    openPanel.showsResizeIndicator = YES;
    
    //should the user see hidden files (for user apps - usually no)
    openPanel.showsHiddenFiles = NO;
    
    //can the user select a directory?
    openPanel.canChooseDirectories = NO;
    
    
    //can the user create directories while using the dialogue?
    openPanel.canCreateDirectories = NO;
    
    //should the user be able to select multiple files?
    openPanel.allowsMultipleSelection = NO;
    
    //an array of file extensions to filter the file list
    openPanel.allowedFileTypes = @[@"app"];
    
    //this launches the dialogue
    [openPanel beginSheetModalForWindow:self.window
                      completionHandler:^(NSInteger result) {
                          
                          //if the result is NSOKButton
                          //the user selected a file
                          if (result==NSModalResponseOK) {
                              
                              //get the selected file URLs an build the menu again
                              [self buildMenu: openPanel.URLs[0]];
                              
                              // write the newly selected path to the defaults variables to keep it for next time
                              
                          }
                          
                          else {
                              [self buildMenu: [sender representedObject]];
                          }
                          
                      }];
}


@end
