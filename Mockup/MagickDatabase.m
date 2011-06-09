//
//  MagickDatabase.m
//  Mockup
//
//  Created by Cameron Briar on 6/4/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import "MagickDatabase.h"
#import "MagickData.h"
#import "/usr/include/sqlite3.h"
@implementation MagickDatabase

static MagickDatabase *_database;

+ (MagickDatabase *)database {
    if (_database == nil) {
        _database = [[MagickDatabase alloc] init];
    }
    return _database;
}

-(id)init {
    if ((self = [super init])) {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"magicks" 
                                                             ofType:@"sqlite3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open db..");
        }
    }
    return self;
}
-(void)dealloc {
    sqlite3_close(_database);
    [super dealloc];
}

-(NSArray *)magicks {
    NSMutableArray *retval = [[[NSMutableArray alloc] init] autorelease];
    NSString *query = @"SELECT id, spellcast FROM spellscasted ORDER BY id DESC";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int unique_id = sqlite3_column_int(statement, 0);
            char *spellChars = (char *) sqlite3_column_text(statement, 1);
            NSString *spell = [[NSString alloc] initWithUTF8String:spellChars];
            MagickData *info = [[MagickData alloc] initWithUniqueId:unique_id spellcast:spell];
            [retval addObject:info];
            [spell release];
            [info release];
        }
        sqlite3_finalize(statement);
    }
    return retval;
}
@end
