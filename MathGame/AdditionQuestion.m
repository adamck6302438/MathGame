//
//  AdditionQuestion.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        // do something here!
        NSInteger _n1 = arc4random_uniform(90)+10;
        NSInteger _n2 = arc4random_uniform(90)+10;
        self.question = [NSString stringWithFormat: @"%d + %d = ?",_n1,_n2];
        self.answer = _n1+_n2;
    }
    return self;
}

- (void) generateQuestion{
    NSLog(@"%@", self.question);
}

- (void) checkAnswer: (NSInteger) userAnswer{
    if(userAnswer == self.answer){
        NSLog(@"Correct!");
    }else{
        NSLog(@"Wrong!");
    }
}

@end
