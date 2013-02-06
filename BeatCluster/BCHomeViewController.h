//
//  BCHomeViewController.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCHomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *albumImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumLabel;
@property (weak, nonatomic) IBOutlet UISlider *volumeSlider;

- (IBAction)previousSong:(id)sender;
- (IBAction)playPause:(id)sender;
- (IBAction)nextSong:(id)sender;
- (IBAction)volumeChanged:(id)sender;
@end
