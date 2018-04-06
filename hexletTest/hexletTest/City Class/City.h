//
//  City.h
//  hexletTest
//
//  Created by Dmitriy Tarelkin on 3/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float age;
@property (assign, nonatomic) NSUInteger populationTh;

//setter
- (void) setName:(NSString *)name age:(float)age population: (NSUInteger) population;


//getters
- (NSString*) getName;
- (float) getAge;
- (NSUInteger) getPopulation;
- (NSUInteger) nextDay;
@end
