//
//  BCJukeBoxDetailViewController.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCJukeBoxDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;

// Bad way to have a model, use CoreData
// [0] title
// [1] artist
// [2] thumbsUps
// [3] thumbsDown
@property (nonatomic, strong) NSArray *songDetailsModel;

@end
