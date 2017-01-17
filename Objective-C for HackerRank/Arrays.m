//
//  Solution.m
//  Objective-C for HackerRank
//
//  Created by Admin on 1/18/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Arrays.h"

@implementation Arrays

#pragma Arrays-DS
-(void)arraysDS {
    
    int n;
    
    scanf("%i", &n);
    
    int arr[n+10];
    
    for(int i = 0; i<n; i++) {
        scanf("%i", &arr[i]);
    }
    
    for(int i = n-1; i>=0; i--) {
        printf("%i ", arr[i]);
    }
}

#pragma Two Dimensional Array - DS
-(void)twoDArrayDS {
    
    int arr[10][10];
    
    int maxx = INT_MIN;
    
    for(int i = 0; i<6; i++) {
        for(int j = 0; j<6; j++) {
            scanf("%i", &arr[i][j]);
        }
    }
    
    for(int i = 0; i<4; i++) {
        for(int j = 0; j<4; j++) {
            int s = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
            if (s>maxx) {
                maxx = s;
            }
        }
    }
    
    printf("%i", maxx);
}

#pragma Dynamic Array
-(void)dynamicArray {
    
    NSMutableArray *seqList = [NSMutableArray new];
    
    int n, q;
    
    scanf("%i%i", &n, &q);
    
    for(int i = 0; i<n; i++) {
        NSMutableArray *seq = [NSMutableArray new];
        [seqList addObject:seq];
    }
    
    int lastAns = 0;
    
    for(int i = 0; i<q; i++) {
        int a, x, y;
        scanf("%i%i%i", &a, &x, &y);
        
        int index = (x^lastAns)%n;
        if(a == 1) {
            [seqList[index] addObject:[NSNumber numberWithInt:y]];
        } else {
            int size = [[NSNumber numberWithUnsignedInteger:[seqList[index] count]] intValue];
            lastAns = [seqList[index][y%size] intValue];
            printf("%i", lastAns);
        }
    }
}

#pragma Left Rotation
-(void)leftRotation {
    
    int n, d;
    
    scanf("%i%i", &n, &d);
    
    int arr[n+10];
    
    for(int i = 1; i<=n; i++) {
        scanf("%i", &arr[i]);
    }
    
    if (d>n) {
        d = d%n;
    }
    
    for(int i = d+1; i<=n; i++) {
        printf("%i ", arr[i]);
    }
    
    for(int i = 1; i<=d; i++) {
        printf("%i ", arr[i]);
    }
}

#pragma Sparse Arrays
-(void)sparseArrays {
    
    int n, q;
    
    NSMutableArray *narray = [NSMutableArray new];
    NSMutableArray *qarray = [NSMutableArray new];
    
    scanf("%i", &n);
    
    for(int i = 0; i<n; i++) {
        char str[30];
        scanf("%s", str);
        [narray addObject:[NSString stringWithUTF8String:str]];
    }
    
    scanf("%i", &q);
    
    for(int i = 0; i<q; i++) {
        char str[30];
        scanf("%s", str);
        [qarray addObject:[NSString stringWithUTF8String:str]];
    }
    
    for(int i = 0; i<q; i++) {
        int count = 0;
        for(int j = 0; j<n; j++) {
            if ([qarray[i] isEqualToString:narray[j]]) {
                count++;
            }
        }
        printf("%i\n", count);
        count = 0;
    }
}



@end









