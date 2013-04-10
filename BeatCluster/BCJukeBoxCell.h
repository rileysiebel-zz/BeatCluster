//
//  BCJukeBoxCell.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BCJukeBoxCellProtocol <NSObject>

// TODO replace string with its own type
// Essentially, define Song class or FIND it
- (void)thumbsUp:(int)songIndex;
- (void)thumbsDown:(int)songIndex;
@end

@interface BCJukeBoxCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *thumbsUpCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *thumbsDownCountLabel;

@property (weak, nonatomic) id<BCJukeBoxCellProtocol> delegate;
@property (nonatomic) int songIndex;

- (IBAction)thumbsDown:(id)sender;
- (IBAction)thumbsUp:(id)sender;
@end
