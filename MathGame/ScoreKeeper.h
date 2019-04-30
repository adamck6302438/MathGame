//
//  ScoreKeeper.h
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger question;
@property (nonatomic, assign) NSInteger score;

- (void) addQuestion;
- (void) addScore;
- (void) result;

@end

NS_ASSUME_NONNULL_END
