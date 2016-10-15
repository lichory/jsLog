//
//  JSContextTool.m
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import "JSContextTool.h"

@implementation JSContextTool

/* 加载 js文件 **/
+ (void)loadScriptContext:(JSContext *)cxt fileName:(NSString *)fileName bundel:(NSBundle *)bundel {
    
    NSString * filePath = nil;
    if (bundel == nil) {
        
        filePath = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] resourcePath],fileName];
    } else {
        
        filePath = [NSString stringWithFormat:@"%@/%@",[bundel resourcePath],fileName];
    }
    NSString * script = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [cxt evaluateScript:script];
}

@end
