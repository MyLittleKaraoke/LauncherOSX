//
//  AppDelegate.h
//  MyLittkeKaraoke Launcher
//
//  Copyright (c) 2014 DerpyMuffinsFactory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <WebKit/WebPolicyDelegate.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSMutableArray *windowControllers;
}

- (void)addWindowController:(NSWindowController *) controller;
- (void)removeWindowController:(NSWindowController *) controller;

- (IBAction)BackCredit:(id)sender;
- (IBAction)ProjectCredit:(id)sender;

@property (assign) IBOutlet NSTextField *versionText;

@end
