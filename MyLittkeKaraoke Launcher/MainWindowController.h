//
//  MainWindowController.h
//  MyLittleKaraoke Launcher
//
//  Created by Qsdf on 25/05/14.
//  Copyright (c) 2014 DerpyMuffinsFactory. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface MainWindowController : NSWindowController{
    IBOutlet WebView *webView;
}

- (IBAction)launch:(id)sender;
- (IBAction)checkForUpdates:(id)sender;
- (IBAction)openSongsFolder:(id)sender;
- (IBAction)openThemesFolder:(id)sender;
- (IBAction)openRessourcesFolder:(id)sender;
- (IBAction)openUsersFolder:(id)sender;
- (IBAction)openSiteLogo:(id)sender;
- (IBAction)SeeAllReleases:(id)sender;
- (IBAction)bug:(id)sender;


@property (nonatomic, retain) IBOutlet WebView *webView;



@end
