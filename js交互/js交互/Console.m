//
//  Console.m
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import "Console.h"

@implementation Console

- (void)log {
    
    /*
     * Get the arguments to the current callback.
     * 就是获得一个js 函数的回调值
     **/
    NSArray * args = [JSContext currentArguments];
    NSLog(@"%@",[args componentsJoinedByString:@"*"]);
}

@end
