//
//  ScoreKeeper.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype) init{
    if(self){
        self.question = 0;
        self.score = 0;
    }
    return self;
}

- (void) addQuestion{
    self.question ++;
}
- (void) addScore{
    self.score ++;
}
- (void) result{
    float percentage = (float)self.score/(float)self.question*100;
    NSLog(@"score: %d right, %d wrong, ------ %.2f%%", self.score, (self.question-self.score), percentage);
}

@end
