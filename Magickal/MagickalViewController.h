//
//  MagickalViewController.h
//  Magickal
//
//  Created by Cameron Briar on 6/6/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MagickalViewController : UIViewController {
   
    NSMutableArray *allSpells;
    NSMutableArray *badSpells;
    NSMutableArray *goodSpells;
    NSMutableArray *spellColors;
    NSMutableArray *mySpell;
    
    IBOutlet UILabel *spell1;
    IBOutlet UILabel *spell2;
    IBOutlet UILabel *spell3;
    IBOutlet UILabel *spell4;
    IBOutlet UILabel *spell5;
    
    IBOutlet UILabel *spellCasted;
    
}

@property (nonatomic, retain) NSMutableArray *allSpells;
@property (nonatomic, retain) NSMutableArray *badSpells;
@property (nonatomic, retain) NSMutableArray *goodSpells;
@property (nonatomic, retain) NSMutableArray *spellColors;
@property (nonatomic, retain) NSMutableArray *mySpell;

@property (nonatomic, retain) UILabel *spell1;
@property (nonatomic, retain) UILabel *spell2;
@property (nonatomic, retain) UILabel *spell3;
@property (nonatomic, retain) UILabel *spell4;
@property (nonatomic, retain) UILabel *spell5;
@property (nonatomic, retain) UILabel *spellCasted;

-(IBAction)castWater:(id)sender;
-(IBAction)castLife:(id)sender;
-(IBAction)castShield:(id)sender;
-(IBAction)castChill:(id)sender;
-(IBAction)castLightning:(id)sender;
-(IBAction)castArcane:(id)sender;
-(IBAction)castEarth:(id)sender;
-(IBAction)castFire:(id)sender;

-(void)fixSpells:(NSMutableArray *)mySpell atIndex1:(int)x atIndex2:(int)y;
-(void)checkSpells:(NSMutableArray *)mySpell;
-(void)addSpell:(NSString *)spell withColor:(int)c;
-(void)addColor:(UILabel *)label withColor:(int)c;
-(void)addColorN:(int)label withColor:(int)c;

@end
