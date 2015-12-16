//
//  ViewController.m
//  CoreDataDemo
//
//  Created by Robert on 15/12/16.
//  Copyright © 2015年 Robert. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",NSHomeDirectory());
    
    //增
    Person *person = [Person MR_createEntity];
    person.name = @"Robert";
    person.age = @(25);
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    //异步insert
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
        Person *person = [Person MR_createEntityInContext:localContext];
        person.name = @"Andy";
        person.age = @(21);
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
    
    NSPredicate *peopleFilter = [NSPredicate predicateWithFormat:@"age IN %@", @[@(23), @(26)]];
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
