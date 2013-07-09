//
//  NSMutableArray+Queue.m
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-7-10.
//
//

#import "NSMutableArray+Queue.h"
#import "CustomErrorTool.h"

@implementation NSMutableArray (Queue)



- (id)initQueue
{
    self = [super init];
    
    return self;
}



- (void)ClearQueue
{
    [self removeAllObjects];
}

- (BOOL)isEmpty
{
    return self.isEmpty;
}

- (NSInteger )QueueLength
{
    return self.count;
}

- (BOOL) EnQueue:(id)object WithError : (NSError **) error
{
    if(self.isEmpty)
    {
        CustomErrorTool *errorTool = [CustomErrorTool shareInstance];
        errorTool.errorDescription = @"Queue is empty !";
        *error = errorTool.error;
        return NO;
    }
    else
    {
        [self addObject:object];
    }
    return YES;
}

- (id) getHeadwithError:(NSError *__autoreleasing *)error
{
    if (self.isEmpty) {
        CustomErrorTool *errorTool = [CustomErrorTool shareInstance];
        errorTool.errorDescription = @"Queue is empty !";
        *error = errorTool.error;
        return nil;
    }
    else
    {
        return [self objectAtIndex:0];
    }
}
- (id) DeQueueWithError : (NSError **) error
{
    id Object = [self getHeadwithError:error];
    [self removeObjectAtIndex:0];
    return  Object;
}



@end
