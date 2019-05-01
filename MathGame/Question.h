//
//  AdditionQuestion.h
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic, copy) NSString* question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, assign) NSInteger leftValue;


- (void) generateQuestion;
- (BOOL) checkAnswer: (NSInteger) userAnswer;
- (NSTimeInterval) answerTime;

@end

NS_ASSUME_NONNULL_END
