//
//  UIViewController+ABCC.m
//  OCDemo
//
//  Created by shengchang-249 on 2022/3/7.
//

#import "UIViewController+ABCC.h"
#import "objc/runtime.h"

@implementation UIViewController (ABCC)

+ (void)load {
    static dispatch_once_t t;
    dispatch_once(&t, ^{
        Method oriViewWill = class_getInstanceMethod(UIViewController.class, @selector(viewWillAppear:));
        Method newViewWill = class_getInstanceMethod(UIViewController.class, @selector(my_viewWillAppear:));
        method_exchangeImplementations(oriViewWill, newViewWill);
    });

}

-(void)my_viewWillAppear:(BOOL)animated {
//    [self my_viewWillAppear: animated];
}
@end
