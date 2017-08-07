//
//  MyView.m
//  ResponderChain
//
//  Created by 魏信洋 on 2017/8/5.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "MyView.h"
#import "MyLabel.h"



@implementation MyView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor orangeColor];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test:)];
        [self addGestureRecognizer:tap];
        
        MyLabel *label = [[MyLabel alloc] init];
        label.frame = CGRectZero;
        [label sizeToFit];
        [self addSubview:label];

    }
    return self;
}

- (void)test:(UITapGestureRecognizer *)tap{
    
    /*
     事件开始传递,从myview传递到父view,这里谁是myview的父view就可以接收到这个事件
     */
    [self tp_ResponderChainEvent:TPEventTapView withObject:@{@"name" : @"view"}];
    
}

@end
