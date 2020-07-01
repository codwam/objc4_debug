//
//  Student.m
//  KCObjcTest
//
//  Created by Admin on 2020/7/1.
//

#import "Student.h"

@implementation Student
- (void)studentInstanceMethod { }
+ (void)studentClassMethod { }
- (void)_setName2:(NSString *)name2 {
    _name2 = name2;
}
//- (void)dealloc
//{
//    NSLog(@"%s", __func__);
//}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [Student allocWithZone:zone];
}

@end
