//
//  MockupViewController.h
//  Mockup
//
//  Created by Cameron Briar on 5/31/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagickData.h"
#import "MagickDatabase.h"

@interface MockupViewController : UIViewController {
    IBOutlet UILabel *spell1;
    IBOutlet UILabel *spell2;
    IBOutlet UILabel *spell3;
    IBOutlet UILabel *spell4;
    IBOutlet UILabel *spell5;
    NSMutableArray *spellCollection;
    NSMutableArray *spellConversions;
}
@property (nonatomic, retain)UILabel *spell1;
@property (nonatomic, retain)UILabel *spell2;
@property (nonatomic, retain)UILabel *spell3;
@property (nonatomic, retain)UILabel *spell4;
@property (nonatomic, retain)UILabel *spell5;
@property (nonatomic, retain)NSMutableArray *spellCollection;
@property (nonatomic, retain)NSMutableArray *spellConversions;
-(IBAction)castFire:(id)sender;
-(IBAction)castWater:(id)sender;
-(IBAction)castEarth:(id)sender;
-(IBAction)castLightning:(id)sender;
-(IBAction)castArcane:(id)sender;
-(IBAction)castLife:(id)sender;
-(IBAction)castShield:(id)sender;
-(IBAction)castChill:(id)sender;
-(IBAction)cast:(id)sender;


@end
