//
//  MagickData.h
//  Mockup
//
//  Created by Cameron Briar on 6/4/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MagickData : NSObject {
    int _uid;
    NSString *spellcast;
}
@property (nonatomic, assign) int uid;
@property (nonatomic, copy) NSString *spellcast;

-(id)initWithUniqueId:(int)uid spellcast:(NSString *)spellcast;
@end
