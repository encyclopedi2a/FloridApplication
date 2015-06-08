//
//  main.m
//  properties
//
//  Created by Anish Sthapit on 3/3/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "declaring.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        declaring *obj=[[declaring alloc]init];
        obj.name=@"Arun";
        NSLog(@"%@",obj.name);
        
        
    }
    return 0;
}

