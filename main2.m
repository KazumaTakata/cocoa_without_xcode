#import "Cocoa/Cocoa.h"

void createWindow(){
    NSUInteger windowStyle =  NSWindowStyleMaskTitled |  NSWindowStyleMaskClosable |NSWindowStyleMaskResizable;
    [NSApplication sharedApplication];
    NSRect frame = NSMakeRect(0, 0, 200, 200);
    NSWindow* window  = [[[NSWindow alloc] initWithContentRect:frame
                    styleMask:windowStyle
                    backing:NSBackingStoreBuffered
                    defer:NO] autorelease];
    [window setBackgroundColor:[NSColor blueColor]];
    [window makeKeyAndOrderFront:NSApp];


    [NSApp run];
}

int main (){
     NSUInteger windowStyle =  NSWindowStyleMaskTitled |  NSWindowStyleMaskClosable |NSWindowStyleMaskResizable;
    [NSApplication sharedApplication];
    NSRect frame = NSMakeRect(0, 0, 200, 200);
    NSWindow* window  = [[[NSWindow alloc] initWithContentRect:frame
                    styleMask:windowStyle
                    backing:NSBackingStoreBuffered
                    defer:NO] autorelease];
    [window setBackgroundColor:[NSColor blueColor]];
    [window makeKeyAndOrderFront:NSApp];


    [NSApp run];

}