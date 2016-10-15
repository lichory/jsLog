//
//  Point3D.m
//  js交互
//
//  Created by apple on 16/10/15.
//  Copyright © 2016年 李重阳. All rights reserved.
//

#import "Point3D.h"

@interface Point3D ()

@property (nonatomic,strong) JSContext *ctx;

/* 当做一个变量来转化到 x,y,z**/
@property (nonatomic,assign) CGFloat point_x;
@property (nonatomic,assign) CGFloat point_y;
@property (nonatomic,assign) CGFloat point_z;

@end



@implementation Point3D


#pragma mark - 实现Point3DExport协议 以便js 可以直接调用 x,y,z
- (CGFloat)x {
    
    return self.point_x;
}
- (void)setX:(CGFloat)x {
    
    self.point_x = x;
}

- (CGFloat)y {
    
    return self.point_y;
}
- (void)setY:(CGFloat)y {
    
    self.point_y = y;
}
- (CGFloat)z {
    
    return self.point_z;
}
- (void)setZ:(CGFloat)z {
    
    self.point_z = z;
}

- (CGFloat)length {
    
    return self.x + self.y +self.z;
}

@end
