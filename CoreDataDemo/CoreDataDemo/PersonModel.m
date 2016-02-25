//
//  PersonModel.m
//  CoreDataDemo
//
//  Created by Robert on 16/2/16.
//  Copyright © 2016年 Robert. All rights reserved.
//

#import "PersonModel.h"
#import "HomeModel.h"
#import "NSDictionary+MTLMappingAdditions.h"

@implementation PersonModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
//    return @{
//             @"name" : @"name",
//             @"age" : @"age",
//             @"home" : @"home"
//             };
    return [NSDictionary mtl_identityPropertyMapWithModel:self.class];
}

#pragma mark - JSON Transformer

+ (NSValueTransformer *)homeJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:HomeModel.class];
}


+ (NSString *)managedObjectEntityName{
    return @"Person";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey{
    return @{
             @"name" : @"name",
             @"age" : @"age",
             @"home" : @"home"
             };
}

@end
