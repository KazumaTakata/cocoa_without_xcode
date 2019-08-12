#import <Cocoa/Cocoa.h>
#import "./AppDelegate.h"
#import  "./viewController.h"
#include "createWindow.h"



NSWindow *window;
id app;

void createWindow(){
    NSUInteger windowStyle = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable;
    app = [NSApplication sharedApplication];
    NSRect windowRect = NSMakeRect(100, 100, 400, 400);
    window = [[[NSWindow alloc] initWithContentRect:windowRect
                                                    styleMask:windowStyle
                                                      backing:NSBackingStoreBuffered
                                                        defer:NO] autorelease];
    // [window setBackgroundColor:[NSColor blueColor]];
    // [window makeKeyAndOrderFront:NSApp];

    // [NSApp run];
}

void addText(char text[]){
    NSString *myNSString = [NSString stringWithUTF8String:text];
    NSRect windowRect = NSMakeRect(100, 100, 400, 400);
    NSTextView * textView = [[NSTextView alloc] initWithFrame:windowRect];
    [textView autorelease];
    

    // [window setContentView:textView];
    // [textView insertText:myNSString replacementRange:NSMakeRange(0, 0)];


    // NSRect frame = NSMakeRect(0, 0, 300, 300);
    // id button = [[[NSButton alloc] initWithFrame:frame] autorelease];
    // [button setTarget:app];
    // [button setAction:@selector(terminate:)];
    // [button setTitle:@"Quit"];
    // [[window contentView] addSubview:button];

    ViewController* controller = [[ViewController alloc]init];
    [window setContentViewController:controller];
   
}

void run(){
    [window orderFrontRegardless];
    AppDelegate * del = [[AppDelegate alloc] init];
    [NSApp setDelegate:del];
    [NSApp run];
}