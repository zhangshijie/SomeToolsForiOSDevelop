//
//  CustomErrorDomain.h
//  SomeToolsForiOSDevelop
//
//  Created by 张 世杰 on 13-7-9.
//
//

#import <Foundation/Foundation.h>

#define CustomErrorDomain @"com.cjerrors.errorDomain"


@interface CustomErrorTool : NSObject
{
    NSDictionary *userinfo;
    NSError      *error;
    NSString     *errorDescription;
}

@property (nonatomic,strong) NSDictionary *userinfo;
@property (nonatomic,strong) NSError      *error;
@property (nonatomic,strong) NSString     *errorDescription;

+ (CustomErrorTool *)shareInstance;

@end