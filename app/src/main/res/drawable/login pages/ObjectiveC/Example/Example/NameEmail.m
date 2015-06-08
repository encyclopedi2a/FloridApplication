//
//  NameEmail.m
//  Example
//
//  Created by Anish Sthapit on 2/28/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import "NameEmail.h"

@implementation NameEmail

-(id)initwithName:(NSString *)a1 andEmail:(NSString *)b1{
    
    if (self==[super init]) {
        name = a1;
        email = b1;
    }
    return self;
}


-(id)init{
    
    if (self==[super init]) {
        name = @"test";
        email = @"test";
    }
    return self;
}



@end
