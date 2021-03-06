//
//  Video_Player_DemoAppDelegate.m
//  Video_Player Demo
//
//  Created by James Hurley on 10-09-02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Video_Player_DemoAppDelegate.h"
#import "EAGLView.h"

@implementation Video_Player_DemoAppDelegate

@synthesize window;
@synthesize glView;
@synthesize label;
@synthesize timeLabel;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions   
{
    [glView setMessageDelegate:self];
    [glView startAnimation];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [glView stopAnimation];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [glView startAnimation];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [glView stopAnimation];
}
-(void) hideText{
    [label setHidden:YES];
}
- (void) currentTimeChanged:(NSTimeInterval)seconds {
	if ([timeLabel isHidden]) {
		[timeLabel setHidden:NO];
	}
	//NSLog(@"current time is %d",seconds);
	[timeLabel setText:[NSString stringWithFormat:@"%d",seconds]];	
}

- (void)dealloc
{
    [window release];
    [glView release];

    [super dealloc];
}

@end
