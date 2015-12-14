//
//  AudioOperations.h
//  VoiceRecordPlayObjectiveC
//
//  Created by Apple on 20/10/15.
//  Copyright (c) 2015 B. Lake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioOperations : NSObject <AVAudioRecorderDelegate, AVAudioPlayerDelegate>


@property (strong, nonatomic) AVAudioRecorder *audioRecorder;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@property NSString *soundFilePath;

-(void) SetUp;
-(void) StartPlay;
-(void) Stop;
-(void) StartRecord;
-(void) GetAudioData:(float*) array;

@end
