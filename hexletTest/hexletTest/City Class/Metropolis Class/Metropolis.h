//
//  Metropolis.h
//  hexletTest
//
//  Created by Dmitriy Tarelkin on 3/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import <Foundation/Foundation.h>



//шаг4
@interface Metropolis : NSObject

@property (strong, nonatomic) NSString* name;

- (NSMutableArray*) createCity:(NSString*)city atIndex:(NSUInteger)index withPopulation:(NSInteger)population;

@end
