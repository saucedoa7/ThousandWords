//
//  AlbumsViewController.m
//  ThousandWords
//
//  Created by Albert Saucedo on 9/14/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "AlbumsViewController.h"
#import "Album.h"

@interface AlbumsViewController () <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@end

@implementation AlbumsViewController

-(NSMutableArray *)albums{
    if (!_albums) _albums = [NSMutableArray new];
    return _albums;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)addAlbum:(UIBarButtonItem *)sender {

    UIAlertView *newAlbumAlert = [[UIAlertView alloc] initWithTitle:@"Add Album"
                                                            message:@":)"
                                                           delegate:self
                                                  cancelButtonTitle:@"Cancel"
                                                  otherButtonTitles:@"Add", nil];

    [newAlbumAlert setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [newAlbumAlert show];
}

#pragma mark Helpers

-(Album *)albumWithAlbum:(NSString *)name{
    id delegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [delegate managedObjectContext];

    Album *album = [NSEntityDescription insertNewObjectForEntityForName:@"Album"
                                                 inManagedObjectContext:context];

    album.name = name;
    album.date = [NSDate date];

    NSError *error = nil;

    if (![context save:&error]) {
        //We have an error bruh
    }
    return album;
}

#pragma mark Alert Delegates

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        NSString *alertText = [alertView textFieldAtIndex:0].text;

        [self.albums addObject:[self albumWithAlbum:alertText]];
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:[self.albums count]-1 inSection:0]]
                              withRowAnimation:UITableViewRowAnimationRight];

/*
        Album *newAlbum = [self albumWithAlbum:alertText];
        [self.albums addObject:newAlbum];
        [self.tableView reloadData];
*/
    }
}

#pragma mark TableView Delegates

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"albumCellID" forIndexPath:indexPath];

    Album *selectedAlbum = self.albums[indexPath.row];
    cell.textLabel.text = selectedAlbum.name;
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.albums.count;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
