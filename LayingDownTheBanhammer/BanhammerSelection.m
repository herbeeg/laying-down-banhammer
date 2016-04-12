//
//  BanhammerSelection.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games2013. All rights reserved.
//

#import "BanhammerSelection.h"
#import "ChooseModerator.h"
#import "StoryMode1_1.h"
#import "TimeAttack.h"
#import "EndlessMode.h"
#import "ChillaxZone.h"
#import "SimpleAudioEngine.h"

#pragma mark - BanhammerSelection

CCSprite *hammerBackground;
CCSprite *hammerBanner;

CCLayer *hammerBannerLayer;
CCLayer *hammerButtonLayer;
CCLayer *hammerTextLayer;

CCMenu *hammerButtonMenu;
CCMenu *hammerBackButtonMenu;
CCMenu *hammerWeaponImageMenu;
CCMenu *hammerWeaponTextMenu;

CCMenuItemImage *hammerBackButton;

CCMenuItemImage *hammerWeaponFaithful;
CCMenuItemImage *hammerWeaponBeast;
CCMenuItemImage *hammerWeaponBeatstick;

CCMenuItemImage *hammerFaithfulDesc;
CCMenuItemImage *hammerBeastDesc;
CCMenuItemImage *hammerBeatstickDesc;

BOOL hammerBackTransitionInFinished = FALSE;
BOOL hammerWeaponTransitionInFinished = FALSE;
BOOL hammerTextTransitionInFinished = FALSE;
BOOL hammerBackTouched = FALSE;
BOOL hammerChooseModTransitionScheduled = FALSE;
BOOL hammerMainGameTransitionScheduled = FALSE;

BOOL hammerSelectionMade = FALSE;
BOOL hammerFaithfulTouched = FALSE;
BOOL hammerBeastTouched = FALSE;
BOOL hammerBeatstickTouched = FALSE;

NSMutableArray *hammerCharacterArray;
NSString *hammerCharacterDatabase = @"database";
NSString *hammerCharacterGranquier = @"granquier";
NSString *hammerCharacterKappa = @"kappa";
NSString *hammerCharacterKreytos = @"kreytos";
NSString *hammerCharacterMantin = @"mantin";
NSString *hammerCharacterOrksome = @"orksome";
NSString *hammerCharacterSalty = @"salty";
NSString *hammerCharacterWooferz = @"wooferz";
NSString *hammerCharacterZeke = @"zeke";

@implementation BanhammerSelection

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	BanhammerSelection *layer = [BanhammerSelection node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        hammerBannerLayer = [CCLayer node];
        hammerButtonLayer = [CCLayer node];
        hammerTextLayer = [CCLayer node];
        
        hammerBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background_no_text.png"];
        hammerBackground.position = ccp(240, 160);
        
        [self addChild: hammerBackground];
        [self addChild: hammerBannerLayer];
        [self addChild: hammerTextLayer];
        [self addChild: hammerButtonLayer];
        
        [self drawHammerElements];
        [self drawHammerButtons];
    }
    
    hammerBackTransitionInFinished = FALSE;
    hammerWeaponTransitionInFinished = FALSE;
    hammerTextTransitionInFinished = FALSE;
    hammerBackTouched = FALSE;
    hammerChooseModTransitionScheduled = FALSE;
    hammerMainGameTransitionScheduled = FALSE;
    
    hammerSelectionMade = FALSE;
    hammerFaithfulTouched = FALSE;
    hammerBeastTouched = FALSE;
    hammerBeatstickTouched = FALSE;

    return self;
}

-(void) update:(ccTime)dt{
    //TRANSITIONS
    if(!hammerBackTransitionInFinished){
        if(hammerBackButtonMenu.position.x < 48){
            hammerBackButtonMenu.position = ccp(hammerBackButtonMenu.position.x +6, hammerBackButtonMenu.position.y);
        }
        else{
            hammerBackTransitionInFinished = TRUE;
        }
    }
    
    if(!hammerWeaponTransitionInFinished){
        if(hammerWeaponImageMenu.position.y > 230){
            hammerWeaponImageMenu.position = ccp(hammerWeaponImageMenu.position.x, hammerWeaponImageMenu.position.y -10);
        }
        else{
            hammerWeaponTransitionInFinished = TRUE;
        }
    }
    
    if(!hammerTextTransitionInFinished){
        if(hammerWeaponTextMenu.position.y < 110){
            hammerWeaponTextMenu.position = ccp(hammerWeaponTextMenu.position.x, hammerWeaponTextMenu.position.y +10);
        }
        else{
            hammerTextTransitionInFinished = TRUE;
        }
    }
    
    if(hammerBackTouched){
        if(!hammerChooseModTransitionScheduled){
            [self scheduleOnce:@selector(hammerChooseModTransition:) delay:1];
            hammerChooseModTransitionScheduled = TRUE;
        }
        else{
            hammerBackButtonMenu.position = ccp(hammerBackButtonMenu.position.x -6, hammerBackButtonMenu.position.y);
            hammerWeaponImageMenu.position = ccp(hammerWeaponImageMenu.position.x, hammerWeaponImageMenu.position.y +10);
            hammerWeaponTextMenu.position = ccp(hammerWeaponTextMenu.position.x, hammerWeaponTextMenu.position.y -10);
        }
    }
    
    //HAMMER CHOICE
    if(hammerSelectionMade){
        if(hammerFaithfulTouched){
            
        }
        else if(hammerBeastTouched){
            
        }
        else if(hammerBeatstickTouched){
            
        }
        
        if(!hammerMainGameTransitionScheduled){
            [self scheduleOnce:@selector(hammerMainGameTransition:) delay:1];
            hammerMainGameTransitionScheduled = TRUE;
        }
        else{
            hammerBackButtonMenu.position = ccp(hammerBackButtonMenu.position.x -6, hammerBackButtonMenu.position.y);
            hammerWeaponImageMenu.position = ccp(hammerWeaponImageMenu.position.x, hammerWeaponImageMenu.position.y +10);
            hammerWeaponTextMenu.position = ccp(hammerWeaponTextMenu.position.x, hammerWeaponTextMenu.position.y -10);
        }
    }
}

