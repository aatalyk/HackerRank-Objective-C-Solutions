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

#pragma CamelCase
-(void)camelCase {
    
    char str[100010];
    
    scanf("%s", str);
    
    int count = 1;
    
    for(int i = 0; i<strlen(str); i++) {
        if (str[i]>64 && str[i]<91) {
            count++;
        }
    }
    
    printf("%i", count);
}

#pragma Pangramm
-(void)pangramm {
    
    char *str = malloc(1010*sizeof(int));
    
    NSMutableString *uppercase = [NSMutableString stringWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
    NSMutableString *lowercase = [NSMutableString stringWithString:@"abcdefghijklmnopqrstuvwxyz"];
    
    fgets(str, 1010, stdin);
    
    NSString *string = [NSString stringWithFormat:@"%s", str] ;
    
    int count = 0;
    
    for(NSInteger i = 0; i<string.length; i++) {
        for(NSInteger j = 0; j<uppercase.length; j++) {
            if ([string characterAtIndex:i] == [uppercase characterAtIndex:j] ||
                [string characterAtIndex:i] == [lowercase characterAtIndex:j]) {
                [uppercase replaceCharactersInRange:NSMakeRange(j, 1) withString:@"*"];
                [lowercase replaceCharactersInRange:NSMakeRange(j, 1) withString:@"*"];
                count++;
            }
        }
    }

    if (count == uppercase.length) {
        printf("pangram");
    } else {
        printf("not pangram");
    }
}

@end
