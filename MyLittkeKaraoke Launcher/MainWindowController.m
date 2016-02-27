//
//  MainWindowController.m
//  MyLittkeKaraoke Launcher
//
//  Created by Qsdf on 25/05/14.
//  Copyright (c) 2014 DerpyMuffinsFactory. All rights reserved.
//

#import "MainWindowController.h"
#import <WebKit/WebKit.h>

@implementation MainWindowController


- (id)init
{
    self = [super initWithWindowNibName:@"MainWindow"];
    return self;

}

- (IBAction)launch:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"file:///Applications/mlkstart.app"]];
    [[NSApplication sharedApplication] terminate:self];
    // For starting a .app inside the launcher .app
    //[[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:[[[NSBundle mainBundle] bundlePath] stringByAppendingString:@"/Contents/Shit.app"]]];
}

- (IBAction)checkForUpdates:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:[[[NSBundle mainBundle] bundlePath] stringByAppendingString:@"/Contents/update.url"]]];
}

- (IBAction)openSongsFolder:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:@"/Applications/UltraStarDeluxe.app/Contents/songs/"]];
}

- (IBAction)openThemesFolder:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:@"/Applications/UltraStarDeluxe.app/Contents/themes/"]];
}

- (IBAction)openRessourcesFolder:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:@"/Applications/UltraStarDeluxe.app/Contents/"]];
}

- (IBAction)openUsersFolder:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL fileURLWithPath:[@"~/Library/Application Support/UltrastarDeluxe" stringByExpandingTildeInPath]]];
}

- (IBAction)openSiteLogo:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://mylittlekaraoke.com"]];;
}

- (IBAction)SeeAllReleases:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://www.mylittlekaraoke.com/store/beta/releases.html"]];;
}

- (IBAction)bug:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://docs.google.com/forms/d/1UlKJQIycptQKK-re-Ps_2htehzz5GVLiBGikbQ-n2Kw/viewform"]];;
}

// I honestly have no idea why that work, but it seem like it, so praise the Great and Powerfull Muffins!

@synthesize webView;

- (void)awakeFromNib {
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.mylittlekaraoke.com/store/beta/"]]];
}

- (void)webView:(WebView *)webView
decidePolicyForNavigationAction:(NSDictionary *)actionInformation
        request:(NSURLRequest *)request
          frame:(WebFrame *)frame
decisionListener:(id <WebPolicyDecisionListener>)listener
{
    if ([actionInformation objectForKey:WebActionElementKey]) {
        [listener ignore];
        [[NSWorkspace sharedWorkspace] openURL:[request URL]];
    }
    else {
        [listener use];
    }
}

@end
