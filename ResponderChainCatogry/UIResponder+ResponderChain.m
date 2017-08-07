//
//  UIResponder+ResponderChain.m
//  ResponderChain
//
//  Created by 魏信洋 on 2017/8/5.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "UIResponder+ResponderChain.h"

@implementation UIResponder (ResponderChain)

- (void)tp_ResponderChainEvent:(NSString *)action withObject:(NSDictionary *)object{
    [self.nextResponder tp_ResponderChainEvent:action withObject:object];
}

@end
