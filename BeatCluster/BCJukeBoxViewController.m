//
//  BCJukeBoxViewController.m
//  BeatCluster
//
//  Created by Arthur Riley Siebel on 2/5/13.
//  Copyright (c) 2013 SyncSoft. All rights reserved.
//

#import "BCJukeBoxViewController.h"
#import "BCJukeBoxCell.h"
#import "BCJukeBoxDetailViewController.h"

@interface BCJukeBoxViewController ()

@end

@implementation BCJukeBoxViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _songTitles = @[@"Black Dog",
                    
                    @"Home",
                    
                    @"Let The Mermaids Flirt With Me"];
    
    _songArtists = @[@"Led Zeppelin",
                     
                     @"Edward Sharpe And The Magnetic Zeroes",
                     
                     @"Mississippi John Hurt"];
    
    _songThumbsUps = @[@"4", @"2", @"12"];
    
    _songThumbsDowns = @[@"2", @"7", @"1"];
    


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _songArtists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"jukeBoxTableCell";
    
    BCJukeBoxCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    // Configure the cell
    
    int row = [indexPath row];
    
    cell.titleLabel.text = _songTitles[row];
    
    cell.artistLabel.text = _songArtists[row];
    
    cell.thumbsUpCountLabel.text = _songThumbsUps[row];
    
    cell.thumbsDownCountLabel.text = _songThumbsDowns[row];
    
    
    
    return cell;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showJukeBoxDetailView"])
    {
        BCJukeBoxDetailViewController *detailViewController = [segue destinationViewController];
        NSIndexPath *myPath = [self.tableView indexPathForSelectedRow];
        int row = [myPath row];
        detailViewController.songDetailsModel = @[_songTitles[row], _songArtists[row], _songThumbsUps[row], _songThumbsDowns[row]];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
