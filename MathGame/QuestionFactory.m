//
//  QuestionFactory.m
//  MathGame
//
//  Created by Frances ZiyiFan on 5/1/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion{
    int random = arc4random_uniform(3);
    NSString* questionType = [_questionSubclassNames objectAtIndex:random];
    return [[NSClassFromString(questionType) alloc]init];
}

@end
