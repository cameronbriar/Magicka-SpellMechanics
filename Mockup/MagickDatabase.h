//
//  MagickDatabase.h
//  Mockup
//
//  Created by Cameron Briar on 6/4/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "/usr/include/sqlite3.h"

@interface MagickDatabase : NSObject {
    sqlite3* _database;
}
+ (MagickDatabase *)database;
- (NSArray *)magicks;

@end
