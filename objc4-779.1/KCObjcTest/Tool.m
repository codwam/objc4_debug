//
//  Tool.m
//  KCObjcTest
//
//  Created by Admin on 2020/7/1.
//

#import "Tool.h"
#import <objc/runtime.h>

@implementation Tool
+ (void)printMethods:(Class)cls {
    unsigned int count;
    Method *methods = class_copyMethodList(cls, &count);
    NSMutableString *string = [NSMutableString stringWithFormat:@"[ %@ ]: ", cls];
    for (unsigned int i = 0; i < count; i++) {
        SEL sel = method_getName(methods[i]);
        IMP imp = method_getImplementation(methods[i]);
        [string appendFormat:@"%@ - %p\n",NSStringFromSelector(sel), imp];
    }
    NSLog(@"%@", string);
}
@end
