// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Home.m instead.

#import "_Home.h"

const struct HomeAttributes HomeAttributes = {
	.address = @"address",
	.name = @"name",
};

const struct HomeRelationships HomeRelationships = {
	.person = @"person",
};

@implementation HomeID
@end

@implementation _Home

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Home" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Home";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Home" inManagedObjectContext:moc_];
}

- (HomeID*)objectID {
	return (HomeID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic address;

@dynamic name;

@dynamic person;

@end

