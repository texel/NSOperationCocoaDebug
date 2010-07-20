//
//  NSOperationCocoaDebugAppDelegate.m
//  NSOperationCocoaDebug
//
//  Created by Leigh Caplan on 7/19/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import "NSOperationCocoaDebugAppDelegate.h"

@implementation NSOperationCocoaDebugAppDelegate

@synthesize window, queue, processing;

-(void) applicationDidFinishLaunching:(NSNotification *)aNotification {
	self.queue = [NSOperationQueue new];
}

-(void) setProcessingState
{
  self.processing = YES;
}

-(void) setIdleState
{
  self.processing = NO;
}

-(IBAction) process:(id)sender
{
  if ([[self.queue operations] count] == 0) {
    [self.queue addOperation:[WorkingOperation new]];
  }
}


@end
