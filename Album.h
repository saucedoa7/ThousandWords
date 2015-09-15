//
//  Album.h
//  ThousandWords
//
//  Created by Albert Saucedo on 9/14/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Album : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * name;

@end
