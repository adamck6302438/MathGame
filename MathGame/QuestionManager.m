//
//  QuestionManager.m
//  MathGame
//
//  Created by Frances ZiyiFan on 5/1/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput: (Question*) question{
    _totalTime += [question answerTime];
    return [NSString stringWithFormat: @"total time: %.2f s, average time: %.2f s", _totalTime, (_totalTime/_questions.count)];
}

@end
