//
//  BCJukeBoxViewController.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCJukeBoxViewController : UITableViewController

@property (nonatomic, strong) NSArray *songTitles;
@property (nonatomic, strong) NSArray *songArtists;
@property (nonatomic, strong) NSMutableArray *songThumbsUps;
@property (nonatomic, strong) NSMutableArray *songThumbsDowns;

-(void) thumbsUp:    (NSString *)songName;
-(void) thumbsDown:  (NSString *)songName;

@end
