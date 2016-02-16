//
//  HomeModel.m
//  CoreDataDemo
//
//  Created by Robert on 16/2/16.
//  Copyright © 2016年 Robert. All rights reserved.
//

#import "HomeModel.h"

@implementation HomeModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name" : @"name",
             @"address" : @"address",
             };
}

+ (NSString *)managedObjectEntityName{
    return @"Home";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey{
    return @{
             @"name" : @"name",
             @"address" : @"address",
             };
}
@end
