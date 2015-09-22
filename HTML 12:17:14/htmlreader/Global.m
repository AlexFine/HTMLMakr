//
//  Global.m
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import "Global.h"

@implementation Global
static NSMutableArray *dataArray;
+(NSMutableArray *)getDataArray{
    if(dataArray == nil){
        dataArray = [[NSMutableArray alloc] init];
    }
    return dataArray;
}
+(void)readFromFile:(NSString *)fileName{
    if(dataArray == nil){
        dataArray = [[NSMutableArray alloc] init];
    }
    dataArray = [NSMutableArray arrayWithContentsOfFile:fileName];
}

+(NSMutableArray *)newNumArray{
    for (int i=0; i<10; i++)
    {
        int num = 0;
        num = num + i;
    }
    return 0;
}
@end
