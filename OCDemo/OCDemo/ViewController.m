//
//  ViewController.m
//  OCDemo
//
//  Created by shengchang-249 on 2022/2/22.
//

#import "ViewController.h"
#import "objc/runtime.h"
#import <os/lock.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    os_unfair_lock lock = OS_UNFAIR_LOCK_INIT;
    os_unfair_lock_trylock(&lock);
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
}


@end




