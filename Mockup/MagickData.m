//
//  MagickData.m
//  Mockup
//
//  Created by Cameron Briar on 6/4/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import "MagickData.h"


@implementation MagickData

@synthesize uid;
@synthesize spellcast;

-(id)initWithUniqueId:(int)Uid spellcast:(NSString *)spell {
    if ((self = [super init])) {
        self.uid = Uid;
        self.spellcast = spell;
    }
    return self;
}
-(void) dealloc {
    self.spellcast = nil;
    self.uid = nil;
    [super dealloc];
}
@end
