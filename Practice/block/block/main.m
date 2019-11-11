//
//  main.m
//  block
//
//  Created by Link on 2019/11/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        void (^blcok)(int) = ^(int a){
            NSLog(@"hi-%d", a);
        };
        blcok(5);
        
    }
    return 0;
}
