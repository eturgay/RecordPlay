//
//  ViewController.m
//  Record and Play
//
//  Created by Apple on 14/12/15.
//  Copyright © 2015 Visne Software. All rights reserved.
//

#import "ViewController.h"
#import "AudioOperations.h"

@interface ViewController ()

@property AudioOperations *audioOp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _audioOp = [[AudioOperations alloc] init];
    [_audioOp SetUp];
    _btnPlay.enabled = false;
    _btnStop.enabled = false;
    _btnRecord.enabled = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Record:(id)sender {
    [_audioOp StartRecord];
    _btnPlay.enabled = false;
    _btnStop.enabled = true;
    _btnRecord.enabled = false;
}

- (IBAction)Play:(id)sender {
    [_audioOp StartPlay];
    _btnPlay.enabled = false;
    _btnStop.enabled = true;
    _btnRecord.enabled = false;
}

- (IBAction)Stop:(id)sender {
    [_audioOp Stop];
    _btnPlay.enabled = true;
    _btnStop.enabled = true;
    _btnRecord.enabled = true;

}
@end
