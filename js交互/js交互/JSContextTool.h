//
//  JSContextTool.h
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface JSContextTool : NSObject

+ (void)loadScriptContext:(JSContext *)cxt fileName:(NSString *)fileName bundel:(NSBundle *)bundel;

@end
