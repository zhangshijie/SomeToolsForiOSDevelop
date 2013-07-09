
//
//  NSMutableArray+NSMutableArray_Stack_h.m
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "NSMutableArray+Stack.h"
#import "CustomErrorTool.h"

@implementation NSMutableArray (Stack)

- (id)initStack
{
    self = [super init];
    
    return self;
}


//- (void)DestroyStackwithError:(NSError **)error
//{
//    [self ClearStackWithError:error];
//}

- (void)ClearStack
{
    [self removeAllObjects];
}

- (BOOL)isEmpty
{
    return self.isEmpty;
}

- (NSInteger )StatckLength
{
    return self.count;
}

- (BOOL) push:(id)object WithError : (NSError **) error
{
    if(self.isEmpty)
    {
        CustomErrorTool *errorTool = [CustomErrorTool shareInstance];
        errorTool.errorDescription = @"stack is empty !";
        *error = errorTool.error;
        return NO;
    }
    else
    {
        [self addObject:object];
    }
    return YES;
}

- (id) popWithError : (NSError **) error
{
    id object =[self getTopWithError:error];
    [self removeLastObject];
    return  object;
}

- (id)  getTopWithError :(NSError **) error
{
    if (self.isEmpty)
    {
        CustomErrorTool *errorTool = [CustomErrorTool shareInstance];
        errorTool.errorDescription = @"stack is empty !";
        *error = errorTool.error;
        return nil;
    }
    else
    {
        id object = [self lastObject ];
        return object;
    }
    return nil;
}

//- (void) dropBottomWithError : (NSError **) error
//{
//    if (self.isEmpty) {
//        CustomErrorTool *errorTool = [CustomErrorTool shareInstance];
//        errorTool.errorDescription = @"stack is empty !";
//        *error = errorTool.error;
//    }
//    
//    [self removeObjectAtIndex:0];
//}

@end
