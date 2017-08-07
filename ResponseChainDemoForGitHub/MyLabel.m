//
//  MyLabel.m
//  ResponderChain
//
//  Created by 魏信洋 on 2017/8/5.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.text = @"123";
        self.textColor = [UIColor redColor];
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test:)];
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (void)test:(UITapGestureRecognizer *)tap{
    
    /*
     事件开始传递,从mylabel传递到父view,这里谁是mylabel的父view就可以接收到这个事件,一层层向上,谁实现了tp_ResponderChainEvent谁就可以接收这个事件
     */
    [self tp_ResponderChainEvent:TPEventTapLabel withObject:@{@"name" : @"label"}];
    
}

@end
