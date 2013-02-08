//
//  Overline - NSArray+DifferenceTest.m
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//
//  Created by: kazuma.ukyo
//

#import <SenTestingKit/SenTestingKit.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import "NSArray+Difference.h"

@interface NSArray_DifferenceTest : SenTestCase
{
    
}
@end

@implementation NSArray_DifferenceTest

- (void)testDifference
{
    NSArray *left = @[@1, @2, @3, @4];
    NSArray *right = @[@1, @2, @5, @6];
    NSArray *diff = [left difference:right];

    assertThat(diff, equalTo(@[@3, @4, @5, @6]));
}

@end