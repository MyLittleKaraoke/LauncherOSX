//
//  AppDelegate.m
//  MyLittkeKaraoke Launcher
//
//  Copyright (c) 2014 DerpyMuffinsFactory. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    windowControllers = [[NSMutableArray alloc] init];
    NSWindowController *wc = [[MainWindowController alloc] init];
    [wc showWindow:self];
    [self addWindowController:wc];
    // Not super proud of this code
    NSString *versionString = [NSString stringWithContentsOfFile:@"/Applications/UltraStarDeluxe.app/Contents/songs/version.txt"
                              encoding:NSUTF8StringEncoding
                                 error:NULL];
    if (versionString) {
        [self.versionText setStringValue:versionString];
    }
    
    
}

- (IBAction)BackCredit:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://bardiel83.deviantart.com/art/MLP-Mane-Six-Wallpaper-298056318"]];;
}

- (IBAction)ProjectCredit:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://mylittlekaraoke.com/index.php?pages/Team"]];;
}

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)addWindowController:(NSWindowController *) controller {
    if(![windowControllers doesContain:controller])
        [windowControllers addObject:controller];
}

- (void)removeWindowController:(NSWindowController *) controller {
    [windowControllers removeObjectIdenticalTo:controller];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication
                                                         *)application {
    return YES;
}

@end
