//
//  Student.h
//  KCObjcTest
//
//  Created by Admin on 2020/7/1.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person<NSCopying> {
@public
    int _no;
    int _height;
}
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *name2;

- (void)studentInstanceMethod;
+ (void)studentClassMethod;
@end

NS_ASSUME_NONNULL_END
