//
//  Global.h
//  Test1
//
//  Created by iD Student on 7/17/14.
//  Copyright (c) 2014 Beam, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Global : NSObject
+(NSMutableArray *)getDataArray;
+(void)readFromFile:(NSString *)fileName;
+(NSMutableArray *)newNumArray;
@end
