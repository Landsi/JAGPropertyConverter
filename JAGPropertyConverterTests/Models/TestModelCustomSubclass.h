//
//  TestModelCustomSubclass.h
//  JAGPropertyConverter
//
//  Created by Yen-Chia Lin on 17.07.15.
//
//

#import "TestModel.h"

@interface TestModelCustomNilSubclass : TestModel

@end

@interface TestModelCustomBaseSubclass : TestModelCustomNilSubclass

@property (nonatomic, assign) TestModelEnum baseEnumProperty;

@end

@interface TestModelCustomSubclass : TestModelCustomBaseSubclass

@property (nonatomic, assign) TestModelEnum subclassEnumProperty;
@property (nonatomic, copy) NSString *subclassIgnoreProperty;
@property (nonatomic, copy) NSString *subclassCustomMapped;

@end
