//
//  main.m
//  MyLittkeKaraoke Launcher
//
//  Created by YayMuffins on 5/24/14.
//  Copyright (c) 2014 DerpyMuffinsFactory. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[])
{
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
