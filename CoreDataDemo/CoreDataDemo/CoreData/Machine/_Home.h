// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Home.h instead.

#import <CoreData/CoreData.h>

extern const struct HomeAttributes {
	__unsafe_unretained NSString *address;
	__unsafe_unretained NSString *name;
} HomeAttributes;

extern const struct HomeRelationships {
	__unsafe_unretained NSString *person;
} HomeRelationships;

@class Person;

@interface HomeID : NSManagedObjectID {}
@end

@interface _Home : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HomeID* objectID;

@property (nonatomic, strong) NSString* address;

//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Person *person;

//- (BOOL)validatePerson:(id*)value_ error:(NSError**)error_;

@end

@interface _Home (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveAddress;
- (void)setPrimitiveAddress:(NSString*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (Person*)primitivePerson;
- (void)setPrimitivePerson:(Person*)value;

@end
