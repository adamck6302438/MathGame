//
//  main.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS GAME!");
        BOOL gameOn = YES;
        ScoreKeeper* scoreKeeper = [[ScoreKeeper alloc] init];
        while(gameOn){
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            [question generateQuestion];
            //fgets(inputChar, 255, stdin);
            //NSString *userInput = [NSString stringWithUTF8String:inputChar];
            //userInput = [userInput stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString* userInput = [InputHandler parse];
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
            }else{
                [scoreKeeper addQuestion];
                NSInteger answer = [userInput integerValue];
                if([question checkAnswer: answer]){
                    [scoreKeeper addScore];
                }
            }
        }
        [scoreKeeper result];
    }
    return 0;
}
