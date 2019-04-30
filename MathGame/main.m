//
//  main.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS GAME!");
        BOOL gameOn = YES;
        char inputChar[255];
        while(gameOn){
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            [question generateQuestion];
            fgets(inputChar, 255, stdin);
            NSString *userInput = [NSString stringWithUTF8String:inputChar];
            userInput = [userInput stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
            }else{
                NSInteger answer = [userInput integerValue];
                [question checkAnswer: answer];
            }
        }
    }
    return 0;
}
