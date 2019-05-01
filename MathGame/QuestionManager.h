//
//  QuestionManager.h
//  MathGame
//
//  Created by Frances ZiyiFan on 5/1/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray* questions;
@property (nonatomic, assign) double totalTime;

- (NSString *)timeOutput: (Question*) question;

@end

NS_ASSUME_NONNULL_END
