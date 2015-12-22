//
//  Person.m
//  CoreDataDemo
//
//  Created by Robert on 15/12/18.
//  Copyright © 2015年 Robert. All rights reserved.
//

#import "Person.h"
#import "Home.h"

@implementation Person

// Insert code here to add functionality to your managed object subclass
- (void)log {
    NSLog(@"name:%@ age:%@ home:%@",self.name,self.age,self.home);
}
@end
