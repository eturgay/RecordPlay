//
//  ViewController.h
//  Record and Play
//
//  Created by Apple on 14/12/15.
//  Copyright © 2015 Visne Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)Record:(id)sender;
- (IBAction)Play:(id)sender;
- (IBAction)Stop:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnRecord;
@property (weak, nonatomic) IBOutlet UIButton *btnPlay;
@property (weak, nonatomic) IBOutlet UIButton *btnStop;

@end

