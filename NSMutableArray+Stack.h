//
//  NSMutableArray+NSMutableArray_Stack_h.h
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)

- (id)         initStack;
- (void)       ClearStack;
- (BOOL)       isEmpty;
- (NSInteger)  StatckLength;
- (BOOL)       push:(id)object WithError : (NSError **) error;
- (id)         popWithError : (NSError **) error;
- (id)         getTopWithError :(NSError **) error;
//- (void)       DestroyStackwithError :(NSError **) error;


//- (void) dropBottomWithError : (NSError **) error;


@end