//
//  Person.h
//  Example
//
//  Created by Anish Sthapit on 2/28/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *name;
-(void)sayhello;
+(Person *) personwithName: (NSString *)name;
@end
