//
//  AdditionQuestion.h
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property (nonatomic, assign) NSString* question;
@property (nonatomic, assign) NSInteger answer;

- (void) generateQuestion;
- (BOOL) checkAnswer: (NSInteger) userAnswer;

@end

NS_ASSUME_NONNULL_END
