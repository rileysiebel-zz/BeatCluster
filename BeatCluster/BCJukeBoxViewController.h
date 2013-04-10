//
//  BCJukeBoxViewController.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCJukeBoxCell.h"

@interface BCJukeBoxViewController : UITableViewController<BCJukeBoxCellProtocol>

@property (nonatomic, strong) NSArray *songTitles;
@property (nonatomic, strong) NSArray *songArtists;
@property (nonatomic, strong) NSMutableArray *songThumbsUps;
@property (nonatomic, strong) NSMutableArray *songThumbsDowns;

@end
