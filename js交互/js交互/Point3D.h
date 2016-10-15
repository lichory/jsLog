//
//  Point3D.h
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

/* 这里面的值 JS 是可以直接操作的 **/
@protocol Point3DExport <JSExport>

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat z;
- (CGFloat)length;

@end

/* 在对象里面实现Export里面的协议**/
@interface Point3D : NSObject<Point3DExport>


@end
