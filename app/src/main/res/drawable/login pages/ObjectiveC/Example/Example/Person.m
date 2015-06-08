//
//  Person.m
//  Example
//
//  Created by Anish Sthapit on 2/28/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name=_name;
-(void)sayhello{
    NSLog(@"hello %@",self.name);
}
+(Person *)personwithName:(NSString *)name{
    Person *someperson= [[Person alloc]init];
    someperson.name=name;
    return someperson;
}
@end
