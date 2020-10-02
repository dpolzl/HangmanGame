//
//  Game.h
//  HangManGame
//
//  Created by Damian Polzl <damianpolzl@gmail.com> on 9/23/20.
//  Copyright © 2020 Damian Polzl. All rights reserved.
//

#ifndef Game_h
#define Game_h

#import <UIKit/UIKit.h>

@interface Game : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *logo;
@property (nonatomic, strong) IBOutlet UIButton *go;

@end

#endif /* Game_h */
