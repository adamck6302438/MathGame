//
//  SubtractionQuestion.m
//  MathGame
//
//  Created by Frances ZiyiFan on 5/1/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    // set super.answer here
    super.answer = self.leftValue - self.rightValue;
    // set super.question here
    super.question = [NSString stringWithFormat:@"%d - %d = ?",self.leftValue, self.rightValue];
    NSLog(@"%@", self.question);
}

@end
