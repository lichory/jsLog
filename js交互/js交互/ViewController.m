//
//  ViewController.m
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "Point3D.h"
#import "JSContextTool.h"
#import "Console.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*1.简单的js ，js 塞入一个 原生的block实例 **/
//    JSContext * cxt = [[JSContext alloc]init];
//    cxt[@"sum"] = ^(int a,int b) {
//        
//        return a+b;
//    };
//    JSValue * result = [cxt evaluateScript:@"sum(1,2)"];
//    NSLog(@"result = %d",[result toUInt32]);
    
    
    /*2.简单的js  **/
//    JSContext * cxt = [[JSContext alloc]init];
//    Point3D * point3D = [[Point3D alloc]init];
//    point3D.x = 1;
//    point3D.y = 2;
//    point3D.z = 3;
//    cxt[@"point3D"] = point3D;
//    /* js 直接修改 我们协议里面的值  **/
//    NSString * script = @"point3D.z = 7; point3D.length()";
//    JSValue * result = [cxt evaluateScript:script];
//    NSLog(@"result = %d",[result toUInt32]);
    
    /*3.js 自定义输入信息 **/
    JSContext * cxt = [[JSContext alloc]init];
    
    /* 先加入一个打印的log 对象**/
    Console * console = [[Console alloc]init];
    cxt[@"console"] = console;
    
    [JSContextTool loadScriptContext:cxt fileName:@"test.js" bundel:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
