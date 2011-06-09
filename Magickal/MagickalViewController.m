//
//  MagickalViewController.m
//  Magickal
//
//  Created by Cameron Briar on 6/6/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import "MagickalViewController.h"

@implementation MagickalViewController

@synthesize allSpells, badSpells, goodSpells, spellColors, mySpell, spell1, spell2, spell3, spell4, spell5, spellCasted;

int spellCount = 0;

int waterCount  = 0;
int lifeCount   = 0;
int shieldCount = 0;
int chillCount  = 0;
int lightningCount = 0;
int arcaneCount = 0;
int earthCount  = 0;
int fireCount   = 0;
int iceCount    = 0;
int steamCount  = 0;

bool hasWater   = NO;
bool hasLife    = NO;
bool hasShield  = NO;
bool hasChill   = NO;
bool hasLightning = NO;
bool hasArcane  = NO;
bool hasEarth   = NO;
bool hasFire    = NO;
bool hasIce     = NO;
bool hasSteam   = NO;

-(IBAction)castWater:(id)sender {
    hasWater = YES;
    waterCount += 1;
    [mySpell insertObject:@"Q" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"Q" withColor:(int)0];
    
}
-(IBAction)castLife:(id)sender {
    hasLife = YES;
    lifeCount += 1;
    [mySpell insertObject:@"W" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"W" withColor:(int)1];
}
-(IBAction)castShield:(id)sender {
    hasShield = YES;
    shieldCount += 1;
   [mySpell insertObject:@"E" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"E" withColor:(int)2];
}
-(IBAction)castChill:(id)sender {
    hasChill = YES;
    chillCount += 1;
    [mySpell insertObject:@"R" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"R" withColor:(int)3];
}
-(IBAction)castLightning:(id)sender {
    hasLightning = YES;
    lightningCount += 1;
    [mySpell insertObject:@"A" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"A" withColor:(int)4];
}
-(IBAction)castArcane:(id)sender {
    hasArcane = YES;
    arcaneCount += 1;
    [mySpell insertObject:@"S" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"S" withColor:(int)5];
    
}
-(IBAction)castEarth:(id)sender {
    hasEarth = YES;
    earthCount += 1;
    [mySpell insertObject:@"D" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"D" withColor:(int)6];
}
-(IBAction)castFire:(id)sender {
    hasFire = YES;
    fireCount += 1;
    [mySpell insertObject:@"F" atIndex:spellCount];
    if (spellCount < 6)
        spellCount += 1;
    [self addSpell:(NSString *)@"F" withColor:(int)7];
}
-(IBAction)cast:(id)sender {
    spell1.text = @"";
    spell2.text = @"";
    spell3.text = @"";
    spell4.text = @"";
    spell5.text = @"";
    
    NSLog(@"Casted %@ %@ %@ %@ %@", [mySpell objectAtIndex:0],[mySpell objectAtIndex:1],[mySpell objectAtIndex:2],[mySpell objectAtIndex:3],[mySpell objectAtIndex:4]);
    
    spellCount = 0;
    
    waterCount  = 0;
    lifeCount   = 0;
    shieldCount = 0;
    chillCount  = 0;
    lightningCount = 0;
    arcaneCount = 0;
    earthCount  = 0;
    fireCount   = 0;
    iceCount    = 0;
    steamCount  = 0;
    
    hasWater   = NO;
    hasLife    = NO;
    hasShield  = NO;
    hasChill   = NO;
    hasLightning = NO;
    hasArcane  = NO;
    hasEarth   = NO;
    hasFire    = NO;
    hasIce     = NO;
    hasSteam   = NO;

    
    mySpell = [[NSMutableArray alloc] initWithObjects: @"", @"", @"", @"", @"", @"", nil];
}
-(void)fixSpells:(NSMutableArray *)theSpell atIndex1:(int)x atIndex2:(int)y {
    NSMutableArray *temp = theSpell;
    theSpell = [[NSMutableArray alloc] initWithObjects: @"", @"", @"", @"", @"", @"", nil];
    int i = 0;
    int j = 0;
    while (i < 5) {
        if (i == x){}
        else if (i == y){}
        else {
            [theSpell insertObject:[temp objectAtIndex:i] atIndex:j];
            
            if ([theSpell objectAtIndex:j] == @"Q")
                [self addColorN:j withColor:0];
             else if ([theSpell objectAtIndex:j] == @"W")
                [self addColorN:j withColor:1];
            else if ([theSpell objectAtIndex:j] == @"E")
                [self addColorN:j withColor:2];
            else if ([theSpell objectAtIndex:j] == @"R")
                [self addColorN:j withColor:3];
            else if ([theSpell objectAtIndex:j] == @"A")
                [self addColorN:j withColor:4];
            else if ([theSpell objectAtIndex:j] == @"S")
                [self addColorN:j withColor:5];
            else if ([theSpell objectAtIndex:j] == @"D")
                [self addColorN:j withColor:6];
            else if ([theSpell objectAtIndex:j] == @"F")
                [self addColorN:j withColor:7];
            
            j += 1;
        }
        i += 1;
    }
}
-(void)checkSpells:(NSMutableArray *)theSpell {
    
    int it = 4;
    int it1 = 0;
    int it2 = 0;
    int tt;
    
    bool spell1f = NO;
    bool spell2f = NO;
    
    
    if (hasFire && hasIce) {
       while (it >= 0) {
            if ([theSpell objectAtIndex:it]== @"F" && !spell1f) {
                spell1f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                fireCount -= 1;
                if (fireCount < 1)
                    hasFire = NO;
                it1 = it;
            } else if ([theSpell objectAtIndex:it]== @"I" && !spell2f) {
                spell2f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                iceCount -= 1;
                if (iceCount < 1)
                    hasIce = NO;
                it2 = it;
            }
            it -= 1;
        }
        if (spellCount > 1)
            spellCount -= 2;
        if (it1 < it2) {
            tt = it1;
            it1 = it2;
            it2 = it;
        }
        [self fixSpells:(NSMutableArray *)theSpell atIndex1:(int)it1 atIndex2:(int)it2];
    
    }
    else if (hasArcane && hasLife) {
        while (it >= 0) {
            if ([theSpell objectAtIndex:it]==  @"S" && !spell1f) {
                spell1f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                arcaneCount -= 1;
                if (arcaneCount < 1)
                    hasArcane = NO;
                it1 = it;
            } else if ([theSpell objectAtIndex:it]==  @"W" && !spell2f) {
                spell2f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                lifeCount -= 1;
                if (lifeCount < 1)
                    hasLife = NO;
                
                it2 = it;
            }
            it -= 1;
        }
        if (spellCount > 1)
            spellCount -= 2;
        if (it1 < it2) {
            tt = it1;
            it1 = it2;
            it2 = it;
        }
        [self fixSpells:(NSMutableArray *)theSpell atIndex1:(int)it1 atIndex2:(int)it2];
    }
    else if (hasChill && hasFire) {
        while (it >= 0) {
            if ([theSpell objectAtIndex:it]==  @"F" && !spell1f) {
                spell1f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                fireCount -= 1;
                if (fireCount < 1)
                    hasFire = NO;
                it1 = it;
            } else if ([theSpell objectAtIndex:it]== @"R" && !spell2f) {
                spell2f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                chillCount -= 1;
                if (chillCount < 1)
                    hasChill = NO;
                
                it2 = it;
            }
            it -= 1;
        }
        if (spellCount > 1)
            spellCount -= 2;
        if (it1 < it2) {
            tt = it1;
            it1 = it2;
            it2 = it;
        }
        [self fixSpells:(NSMutableArray *)theSpell atIndex1:(int)it1 atIndex2:(int)it2];
    }
    else if (hasLightning && hasEarth) {
        while (it >= 0) {
            if ([theSpell objectAtIndex:it]== @"A" && !spell1f) {
                spell1f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                lightningCount -= 1;
                if (lightningCount < 1)
                    hasLightning = NO;
                
                it1 = it;
            } else if ([theSpell objectAtIndex:it]== @"D" && !spell2f) {
                spell2f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                earthCount -= 1;
                if (earthCount < 1)
                    hasEarth = NO;
                
                it2 = it;
            }
            it -= 1;
        }
        if (spellCount > 1)
            spellCount -= 2;
        if (it1 < it2) {
            tt = it1;
            it1 = it2;
            it2 = it;
        }
        [self fixSpells:(NSMutableArray *)theSpell atIndex1:(int)it1 atIndex2:(int)it2];
    }
    else if (hasLightning && hasWater) {
        while (it >= 0) {
            if ([theSpell objectAtIndex:it]== @"A" && !spell1f) {
                spell1f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                lightningCount -= 1;
                if (lightningCount < 1)
                    hasLightning = NO;
                
                it1 = it;
            } else if ([theSpell objectAtIndex:it]== @"Q" && !spell2f) {
                spell2f = YES;
                [theSpell removeObjectAtIndex:it];
                //[theSpell insertObject:@"" atIndex:it];
                waterCount -= 1;
                if (waterCount < 1)
                    hasWater = NO;
                
                it2 = it;
            }
            it -= 1;
        }
        if (spellCount > 1)
            spellCount -= 2;
        if (it1 < it2) {
            tt = it1;
            it1 = it2;
            it2 = it;
        }
        [self fixSpells:(NSMutableArray *)theSpell atIndex1:(int)it1 atIndex2:(int)it2];
    }
}
-(void)updateSpells:(NSMutableArray *)theSpell {
    
    spell1.text = [theSpell objectAtIndex:0];
    spell2.text = [theSpell objectAtIndex:1];
    spell3.text = [theSpell objectAtIndex:2];
    spell4.text = [theSpell objectAtIndex:3];
    spell5.text = [theSpell objectAtIndex:4];
    
}
-(void)addSpell:(NSString *)spell withColor:(int)c {
    
    
    switch (spellCount) {
        case 1:
            spell1.text = spell;
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            [self addColor:(UILabel *)spell1 withColor:(int)c];
            break;
        case 2:
            spell2.text = spell;
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            [self addColor:(UILabel *)spell2 withColor:(int)c];
            break;
        case 3:
            spell3.text = spell;
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            [self addColor:(UILabel *)spell3 withColor:(int)c];
            break;
        case 4:
            spell4.text = spell;
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            [self addColor:(UILabel *)spell4 withColor:(int)c];
            break;
        case 5:
            spell5.text = spell;
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            [self addColor:(UILabel *)spell5 withColor:(int)c];
            break;
        case 6:
            [self checkSpells:mySpell];
            [self updateSpells:(NSMutableArray *)mySpell];
            //[self addColor:(UILabel *)spell1 withColor:(int)c];
            break;
        default:
            break;
            
    }
}
-(void)addColorN:(int)label withColor:(int)c
{
    switch (label) {
        case 0:
            [self addColor:spell1 withColor:c];
            break;
        case 1:
            [self addColor:spell2 withColor:c];
            break;
        case 2:
            [self addColor:spell3 withColor:c];
            break;
        case 3:
            [self addColor:spell4 withColor:c];
            break;
        case 4:
            [self addColor:spell5 withColor:c];
        default:
            break;
    }
    
}

