//
//  PersonModel.h
//  CoreDataDemo
//
//  Created by Robert on 16/2/16.
//  Copyright © 2016年 Robert. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MTLManagedObjectAdapter.h"

@class HomeModel;

@interface PersonModel : MTLModel <MTLJSONSerializing, MTLManagedObjectSerializing>

@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) HomeModel *home;

@end
