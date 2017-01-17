//
//  Strings.m
//  Objective-C for HackerRank
//
//  Created by Admin on 1/18/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Strings.h"

@implementation Strings

-(void)superReducedString {
    
    char str[110];
    
    scanf("%s", str);
    
    int i = 0;
    
    while(i<strlen(str)-1) {
        
        if(str[i] == str[i+1]) {
            i++;
        } else {
            printf("%c", str[i]);
        }
        
        i++;
    }
}

@end
