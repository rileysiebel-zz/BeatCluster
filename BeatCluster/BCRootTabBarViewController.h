//
//  BCRootTabBarViewController.h
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/6/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCRootTabBarViewController : UITabBarController

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
