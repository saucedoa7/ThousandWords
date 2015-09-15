//
//  AlbumsViewController.h
//  ThousandWords
//
//  Created by Albert Saucedo on 9/14/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumsViewController : UIViewController
@property (strong, nonatomic) NSMutableArray *albums;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
