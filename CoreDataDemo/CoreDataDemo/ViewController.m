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
    
    //查
    //查询所有
    Person *tempPerson = nil;
    
    NSArray *persons = [Person MR_findAll];
    tempPerson = persons[0];
    NSLog(@"name:%@ age:%@",tempPerson.name,tempPerson.age);
    
    //查询所有并排序
    NSArray *personSort = [Person MR_findAllSortedBy:@"age" ascending:YES];
    tempPerson = personSort[0];
    NSLog(@"name:%@ age:%@",tempPerson.name,tempPerson.age);
    
    //查询指定条件
    NSArray *personAttribute = [Person MR_findByAttribute:@"age" withValue:@(25)];
    tempPerson = personAttribute[0];
    NSLog(@"name:%@ age:%@",tempPerson.name,tempPerson.age);
    
    //查询首个
    Person *firstPerson = [Person MR_findFirst];
    tempPerson = firstPerson;
    NSLog(@"name:%@ age:%@",tempPerson.name,tempPerson.age);
    
    //改
    firstPerson.age = @(26);
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    Person *updatesPerson = [Person MR_findFirst];
    tempPerson = updatesPerson;
    NSLog(@"name:%@ age:%@",tempPerson.name,tempPerson.age);
    
    //删
    [updatesPerson MR_deleteEntity];
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
