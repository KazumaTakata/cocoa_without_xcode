#import "viewController.h"

@implementation ViewController



-(void)loadView {
    NSRect windowRect = NSMakeRect(100, 100, 400, 400);
    self.view = [[NSView alloc]init];
    self.view.frame = windowRect;
  }

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"hello world");
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:@"/Users/kazumatakata/osx/sample2/sample5"] == YES) {
        NSLog(@"File exists");
    }
    
    // Do any additional setup after loading the view.

    NSTextView * textView = [[NSTextView alloc]  init];
    [self.view addSubview:textView];
    textView.translatesAutoresizingMaskIntoConstraints = false;
    [textView insertText:@"Hello OSX/Cocoa" replacementRange:NSMakeRange(0, 0)];
    [textView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [textView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = true;
    [textView.widthAnchor constraintEqualToConstant:200].active = true;
    [textView.heightAnchor constraintEqualToConstant:100].active = true;


    NSRect frame = NSMakeRect(0, 0, 30, 30);
    id button = [[[NSButton alloc] initWithFrame:frame] autorelease];
    [button setTarget: self];
    [button setAction:@selector(pushed:)];
    [button setTitle:@"Quit"];
    [self.view addSubview:button];

    NSLog(@"ret");
    NSURL *url = [NSURL URLWithString:@"https://stackoverflow.com/questions/2346893/tutorials-for-using-http-post-and-get-on-the-iphone-in-objective-c"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"ret=%@", ret);
}

- (void)pushed:(id)sender{
    NSLog(@"pushed");
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
