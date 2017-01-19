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

#pragma Caesar Cipher
-(void)caesarCipher {
    
    char *str = malloc(110*sizeof(int));
    
    int n, k;
    
    scanf("%i %s %i", &n, str, &k);
    
    NSString *string = [NSString stringWithFormat:@"%s", str];
    
    for(NSInteger i = 0; i<string.length; i++) {
        int asciiCode = [string characterAtIndex:i];
        if(asciiCode>64 && asciiCode<91) {
            asciiCode = asciiCode + k;
            while (asciiCode>90) {
                asciiCode = asciiCode%90 + 64;
            }
        }
        if(asciiCode>96 && asciiCode<123) {
            asciiCode = asciiCode + k;
            while (asciiCode>122) {
                asciiCode = asciiCode%122+96;
            }
        }
        NSString *new_string = [NSString stringWithFormat:@"%c", asciiCode];
        printf("%s", [new_string UTF8String]);
    }
}

#pragma Mars Exploration
-(void)marsExploration {
    
    char *str = malloc(110*sizeof(int));
    
    scanf("%s", str);
    
    NSString *message = [NSString stringWithFormat:@"%s", str];
    
    int count = 0;
    
    for(NSInteger i = 0; i<message.length-2; i=i+3) {
        if([message characterAtIndex:i] != 'S') {
            count++;
        }
        if([message characterAtIndex:i+1] != 'O') {
            count++;
        }
        if([message characterAtIndex:i+2] != 'S') {
            count++;
        }
    }
    
    printf("%i", count);
}

#pragma Funny String
-(void)funnyString {
    
    char *str = malloc(10010*sizeof(int));
    
    BOOL isFunny = true;
    
    int t;
    
    scanf("%i", &t);
    
    for(int i = 0; i<t; i++) {
        scanf("%s", str);
        NSString *string = [NSString stringWithFormat:@"%s", str];
        isFunny = true;
        for(NSInteger i = string.length-1; i>0; i--) {
            int left_side = abs([string characterAtIndex:i]-[string characterAtIndex:i-1]);
            int right_side = abs([string characterAtIndex:string.length-1-i]-[string characterAtIndex:string.length-i]);
            if (left_side!=right_side) {
                isFunny = false;
            }
        }
        printf("\n");
        if (isFunny) printf("Funny");
        else printf("Not Funny");
    }
}

#pragma Gem Stones
-(void)gemStones {
    
    char *str = malloc(110*sizeof(int));
    
    int n;
    int arr[30];
    
    for(int i = 0; i<26; i++) {
        arr[i] = 0;
    }
    
    scanf("%i", &n);
    
    for(int i = 0; i<n; i++) {
        scanf("%s", str);
        NSMutableString *lowercase = [NSMutableString stringWithString:@"abcdefghijklmnopqrstuvwxyz"];
        NSMutableString *string = [NSMutableString stringWithFormat:@"%s", str];
        for(NSInteger j = 0; j<string.length; j++) {
            for(NSInteger k = 0; k<lowercase.length; k++) {
                if ([string characterAtIndex:j] == [lowercase characterAtIndex:k]) {
                    arr[k]++;
                    [lowercase replaceCharactersInRange:NSMakeRange(k, 1) withString:@"*"];
                }
            }
        }
    }
    
    int count = 0;
    
    for(int i = 0; i<26; i++) {
        if(arr[i] == n) {
            count++;
        }
    }
    
    printf("%i", count);
}

#pragma Alternating Characters
-(void)alternatingCharacters {
    
    char *str = malloc(100010*sizeof(int));
    
    int t;
    
    scanf("%i", &t);
    
    for(int i = 0; i<t; i++) {
        scanf("%s", str);
        NSMutableString *string = [NSMutableString stringWithFormat:@"%s", str];
        int count = 0;
        for(int i = 0; i<string.length-1; i++) {
            if ([string characterAtIndex:i] == [string characterAtIndex:i+1]) {
                count++;
            }
        }
        printf("%i\n", count);
    }
}

#pragma Beautiful Binary String
-(void)beatifulBinaryString {
    
    char *str = malloc(110*sizeof(int));
    
    int n;
    
    scanf("%i %s", &n, str);
    
    NSString *string = [NSString stringWithFormat:@"%s", str];
    
    int i = 0, count = 0;
    
    while(i<n-2) {
        
       if([string characterAtIndex:i] == '0' &&
          [string characterAtIndex:i+1] == '1' &&
          [string characterAtIndex:i+2] == '0') {
           count++;
           i = i+2;
       }
       i++;
    }
    
    printf("%i", count);
}

@end
