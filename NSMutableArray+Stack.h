//
//  NSMutableArray+NSMutableArray_Stack_h.h
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-1-28.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)


- (void) push:(id)object;
- (id) pop;
- (void) dropBottom;

@end
