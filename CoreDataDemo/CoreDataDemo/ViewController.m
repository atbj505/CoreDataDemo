 //
//  ViewController.m
//  CoreDataDemo
//
//  Created by Robert on 15/12/16.
//  Copyright © 2015年 Robert. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Home.h"
#import "PersonModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",NSHomeDirectory());
    
    //导入字典
//    NSDictionary *personDic = @{
//                                @"name":@"Bob",
//                                @"age":@(20),
//                                @"home":@{
//                                            @"name":@"Shanghai",
//                                            @"address":@"Shanghai.China"
//                                        }
//                                };
//    
//    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
//        Person *importedPerson = [Person MR_importFromObject:personDic inContext:localContext];
//        [importedPerson log];
//        Person *person = [Person MR_findFirst];
//        NSLog(@"%@",person.home);
//    }];
    
    //导入数组
    NSArray *personArray = @[@{
                                 @"name":@"Jack",
                                 @"age":@(20),
                                 @"home":@{
                                         @"name":@"Shanghai",
                                         @"address":@"Shanghai.China"
                                         }
                                 },
                             @{
                                 @"name":@"alice",
                                 @"age":@(21),
                                 @"home":@{
                                         @"name":@"Beijing",
                                         @"address":@"Beijing.China"
                                         }}];
    
//    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
//        NSArray *importedPersons = [Person MR_importFromArray:personArray inContext:localContext];
//        [importedPersons enumerateObjectsUsingBlock:^(Person* obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            [obj log];
//        }];
//    }];
    
    NSError *error = nil;
    
    NSArray *persons = [MTLJSONAdapter modelsOfClass:[PersonModel class] fromJSONArray:personArray error:&error];
    
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
        for (PersonModel *person in persons) {
            NSError *error = nil;
            [MTLManagedObjectAdapter managedObjectFromModel:person insertingIntoContext:localContext error:&error];
        }
    } completion:^(BOOL success, NSError *error) {
        NSLog(@"%lu", (unsigned long)[Person MR_findAll].count);
    }];;
    
    
    __block NSArray *globalArray;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        globalArray = [Person MR_findAll];
    });
    
/*
    //增
    Home *home = [Home MR_createEntity];
    Person *person = [Person MR_createEntity];
    home.name = @"Beijing";
    home.address = @"Beijing. China";
    home.person = person;
    person.name = @"Robert";
    person.age = @(25);
    person.home = home;
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    //异步insert
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
        Home *home = [Home MR_createEntityInContext:localContext];
        Person *person = [Person MR_createEntityInContext:localContext];
        home.name = @"Beijing";
        home.address = @"Beijing. China";
        home.person = person;
        person.name = @"Andy";
        person.age = @(21);
        person.home = home;
    } completion:^(BOOL contextDidSave, NSError *error) {
        NSLog(@"%d,%@",contextDidSave, error);
    }];
 
    //查
    //查询所有
    Person *tempPerson = nil;
    
    NSArray *persons = [Person MR_findAll];
    tempPerson = persons[0];
    [tempPerson log];
    
    //查询所有并排序
    NSArray *personSort = [Person MR_findAllSortedBy:@"age" ascending:YES];
    tempPerson = personSort[0];
    [tempPerson log];
    
    //指定属性升降序
    personSort = [Person MR_findAllSortedBy:@"name:NO,age" ascending:YES];
    tempPerson = personSort[0];
    [tempPerson log];
    
    //查询指定条件
    NSArray *personAttributes = [Person MR_findByAttribute:@"age" withValue:@(25)];
    tempPerson = personAttributes[0];
    [tempPerson log];
    
    Person *personAttribute = [Person MR_findFirstByAttribute:@"age" withValue:@(25)];
    tempPerson = personAttribute;
    [tempPerson log];
    
    NSPredicate *peopleFilter = [NSPredicate predicateWithFormat:@"age IN %@", @[@(23), @(25)]];
    NSArray *people = [Person MR_findAllWithPredicate:peopleFilter];
    tempPerson = people[0];
    [tempPerson log];
    
    //查询首个
    Person *firstPerson = [Person MR_findFirst];
    tempPerson = firstPerson;
    [tempPerson log];
    
    //查询数量
    NSUInteger count = [Person MR_countOfEntities];
    NSLog(@"count:%d",count);
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@", @"Robert"];
    NSNumber *mostAge  = [Person MR_aggregateOperation:@"max:"
                                                onAttribute:@"age"
                                              withPredicate:predicate];
    NSLog(@"%d",[mostAge integerValue]);
    
    //改
    firstPerson.age = @(26);
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    Person *updatesPerson = [Person MR_findFirst];
    tempPerson = updatesPerson;
    [tempPerson log];

    //删
    [updatesPerson MR_deleteEntity];
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    [Person MR_truncateAll];
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
*/
}

@end
