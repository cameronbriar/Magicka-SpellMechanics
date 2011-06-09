//
//  MockupViewController.m
//  Mockup
//
//  Created by Cameron Briar on 5/31/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import "MockupViewController.h"

@implementation MockupViewController
@synthesize spell1, spell2, spell3, spell4, spell5, spellCollection, spellConversions;

int mc = 0;

bool hasFire    = NO;
bool hasWater   = NO;
bool hasLife    = NO;
bool hasEarth   = NO;
bool hasLightning = NO;
bool hasArcane  = NO;
bool hasShield  = NO;
bool hasChill   = NO;
bool hasIce     = NO;
bool hasSteam   = NO;

int qCount = 0;
int wCount = 0;
int eCount = 0;
int rCount = 0;
int aCount = 0;
int sCount = 0;
int dCount = 0;
int fCount = 0;
int iCount = 0;
int tCount = 0;

-(IBAction)castFire:(id)sender {
    hasFire = YES;
    [self addSpell:(NSString *)@"F" withSpellCount:(int)mc withSpellColor:(int)7];
    fCount++;
}
-(IBAction)castWater:(id)sender {
    hasWater = YES;
    [self addSpell:(NSString *)@"Q" withSpellCount:(int)mc withSpellColor:(int)0];
    qCount++;
}
-(IBAction)castEarth:(id)sender {
    hasEarth = YES;
    [self addSpell:(NSString *)@"D" withSpellCount:(int)mc withSpellColor:(int)6];
    dCount++;
}
-(IBAction)castLightning:(id)sender {
    hasLightning = YES;
    [self addSpell:(NSString *)@"A" withSpellCount:(int)mc withSpellColor:(int)4];
    aCount++;
}
-(IBAction)castArcane:(id)sender {
    hasArcane = YES;
    [self addSpell:(NSString *)@"S" withSpellCount:(int)mc withSpellColor:(int)5];
    sCount++;
}
-(IBAction)castShield:(id)sender {
    hasShield = YES;
    [self addSpell:(NSString *)@"E" withSpellCount:(int)mc withSpellColor:(int)2];
    eCount++;
    
}
-(IBAction)castLife:(id)sender {
    hasLife = YES;
    [self addSpell:(NSString *)@"W" withSpellCount:(int)mc withSpellColor:(int)1];
    wCount++;
}
-(IBAction)castChill:(id)sender {
    hasChill = YES;
    [self addSpell:(NSString *)@"R" withSpellCount:(int)mc withSpellColor:(int)3];
    rCount++;
}
-(void)addSpell:(NSString *)spell withSpellCount:(int)x withSpellColor:(int)c
{
    switch (x) {
        case 0:
            spell1.text = spell;
            [self addColor:(UILabel *)spell1 withColor:(int)c];
            mc++;
            [self checkSpell:(int)x];
            break;
        case 1:
            spell2.text = spell;
            [self addColor:(UILabel *)spell2 withColor:(int)c];
            mc++;
            [self checkSpell:(int)x];
            break;
        case 2:
            spell3.text = spell;
            [self addColor:(UILabel *)spell3 withColor:(int)c];
            mc++;
            [self checkSpell:(int)x];
            break;
        case 3:
            spell4.text = spell;
            [self addColor:(UILabel *)spell4 withColor:(int)c];
            mc++;
            [self checkSpell:(int)x];
            break;
        case 4:
            spell5.text = spell;
            [self addColor:(UILabel *)spell5 withColor:(int)c];
            mc++;
            [self checkSpell:(int)x];
            break;
        case 10:
            spell1.text = @"";
            spell2.text = @"";
            spell3.text = @"";
            spell4.text = @"";
            spell5.text = @"";
            break;
        default:
            break;
    }
}
-(void)checkSpell:(int)x
{
    if (hasFire && hasWater) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"Q" withSpell2:(NSString *)@"F" toBeSpell:(NSString *)@"T" withColor:(int)8];
        tCount++;
        fCount--;
        qCount--;
        if (fCount < 1)
        hasFire = NO;
        if (qCount < 1)
        hasWater = NO; 
        
        hasSteam = YES;
    }
    else if (hasWater && hasChill) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"Q" withSpell2:(NSString *)@"R" toBeSpell:(NSString *)@"I" withColor:(int)9];
        iCount++;
        rCount--;
        qCount--;
        if (rCount < 1)
        hasChill = NO;
        if (qCount < 1)
        hasWater = NO;
        
        hasIce = YES;
        
    }
    else if (hasArcane && hasLife) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"S" withSpell2:(NSString *)@"W" toBeSpell:(NSString *)@"" withColor:(int)3];
        sCount--;
        wCount--;
        if(sCount < 1)
        hasArcane = NO;
        if (wCount < 1)
        hasLife = NO;
    }
    else if (hasIce && hasFire) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"I" withSpell2:(NSString *)@"F" toBeSpell:(NSString *)@"" withColor:(int)3];
        iCount--;
        fCount--;
        if(iCount < 1)
        hasIce = NO;
        if(fCount < 1)
        hasFire = NO;
    }
    else if (hasEarth && hasLightning) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"D" withSpell2:(NSString *)@"A" toBeSpell:(NSString *)@"" withColor:(int)3];
        dCount--;
        aCount--;
        if(dCount < 1)
        hasEarth = NO;
        if(aCount < 1)
        hasLightning = NO;
    }
    else if (hasChill && hasFire) {
        [self adjustSpell:(int)x withSpell1:(NSString *)@"R" withSpell2:(NSString *)@"F" toBeSpell:(NSString *)@"" withColor:(int)3];
        rCount--;
        fCount--;
        if(rCount < 1)
        hasChill = NO;
        if(fCount < 1)
        hasFire = NO;
    }
}
-(void)adjustSpell:(int)x withSpell1:(NSString *)spellone withSpell2:(NSString *)spelltwo toBeSpell:(NSString *)newspell withColor:(int)c
{
    bool spell1found = NO;
    bool spell2found = NO;
    int sc = 0;
    
    /*if (x == 0)
        return;
    else {
    while (sc < x && (spell2found || spell1found) {
                if (spell1.text == spellone) {
                    spell1found = YES;
                    spell1.text = newspell;
                    [self addColor:(UILabel *)spell1 withColor:(int)c];
                } else if (spell1.text == spelltwo) {
                    spell2found = YES;
                    spell1.text = newspell;
                    [self addColor:(UILabel *)spell1 withColor:(int)c];
                } else if (spell2.text == spellone) {
                    spell1found = YES;
                    spell1.text = newspell;
                    [self addColor:(UILabel *)spell1 withColor:(int)c];
                } else if (spell1.text == spelltwo) {
                    spell2found = YES;
                    spell1.text = newspell;
                    [self addColor:(UILabel *)spell1 withColor:(int)c];
                } else 
                
        }*/
        if (spell5.text == spellone || spell5.text == spelltwo) {
            spell5.text = @"";
            spell4.text = newspell;
            [self addColor:(UILabel *)spell4 withColor:(int)c];
        }
        else if (spell4.text == spellone || spell4.text == spelltwo) {
            spell4.text = @"";
            spell3.text = newspell;
            [self addColor:(UILabel *)spell3 withColor:(int)c];
        }
        else if (spell3.text == spellone || spell3.text == spelltwo) {
            spell3.text = @"";
            spell2.text = newspell;
            [self addColor:(UILabel *)spell2 withColor:(int)c];
        }
        else if (spell2.text == spellone || spell2.text == spelltwo) {
            spell2.text = @"";
            spell1.text = newspell;
            [self addColor:(UILabel *)spell1 withColor:(int)c];
        }
        else if (spell1.text == spellone || spell1.text == spelltwo) {
            spell2.text = @"";
            spell1.text = newspell;
            [self addColor:(UILabel *)spell1 withColor:(int)c];
        }
    
    /*
    if (spell1found){
        if (spell5.text == spelltwo) {
            spell5.text = @"";
            spell2found = YES;
        }
        else if (spell4.text == spelltwo) {
            spell4.text = @"";
            spell2found = YES;
        }
        else if (spell3.text == spelltwo) {
            spell3.text = @"";
            spell2found = YES;
        }
        else if (spell2.text == spelltwo) {
            spell2.text = @"";
            spell2found = YES;
        }
    } else {
        if (spell5.text == spellone) {
            spell5.text = @"";
            spell1found = YES;
        }
        else if (spell4.text == spellone) {
            spell4.text = @"";
            spell1found = YES;
        }
        else if (spell3.text == spellone) {
            spell3.text = @"";
            spell1found = YES;
        }
        else if (spell2.text == spellone) {
            spell2.text = @"";
            spell1found = YES;
        }
    }*/
    mc--;
    if (newspell == @"" && mc > 0) mc--;
    spell1found = NO;
    spell2found = NO;
    
        

    
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
-(IBAction)cast:(id)sender {
    [self addSpell:(NSString *)@"" withSpellCount:(int)10 withSpellColor:(int)10];
    hasFire    = NO;
    hasWater   = NO;
    hasLife    = NO;
    hasEarth   = NO;
    hasLightning = NO;
    hasArcane  = NO;
    hasShield  = NO;
    hasChill   = NO;
    hasIce     = NO;
    hasSteam   = NO;
    qCount = 0;
    wCount = 0;
    eCount = 0;
    rCount = 0;
    aCount = 0;
    sCount = 0;
    dCount = 0;
    fCount = 0;
    
    
    mc = 0;
}
- (void)dealloc
{
    [spell1 release];
    [spell2 release];
    [spell3 release];
    [spell4 release];
    [spell5 release];
    [spellCollection release];
    [spellConversions release];
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
    //CGAffineTransform transformRotate = CGAffineTransformMakeRotation((M_PI  * 90 / 180.0));
    //castLabel.transform = transformRotate;
    
    /*
    //Spells
     Q - Water
     W - Life
     E - Shield
     R - Chill
     A - Lightning
     S - Arcane
     D - Earth
     F - Fire
     
     T - Steam (Q + W)
     I - Ice (Q + R)
     
     ~ - (W + S), (A + D), (R + F), (I + R)
     
     */
    spellCollection = [NSMutableArray arrayWithObjects:
                       @"QF", @"T",
                       @"FQ", @"T",
                       @"RQ", @"I",
                       @"QR", @"I",
                       @"WS", @"",
                       @"SW", @"",
                       @"DA", @"",
                       @"AD", @"",
                       @"RF", @"",
                       @"FR", @"",
                       @"IR", @"",
                       @"RI", @"", nil];
                       
    spell1.text = @"";
    spell2.text = @"";
    spell3.text = @"";
    spell4.text = @"";
    spell5.text = @"";
    
    NSArray *magicksInfo = [MagickDatabase database].magicks;
    for (MagickData *info in magicksInfo) {
        NSLog(@"%d: %@", info.uid, info.spellcast);
    }
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    /*spell1 = nil;
    spell2 = nil;
    spell3 = nil;
    spell4 = nil;
    spell5 = nil;
    spellCollection = nil;
    spellConversions = nil;*/
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
