//
//  BCJukeBoxCell.m
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import "BCJukeBoxCell.h"

@implementation BCJukeBoxCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}
 
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)thumbsDown:(id)sender {
    int oldValue = [[_thumbsDownCountLabel text] intValue];
    [_thumbsDownCountLabel setText:[NSString stringWithFormat: @"%d", (oldValue + 1)]];
    [_delegate thumbsDown:_songIndex];
}

- (IBAction)thumbsUp:(id)sender {
    int oldValue = [[_thumbsUpCountLabel text] intValue];
    [_thumbsUpCountLabel  setText:[NSString stringWithFormat: @"%d", (oldValue + 1)]];
    [_delegate thumbsUp:_songIndex];
}
@end
