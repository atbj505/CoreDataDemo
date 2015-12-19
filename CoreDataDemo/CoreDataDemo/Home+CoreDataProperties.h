//
//  Home+CoreDataProperties.h
//  CoreDataDemo
//
//  Created by Robert on 15/12/18.
//  Copyright © 2015年 Robert. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Home.h"

NS_ASSUME_NONNULL_BEGIN

@interface Home (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) Person *person;

@end

NS_ASSUME_NONNULL_END
