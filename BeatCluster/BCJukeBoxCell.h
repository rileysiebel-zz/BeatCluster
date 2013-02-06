//
//  BCJukeBoxCell.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCJukeBoxCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *thumbsUpCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *thumbsDownCountLabel;

- (IBAction)thumbsDown:(id)sender;
- (IBAction)thumbsUp:(id)sender;
@end
