//
//  Warmup.m
//  Objective-C for HackerRank
//
//  Created by Admin on 1/20/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Warmup.h"

@implementation Warmup

#pragma Compare The Triplets
-(void)compareTheTriplets {
    
    int alice[10];
    int bob[10];
    
    int alice_count = 0;
    int bob_count = 0;
    
    for(int i = 0; i<3; i++) {
        scanf("%i", &alice[i]);
    }
    
    for(int i = 0; i<3; i++) {
        scanf("%i", &bob[i]);
    }
    
    for(int i = 0; i<3; i++) {
        if(alice[i]>bob[i]) {
            alice_count++;
        } else if (bob[i]>alice[i]) {
            bob_count++;
        }
    }
    
    printf("%i %i", alice_count, bob_count);
}

#pragma Simple Array Sum
-(void)simpleArraySum {
    
    int n, a;
    int sum = 0;
    
    scanf("%i", &n);
    
    for(int i = 0; i<n; i++) {
        scanf("%i", &a);
        sum = sum + a;
    }
    
    printf("%i", sum);
}

#pragma Diagonal Difference
-(void)diagonalDifference {
    
    int n;
    scanf("%i", &n);
    
    int arr[n+10][n+10];
    
    for(int i = 0; i<n; i++) {
        for(int j = 0; j<n; j++) {
            scanf("%i", &arr[i][j]);
        }
    }
    
    int diagonal_first = 0;
    int diagonal_second = 0;
    
    for(int i = 0; i<n; i++) {
        diagonal_first = diagonal_first + arr[i][i];
        diagonal_second = diagonal_second + arr[i][n-1-i];
    }
    
    int result = abs(diagonal_first-diagonal_second);
    
    printf("%i", result);
}

#pragma Plus Minus 
-(void)plusMinus {
    
    int n;
    int a;
    
    scanf("%i", &n);
    
    float plus = 0;
    float minus = 0;
    float zero = 0;
    
    for(int i = 0; i<n; i++) {
        scanf("%i", &a);
        if (a > 0) {
            plus++;
        } else if (a<0) {
            minus++;
        } else {
            zero++;
        }
    }
    
    printf("%0.6f\n%0.6f\n%0.6f", plus/n, minus/n, zero/n);
}

#pragma Staircase
-(void)stairCase {
    
    int n;
    scanf("%i", &n);
    
    for(int i = 1; i<=n; i++) {
        for(int j = 1; j<=n-i; j++) {
            printf(" ");
        }
        for(int j = n-i; j<=n-1; j++) {
            printf("#");
        }
        printf("\n");
    }
}

#pragma Time Conversion
-(void)timeConversion {
    
    char *str = malloc(10*sizeof(int));
    
    scanf("%s", str);
    
    int first = str[0] - '0';
    int second = str[1] - '0';
    
    if((first == 1) && (second == 2)) {
        if(str[8] == 'P' ) {
            printf("12");
        } else {
            printf("00");
        }
        for(int i = 2; i<8; i++) {
            printf("%c", str[i]);
        }
    } else {
        if(str[8] == 'P' ) {
            int time = first*10 + second + 12;
            printf("%i", time);
            for(int i = 2; i<8; i++) {
                printf("%c", str[i]);
            }
        } else {
            for(int i = 0; i<8; i++) {
                printf("%c", str[i]);
            }
        }
    }
}

#pragma mark - Circular Array Rotation
-(void)circularArrayRotation {
    
    long long int n;
    long long int k;
    long long int q;
    scanf("%lli %lli %lli",&n,&k,&q);
    long long int a[n];
    for(int a_i = 0; a_i < n; a_i++){
        scanf("%lli",&a[a_i]);
    }
    k = k%n;
    for(int a0 = 0; a0 < q; a0++){
        long long int m;
        scanf("%lli",&m);
        long long int index = n - k + m;
        if (index>=n) index = index%n;
        printf("%lli\n", a[index]);
    }
}

@end
