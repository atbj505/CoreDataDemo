// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.m instead.

#import "_Person.h"

const struct PersonAttributes PersonAttributes = {
	.age = @"age",
	.name = @"name",
	.school = @"school",
	.sex = @"sex",
	.userId = @"userId",
};

const struct PersonRelationships PersonRelationships = {
	.home = @"home",
};

@implementation PersonID
@end

@implementation _Person

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Person";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Person" inManagedObjectContext:moc_];
}

- (PersonID*)objectID {
	return (PersonID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"ageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"age"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"sexValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"sex"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic age;

- (int16_t)ageValue {
	NSNumber *result = [self age];
	return [result shortValue];
}

- (void)setAgeValue:(int16_t)value_ {
	[self setAge:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveAgeValue {
	NSNumber *result = [self primitiveAge];
	return [result shortValue];
}

- (void)setPrimitiveAgeValue:(int16_t)value_ {
	[self setPrimitiveAge:[NSNumber numberWithShort:value_]];
}

@dynamic name;

@dynamic school;

@dynamic sex;

- (BOOL)sexValue {
	NSNumber *result = [self sex];
	return [result boolValue];
}

- (void)setSexValue:(BOOL)value_ {
	[self setSex:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveSexValue {
	NSNumber *result = [self primitiveSex];
	return [result boolValue];
}

- (void)setPrimitiveSexValue:(BOOL)value_ {
	[self setPrimitiveSex:[NSNumber numberWithBool:value_]];
}

@dynamic userId;

@dynamic home;

@end

