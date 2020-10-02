//
//  ViewController.h
//  HangManGame
//
//  Created by Damian Polzl <damianpolzl@gmail.com> on 9/23/20.
//  Copyright © 2020 Damian Polzl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSArray *word;
@property (nonatomic, strong) NSMutableString *randomWord;
@property (nonatomic, strong) NSMutableString *sofar;
@property (nonatomic, strong) IBOutlet UILabel *unknown;
@property (nonatomic, strong) IBOutlet UITextField *usrOption;
@property (nonatomic, strong) NSString *responseUsrOp;
@property (nonatomic, strong) NSMutableString *usedUsr;
@property (nonatomic, strong) IBOutlet UIButton *ok;
@property (nonatomic, strong) IBOutlet UIButton *play;
@property (nonatomic, strong) IBOutlet UILabel *alert;
@property (nonatomic, strong) IBOutlet UILabel *wordsEntered;
@property (nonatomic, strong) IBOutlet UILabel *WinnerOrGameover;

- (void) coreData;
- (void) setupInfo;
- (void) processInfo;
- (IBAction) goGame:(id)sender;
- (IBAction)userOption:(id)sender;


@end

