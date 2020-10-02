//
//  AppDelegate.h
//  HangManGame
//
//  Created by Damian Polzl <damianpolzl@gmail.com> on 9/23/20.
//  Copyright © 2020 Damian Polzl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Game;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) Game *game;

@end

