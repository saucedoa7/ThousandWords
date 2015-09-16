//
//  CoreDataHelper.m
//  ThousandWords
//
//  Created by Albert Saucedo on 9/15/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "CoreDataHelper.h"

@implementation CoreDataHelper
+(NSManagedObjectContext *)managedObjectContext{

    NSManagedObjectContext *context = nil;

    id delegate = [[UIApplication sharedApplication] delegate];

    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }

    return context;

}
@end
