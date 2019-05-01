//
//  main.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        while(gameOn){
            Question* question = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:question];
            NSString* userInput = [inputHandler parse];
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
            }else{
                [scoreKeeper addQuestion];
                NSInteger answer = [userInput integerValue];
                if([question checkAnswer: answer]){
                    [scoreKeeper addScore];
                }
                NSLog(@"%@", [questionManager timeOutput: question]);
            }
        }
        [scoreKeeper result];
    }
    return 0;
}
