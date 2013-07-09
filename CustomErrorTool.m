//
//  CustomErrorTool.m
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-7-9.
//
//

#import "CustomErrorTool.h"

@implementation CustomErrorTool

@synthesize errorDescription,error,userinfo;

typedef enum{
    DefaultFailed = -1000,
    NotBindedFailed,
    ConnectFailed,
    RegisterFailed
}CustomErrorFailed;


+ (CustomErrorTool *)shareInstance
{
    static CustomErrorTool *shareManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareManager = [[CustomErrorTool alloc] init];  
    });
    return shareManager;
}

- (void)setErrorDescription:(NSString *)theDescription
{
    errorDescription = theDescription;
    self.userinfo = [NSDictionary dictionaryWithObject:self.description forKey:NSLocalizedDescriptionKey];
    error = [NSError errorWithDomain:CustomErrorDomain code:DefaultFailed userInfo:userinfo];
}

- (NSString *)ErrorDescription
{
    if (errorDescription !=nil && ![errorDescription isEqual: @"errorDesciption is empty"]) {
        return errorDescription;
    }else
    {
        return @"errorDesciption is empty";
    }
}

@end
