//
//  TaskPerformer.m
//  NSOperationCocoaDebug
//
//  Created by Leigh Caplan on 7/20/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import "TaskPerformer.h"


@implementation TaskPerformer

+(void) performTask
{
  NSTask *task = [NSTask new];
  
  task.launchPath = @"/bin/sleep";
  task.arguments  = [NSArray arrayWithObject:@"2"];
  
  [task launch];
  [task waitUntilExit];

  [task release]; // Without this release, the runLoop will never terminate.
}


@end
