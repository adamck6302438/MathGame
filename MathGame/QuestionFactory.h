//
//  QuestionFactory.h
//  MathGame
//
//  Created by Frances ZiyiFan on 5/1/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray* questionSubclassNames;

-(Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
