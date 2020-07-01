//
//  Test.m
//  KCObjcTest
//
//  Created by Admin on 2020/7/1.
//

#import "Test.h"
#import "malloc/malloc.h"
#import <objc/runtime.h>

#import "MJClassInfo.h"
#import "Student.h"

// MARK: - Test1
@implementation Test (Test1)
struct NSObject_IMPL {
    Class isa;
};

+ (void)test1 {
//    NSObject *obj = [[NSObject alloc] init];
//    NSLog(@"%zd", class_getInstanceSize([obj class]));
//    NSLog(@"%zd", class_getInstanceSize([NSObject class]));
//    NSLog(@"%zd", malloc_size((__bridge void *)obj));
//    struct NSObject_IMPL *impl = (__bridge struct NSObject_IMPL *)(obj);
    
//    Student *stu = [Student new];
//    stu->_no = 10;
//    stu->_height = 11;
//
//    struct mj_objc_object *stuObject = (__bridge struct mj_objc_object *)stu;
//    struct mj_objc_class *stuClass = (__bridge struct mj_objc_class *)[Student class];
//    struct mj_objc_class *stuMetaClass = (__bridge struct mj_objc_class *)object_getClass([Student class]);
//
//    class_rw_t* stuClassData = stuClass->data();
//    class_rw_t* stuMetaClassData = stuMetaClass->data();
//
//    NSString *name = @"1";
//    stu.name = name;
//    stu.name = @"2";
//    [Student studentClassMethod];
//    [Student personClassMethod];
    
//    Student *stu = [[Student alloc] init];
//    struct mj_objc_class *stuObj = (__bridge struct mj_objc_class *)object_getClass(stu);
//    [NSObject printMethods:[stu class]];
//    [stu addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
//    stu.name = @"123";
//    [NSObject printMethods:object_getClass(stu)];
//    stuObj = (__bridge struct mj_objc_class *)object_getClass(stu);
//    auto data = stuObj->data();
//    [stu removeObserver:self forKeyPath:@"name"];
//    [NSObject printMethods:[stu class]];
    
    Student *stu = [[Student alloc] init];
//    [stu setValue:@"111" forKeyPath:@"name2"];
    [stu studentInstanceMethod];
}
@end

// MARK: - Test
@implementation Test
+ (void)test {
    [self test1];
}

+ (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@", change);
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"name"];
}
@end
