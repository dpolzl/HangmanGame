//
//  ViewController.m
//  HangManGame
//
//  Created by Damian Polzl <damianpolzl@gmail.com> on 9/23/20.
//  Copyright © 2020 Damian Polzl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) coreData {
    self.word = [NSArray arrayWithObjects:@"superman", @"ironman", @"thor", @"hulk", @"wolverine", @"doctorstrange", nil];
}

- (void) setupInfo {
    
    [self coreData];
    self.sofar = [NSMutableString new];
    self.responseUsrOp = [NSString new];
    self.usedUsr = [NSMutableString new];
    
    if (self.word) {
        int randomNum = (arc4random() % (int)[self.word count]);
        self.randomWord = [self.word objectAtIndex:randomNum];
    }
    
    
    for (unsigned int i = 0; i < self.randomWord.length; ++i) {
        [self.sofar insertString:@"-" atIndex:i];
    }
    
}

- (void) processInfo {
    
    if (_responseUsrOp && [_responseUsrOp length] == 1) {
        for (int i = 0; i < [_randomWord length]; ++i) {
            if ( [_randomWord characterAtIndex:i] == [_responseUsrOp characterAtIndex:0] ) {
                [_sofar insertString:[NSString stringWithFormat:@"%c", [_randomWord characterAtIndex:i]] atIndex:i];
                [_sofar deleteCharactersInRange:NSMakeRange(i + 1, 1)];
            }
        }
    } else {
        if ([_randomWord isEqualToString:_responseUsrOp]) {
            _WinnerOrGameover.text = @"Winner :-)";
            _WinnerOrGameover.backgroundColor = [UIColor greenColor];
        } else {
            _WinnerOrGameover.text = @"Game Over :-(";
            _WinnerOrGameover.backgroundColor = [UIColor darkGrayColor];
        }
    }
    
    
}

- (IBAction) goGame:(id)sender {
    
    [self setupInfo];
    
    self.unknown.text = self.sofar;
    self.unknown.backgroundColor = [UIColor greenColor];
    
}

- (IBAction) userOption:(id)sender {
 
    _responseUsrOp = [_usrOption.text lowercaseString];
    if (_usedUsr && _responseUsrOp.length < 2 && ![_usedUsr containsString:_responseUsrOp]) {
        [_usedUsr appendString:_responseUsrOp];
        [self processInfo];
    } else if (_responseUsrOp.length > 1){
        [self processInfo];
    } else {
        _alert.text = @"The value has already been entered";
    }
    
    _unknown.text = _sofar;
    _wordsEntered.text = _usedUsr;
    
}

@end

