//
//  InputHandler.m
//  MathGame
//
//  Created by Frances ZiyiFan on 4/30/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) parse{
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *userInput = [NSString stringWithUTF8String:inputChar];
    userInput = [userInput stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userInput;
}

@end
