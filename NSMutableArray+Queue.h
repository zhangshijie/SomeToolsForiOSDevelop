//
//  NSMutableArray+Queue.h
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-7-10.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableArray(Queue)


- (id)         initQueue;
- (void)       ClearQueue;
- (BOOL)       isEmpty;
- (NSInteger)  QueueLength;
- (BOOL)       EnQueue:(id)object WithError : (NSError **) error;
- (id)         DeQueueWithError : (NSError **) error;
- (id)         getHeadwithError : (NSError **) error;

@end
