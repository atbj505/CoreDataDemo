//
//  Person.h
//  CoreDataDemo
//
//  Created by Robert on 15/12/16.
//  Copyright © 2015年 Robert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
- (void)log;
@end

NS_ASSUME_NONNULL_END

#import "Person+CoreDataProperties.h"
