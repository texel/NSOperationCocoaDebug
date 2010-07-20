//
//  NSOperationCocoaDebugAppDelegate.h
//  NSOperationCocoaDebug
//
//  Created by Leigh Caplan on 7/19/10.
//  Copyright 2010 Onehub, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WorkingOperation.h"b

@interface NSOperationCocoaDebugAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  NSOperationQueue *queue;
  Boolean processing;  
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) NSOperationQueue *queue;
@property (assign) Boolean processing;

-(IBAction) process:(id)sender;
-(void) setProcessingState;
-(void) setIdleState;
@end
