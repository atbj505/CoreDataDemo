// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.h instead.

#import <CoreData/CoreData.h>

extern const struct PersonAttributes {
	__unsafe_unretained NSString *age;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *school;
	__unsafe_unretained NSString *sex;
} PersonAttributes;

extern const struct PersonRelationships {
	__unsafe_unretained NSString *home;
} PersonRelationships;

@class Home;

@interface PersonID : NSManagedObjectID {}
@end

@interface _Person : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) PersonID* objectID;

@property (nonatomic, strong) NSNumber* age;

@property (atomic) int16_t ageValue;
- (int16_t)ageValue;
- (void)setAgeValue:(int16_t)value_;

//- (BOOL)validateAge:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* school;

//- (BOOL)validateSchool:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* sex;

@property (atomic) BOOL sexValue;
- (BOOL)sexValue;
- (void)setSexValue:(BOOL)value_;

//- (BOOL)validateSex:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Home *home;

//- (BOOL)validateHome:(id*)value_ error:(NSError**)error_;

@end

@interface _Person (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveAge;
- (void)setPrimitiveAge:(NSNumber*)value;

- (int16_t)primitiveAgeValue;
- (void)setPrimitiveAgeValue:(int16_t)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSString*)primitiveSchool;
- (void)setPrimitiveSchool:(NSString*)value;

- (NSNumber*)primitiveSex;
- (void)setPrimitiveSex:(NSNumber*)value;

- (BOOL)primitiveSexValue;
- (void)setPrimitiveSexValue:(BOOL)value_;

- (Home*)primitiveHome;
- (void)setPrimitiveHome:(Home*)value;

@end
