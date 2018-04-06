//
//  City.m
//  hexletTest
//
//  Created by Dmitriy Tarelkin on 3/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "City.h"

@implementation City

- (void) setName:(NSString *)name age:(float)age population: (NSUInteger) population {
    _name = name;
    _age = age;
    _populationTh = population;
}

- (NSString*) getName {
    return _name;
}
- (float) getAge {
    return _age;
}
- (NSUInteger) getPopulation {
    return _populationTh;
}

- (NSUInteger) nextDay {
    NSUInteger plus = arc4random_uniform(98);
    NSUInteger minus = arc4random_uniform(98);
    NSLog(@"Population was %u",_populationTh);
    
    _populationTh += plus;
    NSLog(@" + raised to %u", _populationTh);
    
    _populationTh -= minus;
    NSLog(@" - decreased to %u", _populationTh);
    
    return _populationTh;
}

@end
