//
//  Strings.m
//  Objective-C for HackerRank
//
//  Created by Admin on 1/18/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Strings.h"

@implementation Strings

#pragma Super Reduced String
-(void)superReducedString {
    
    char str[110];
    
    scanf("%s", str);
    
    NSMutableArray *stack = [NSMutableArray new];
    
    for(int i = 0; i<strlen(str); i++) {
        if ([stack count]==0) {
            [stack addObject:[NSString stringWithFormat:@"%c", str[i]]];
        } else {
            if ([[stack lastObject] isEqualToString:[NSString stringWithFormat:@"%c", str[i]]]) {
                [stack removeLastObject];
            } else {
                [stack addObject:[NSString stringWithFormat:@"%c", str[i]]];
            }
        }
    }
    
    if ([stack count] == 0) {
        printf("Empty String");
    } else {
        for (int i = 0; i<[stack count]; i++) {
            printf("%s", [stack[i] UTF8String]);
        }
    }
}

@end
