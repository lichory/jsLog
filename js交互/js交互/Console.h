//
//  Console.h
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol ConsoleExport <JSExport>

- (void)log;

@end

@interface Console : NSObject<ConsoleExport>


@end
