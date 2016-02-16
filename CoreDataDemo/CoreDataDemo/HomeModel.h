//
//  HomeModel.h
//  CoreDataDemo
//
//  Created by Robert on 16/2/16.
//  Copyright © 2016年 Robert. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MTLManagedObjectAdapter.h"

@interface HomeModel : MTLModel <MTLJSONSerializing, MTLManagedObjectSerializing>

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *address;

@end
