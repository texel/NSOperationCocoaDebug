//
//  WorkingOperation.h
//  NSOperationCocoaDebug
//
//  Created by Leigh Caplan on 7/20/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NSOperationCocoaDebugAppDelegate.h"
#import "TaskPerformer.h"

@interface WorkingOperation : NSOperation {
  Boolean done;
}
@property (assign) Boolean done;

-(void) main;
-(void) exit;
-(void) performTask;

@end