-(void)addColor:(UILabel *)label withColor:(int)c
{
    switch (c) {
        case 0:
            label.textColor = [UIColor blueColor];
            break;
        case 1:
            label.textColor = [UIColor greenColor];
            break;
        case 2:
            label.textColor = [UIColor yellowColor];
            break;
        case 3:
            label.textColor = [UIColor grayColor];
            break;
        case 4:
            label.textColor = [UIColor whiteColor];
            break;
        case 5:
            label.textColor = [UIColor purpleColor];
            break;
        case 6:
            label.textColor = [UIColor brownColor];
            break;
        case 7:
            label.textColor = [UIColor redColor];
            break;
        case 8:
            label.textColor = [UIColor lightGrayColor];
            break;
        case 9:
            label.textColor = [UIColor cyanColor];
            break;
        default:
            break;
    }
    
}
- (void)dealloc
{
    allSpells = badSpells = goodSpells = mySpell = nil;
    [allSpells release];
    [badSpells release];
    [goodSpells release];
    [spellColors release];
    [mySpell release];
    
    spell1 = spell2 = spell3 = spell4 = spell5 = nil;
    [spell1 release];
    [spell2 release];
    [spell3 release];
    [spell4 release];
    [spell5 release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    allSpells = [[NSMutableArray alloc] initWithObjects:@"Q", @"W", @"E", @"R", @"A", @"S", @"D", @"F", nil];
    badSpells = [[NSMutableArray alloc] initWithObjects:@"IF", @"WS", @"AD", @"FR", @"QA", nil];
    goodSpells = [[NSMutableArray alloc] initWithObjects:@"QF", @"QR", nil];
    spellColors = [[NSMutableArray alloc] initWithObjects:@"", @"", @"", @"", @"", nil];
    mySpell = [[NSMutableArray alloc] initWithObjects: @"", @"", @"", @"", @"", @"", nil];
    
    spell1.text = @"";
    spell2.text = @"";
    spell3.text = @"";
    spell4.text = @"";
    spell5.text = @"";
    spellCasted.text = @"";
    
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

@end
