//
//  UIResponder+ResponderChain.h
//  ResponderChain
//
//  Created by 魏信洋 on 2017/8/5.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (ResponderChain)

- (void)tp_ResponderChainEvent:(NSString *)action withObject:(NSDictionary *)object;

@end