-(void) drawHammerElements{
    hammerBanner = [[CCSprite spriteWithFile:@"MenuBanners/select_hammer_banner.png"]retain];
    hammerBanner.position = ccp(60, 312);
    
    [hammerBannerLayer addChild: hammerBanner];
}

-(void) drawHammerButtons{
    hammerWeaponFaithful = [[CCMenuItemImage itemWithNormalImage:@"GameSprites/old_faithful_256.png"
                                                  selectedImage:@""
                                                         target:self
                                                       selector:@selector(faithfulTouched:)]retain];
    
    hammerWeaponBeast = [[CCMenuItemImage itemWithNormalImage:@"GameSprites/green_beast_256.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(beastTouched:)]retain];
    
    hammerWeaponBeatstick = [[CCMenuItemImage itemWithNormalImage:@"GameSprites/golden_beatstick_256.png"
                                                   selectedImage:@""
                                                          target:self
                                                        selector:@selector(beatstickTouched:)]retain];
    
    hammerBackButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(backTouched:)]retain];
    
    hammerFaithfulDesc = [CCMenuItemImage itemWithNormalImage:@"GameText/old_faithful_desc.png"
                                                selectedImage:NULL];
    
    hammerBeastDesc = [CCMenuItemImage itemWithNormalImage:@"GameText/green_beast_desc.png"
                                             selectedImage:NULL];
    
    hammerBeatstickDesc = [CCMenuItemImage itemWithNormalImage:@"GameText/golden_beatstick_desc.png"
                                                 selectedImage:NULL];
    
    hammerWeaponImageMenu = [[CCMenu menuWithItems: hammerWeaponFaithful, hammerWeaponBeast, hammerWeaponBeatstick, nil]retain];
    [hammerWeaponImageMenu alignItemsHorizontallyWithPadding:20];
    hammerWeaponImageMenu.position = ccp(240, 650);
    
    hammerWeaponTextMenu = [[CCMenu menuWithItems: hammerFaithfulDesc, hammerBeastDesc, hammerBeatstickDesc, nil]retain];
    [hammerWeaponTextMenu alignItemsHorizontallyWithPadding:20];
    hammerWeaponTextMenu.position = ccp(240, -330);
    
    hammerBackButtonMenu = [[CCMenu menuWithItems: hammerBackButton, nil]retain];
    [hammerBackButtonMenu alignItemsHorizontally];
    hammerBackButtonMenu.position = ccp(-180, 16);
    
    [hammerButtonLayer addChild: hammerBackButtonMenu];
    [hammerButtonLayer addChild: hammerWeaponImageMenu];
    [hammerButtonLayer addChild: hammerWeaponTextMenu];
}

-(void) faithfulTouched:(id)sender{
    hammerFaithfulTouched = TRUE;
    hammerBeastTouched = FALSE;
    hammerBeatstickTouched = FALSE;
    hammerSelectionMade = TRUE;
}

-(void) beastTouched:(id)sender{
    hammerFaithfulTouched = FALSE;
    hammerBeastTouched = TRUE;
    hammerBeatstickTouched = FALSE;
    hammerSelectionMade = TRUE;
}

-(void) beatstickTouched:(id)sender{
    hammerFaithfulTouched = FALSE;
    hammerBeastTouched = FALSE;
    hammerBeatstickTouched = TRUE;
    hammerSelectionMade = TRUE;
}

-(void) backTouched:(id)sender{
    hammerBackTouched = TRUE;
}

-(void) hammerChooseModTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[ChooseModerator node]]];
}

-(void) hammerMainGameTransition:(id)sender{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        hammerCharacterArray = [NSMutableArray arrayWithObjects: hammerCharacterDatabase, hammerCharacterGranquier, hammerCharacterKappa,
                                hammerCharacterKreytos, hammerCharacterMantin, hammerCharacterOrksome, hammerCharacterSalty, hammerCharacterWooferz, hammerCharacterZeke, nil];
        
        NSUInteger count = [hammerCharacterArray count];
        for (NSUInteger i = 0; i < count; ++i) {
            int nElements = count - i;
            int n = (arc4random() % nElements) + i;
            [hammerCharacterArray exchangeObjectAtIndex:i withObjectAtIndex:n];
        }
        
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:0] forKey:@"charOne"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:1] forKey:@"charTwo"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:2] forKey:@"charThree"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:3] forKey:@"charFour"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:4] forKey:@"charFive"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:5] forKey:@"charSix"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:6] forKey:@"charSeven"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:7] forKey:@"charEight"];
        [[NSUserDefaults standardUserDefaults] setValue:[hammerCharacterArray objectAtIndex:8] forKey:@"charNine"];
        
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"]);
        NSLog(@"CHAR ONE %@", [[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"]);
        
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[StoryMode1_1 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[TimeAttack node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[EndlessMode node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[ChillaxZone node]]];
    }
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [hammerWeaponBeast release];
    [hammerWeaponBeatstick release];
    [hammerWeaponFaithful release];
    [hammerBackButton release];
    [hammerBanner release];
    [hammerWeaponImageMenu release];
    [hammerWeaponTextMenu release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
