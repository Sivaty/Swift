//
//  Person.m
//  Qiushi
//
//  Created by Link on 2020/2/5.
//  Copyright © 2020 Link. All rights reserved.
//

#import "Person.h"
#import <UIKit/UIKit.h>

@implementation Person

- (void)test {
    
    UIApplication *app = [UIApplication sharedApplication];
    UIView *statusBar = [app valueForKey :@"statusBar"];
    NSLog(@"%@", statusBar);
}

@end
