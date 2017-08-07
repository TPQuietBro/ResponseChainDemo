//
//  ViewController.m
//  ResponderChain
//
//  Created by 魏信洋 on 2017/8/5.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MyView *myView = [[MyView alloc] init];
    myView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:myView];
    
}
/*
    根绝响应链的传递规则(从后开始遍历子控件),self.view可以接收到子类传递过来的事件
    需要对事件进行过滤,做出不同的反应
 */
- (void)tp_ResponderChainEvent:(NSString *)action withObject:(NSDictionary *)object{
    
    if ([action isEqualToString:TPEventTapView]) {
        NSLog(@"MyView传入的值:%@",object);
    }else if ([action isEqualToString:TPEventTapLabel]){
        NSLog(@"MyLabel传入的值:%@",object);
    }
    //以上一串逻辑,可以通过策略模式来进行逻辑上的分离,提供一个context类,针对不同的策略给出相应的处理.
}

- (void)invoke{
    NSString *argument1 = @"123";
    NSMethodSignature *ms = [ViewController instanceMethodSignatureForSelector:@selector(getArgument:)];
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:ms];
    invocation.target = self;
    invocation.selector = @selector(getArgument:);
    
    [invocation setArgument:&argument1 atIndex:2];
    
    [invocation invoke];
}

- (void)getArgument:(NSString *)argu{
    NSLog(@"---%@",argu);
}

@end
