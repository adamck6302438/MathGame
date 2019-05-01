//
//  AdditionQuestion.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        // do something here!
        self.leftValue = arc4random_uniform(90)+10;
        self.rightValue = arc4random_uniform(90)+10;
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion{
    
}

- (BOOL) checkAnswer: (NSInteger) userAnswer{
    if(userAnswer == self.answer){
        NSLog(@"Correct!");
        return true;
    }else{
        NSLog(@"Wrong!");
        return false;
    }
}

- (NSInteger) answer{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime{
    NSTimeInterval interval = [_endTime timeIntervalSinceDate: _startTime];
    return interval;
}

@end
