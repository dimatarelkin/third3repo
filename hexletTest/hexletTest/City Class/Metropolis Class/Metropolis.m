//
//  Metropolis.m
//  hexletTest
//
//  Created by Dmitriy Tarelkin on 3/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "Metropolis.h"
#import "City.h"

@interface Metropolis ()
@property (strong, nonatomic) NSMutableArray* arrayOfTowns;
@end


@implementation Metropolis

//переопределяем init, чтобы реализовать там property arrayOfTowns
- (instancetype)init {
    self = [super init];
    if (self) {
        _arrayOfTowns = [NSMutableArray arrayWithCapacity:10];
    }
    return self;
}


- (NSMutableArray*) createCity:(NSString*)city atIndex:(NSUInteger)index withPopulation:(NSInteger)population {
    City* cityObject = [[City alloc]init];
    [cityObject setName:city];
    [cityObject setPopulationTh:population];
    
    if (index > 10) {
        NSLog(@"The index %ld is out of the range, it must be in 1 - 10",(long)index);
        return _arrayOfTowns;
        
    } else if (index > _arrayOfTowns.count) {
        NSLog(@"Index %lu is not correct, we use these index - %lu to add your city :)",(long)index, (long)_arrayOfTowns.count +1);
        index = _arrayOfTowns.count;
        [_arrayOfTowns insertObject:cityObject atIndex:index];
        NSLog(@"city - %@ was added to current metropolis at index - %lu", [cityObject getName], (long)index);
  
    } else {
    [_arrayOfTowns insertObject:cityObject atIndex:index];
    NSLog(@"city - %@ was added to current metropolis", [cityObject getName]);
    }
    
    for (City* currentCity in _arrayOfTowns) {
        NSLog(@"The city - %@, was add at index - %ld ", [currentCity getName], (long)[_arrayOfTowns indexOfObject:currentCity]);
    }
    NSLog(@"There are %lu cities in array",(long)_arrayOfTowns.count);
    return _arrayOfTowns;
    
}
@end
