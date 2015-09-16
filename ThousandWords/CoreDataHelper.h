//
//  CoreDataHelper.h
//  ThousandWords
//
//  Created by Albert Saucedo on 9/15/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CoreDataHelper : NSObject
+(NSManagedObjectContext*)managedObjectContext;
@end
