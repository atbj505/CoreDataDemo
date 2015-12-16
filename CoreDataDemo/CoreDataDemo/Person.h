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
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;
// Insert code here to declare functionality of your managed object subclass
@end

NS_ASSUME_NONNULL_END

//#import "Person+CoreDataProperties.h"
