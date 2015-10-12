//
//  TestModelCustomSubclass.m
//  JAGPropertyConverter
//
//  Created by Yen-Chia Lin on 17.07.15.
//
//

#import "TestModelCustomSubclass.h"

// This class intentionally returns nil in every mapping to test if the chain of inheritance is not broken.
@implementation TestModelCustomNilSubclass

#pragma mark - JAGPropertyMapping

+ (NSDictionary *)customPropertyNamesMapping {
    return self.enumPropertiesToConvert;        // there was a bug where such a statement didn't work (RIME-2554)
}

+ (NSDictionary *)enumPropertiesToConvert {
    return nil;
}

+ (NSArray *)ignorePropertiesFromJSON {
    return nil;
}

+ (NSArray *)ignorePropertiesToJSON {
    return nil;
}

@end

// This class returns a mapping using a property from current class
@implementation TestModelCustomBaseSubclass

#pragma mark - JAGPropertyMapping

+ (NSDictionary *)customPropertyNamesMapping {
    return nil;
}

+ (NSDictionary *)enumPropertiesToConvert {
    return @{ @"baseEnumProperty" : @"baseEnumPropertyInJson" };
}

+ (NSArray *)ignorePropertiesFromJSON {
    return nil;
}

+ (NSArray *)ignorePropertiesToJSON {
    return nil;
}

@end

@implementation TestModelCustomSubclass

#pragma mark - JAGPropertyMapping

+ (NSDictionary *)customPropertyNamesMapping {
    return @{@"subclassCustomMapped" : @"differentSubclassCustomMapped"};
}

+ (NSDictionary *)enumPropertiesToConvert {
    return @{@"subclassEnumProperty" : @"subclassEnumProperty"};
}

+ (NSArray *)ignorePropertiesFromJSON {
    return @[@"subclassIgnoreProperty"];
}

+ (NSArray *)ignorePropertiesToJSON {
    return @[@"subclassIgnoreProperty"];
}

@end
