//
//  WorkingOperation.m
//  NSOperationCocoaDebug
//
//  Created by Leigh Caplan on 7/20/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import "WorkingOperation.h"


@implementation WorkingOperation

@synthesize done;

-(void) main
{
  self.done = NO;
  
  NSOperationCocoaDebugAppDelegate * delegate = [[NSApplication sharedApplication] delegate];
  
  [delegate performSelectorOnMainThread:@selector(setProcessingState)
                             withObject:nil
                          waitUntilDone:NO];
  
  [self performTask];
  
  NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
  
  [[NSRunLoop currentRunLoop] run];
  //[runLoop run];
  
  while (!self.done) {
    [runLoop runMode:NSDefaultRunLoopMode 
          beforeDate:[NSDate distantFuture]];
  }
  
  NSLog(@"setting idle");
  
  [delegate performSelectorOnMainThread:@selector(setIdleState)
                             withObject:nil
                          waitUntilDone:NO];
}

-(void) exit
{
  NSLog(@"exiting...");
  self.done = YES;
}

-(void) performTask
{
  [TaskPerformer performTask];
  [self exit];
}

@end
