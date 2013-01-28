
//
//  NSMutableArray+NSMutableArray_Stack_h.m
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)


- (void) push:(id)object
{
    if(object!=nil)
    {
        [self addObject:object];
    }
}

- (id) pop
{
    if ([self count]==0) {
        return;
    }
    
    id object = [[self lastObject ]retain];
    
    [self removeLastObject];
     
    return object;
}

- (void)dropBottom
{
    if ([self count]==0) {
        return;
    }
    
    [self removeObjectAtIndex:0];
}

@end
