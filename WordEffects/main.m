//
//  main.m
//  WordEffects
//
//  Created by Shine Chaudhuri on 2015-09-28.
//  Copyright (c) 2015 Shine Chaudhuri. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
            
        char text;
        char num;
            
        NSLog(@"Please enter at least two words");
        fgets(&text, 255, stdin);

        NSString *textString = [NSString stringWithUTF8String:&text];
        textString = [textString stringByReplacingOccurrencesOfString:@"\n" withString:@""];

        NSLog(@"Please enter the number associated with the operation you want");
        NSLog(@"1. Uppercase");
        NSLog(@"2. Lowercase");
        NSLog(@"3. Numberize");
        NSLog(@"4. Canadianize");
        NSLog(@"5. Respond");
        NSLog(@"6. De-space-It");
        fgets(&num, 255, stdin);

        if (num == '1') {
            NSLog(@"%@",[textString uppercaseString]);
        }
        
        if (num == '2') {
            NSLog(@"%@",[textString lowercaseString]);
        }
        
        if (num == '3') {
            NSLog(@"%i",[textString intValue]);
        }
        
        if (num == '4') {
            NSLog(@"%@",[textString stringByAppendingString:@",eh?"]);
        }
        
        if (num == '5') {
            if ([textString hasSuffix:@"!"]) {
                NSLog(@"Woa, calm down!");
            }
            else if ([textString hasSuffix:@"?"]) {
                NSLog(@"I don't know");
            }
        }
        
        if (num == '6') {
            NSLog(@"%@",[textString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
        }
    }
    return 0;
    }
}
