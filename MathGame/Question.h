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
@property (nonatomic, strong) NSString* question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;


- (void) generateQuestion;
- (BOOL) checkAnswer: (NSInteger) userAnswer;
- (NSTimeInterval) answerTime;

@end

NS_ASSUME_NONNULL_END
