//
//  ChooseModerator.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "ChooseModerator.h"
#import "GameModes.h"
#import "BanhammerSelection.h"
#import "SimpleAudioEngine.h"

#pragma mark - ChooseModerator

CCSprite *chooseBackground;
CCSprite *chooseBanner;

CCLayer *chooseButtonLayer;
CCLayer *chooseBannerLayer;
CCLayer *chooseTextLayer;

CCMenu *chooseButtonMenu;
CCMenu *chooseBackButtonMenu;
CCMenu *chooseModImageMenu;
CCMenu *chooseModTextMenu;

CCMenuItemImage *chooseBackButton;

CCMenuItemImage *chooseModBlue;
CCMenuItemImage *chooseModRed;
CCMenuItemImage *chooseModGreen;

CCMenuItemImage *chooseModBlueDescription;
CCMenuItemImage *chooseModRedDescription;
CCMenuItemImage *chooseModGreenDescription;

BOOL chooseModTransitionInFinished = FALSE;
BOOL chooseModTextTransitionInFinished = FALSE;
BOOL chooseBackTransitionInFinished = FALSE;
BOOL chooseBackTouched = FALSE;
BOOL chooseModeTransitionScheduled = FALSE;
BOOL chooseHammerTransitionScheduled = FALSE;

BOOL chooseModBlueTouched = FALSE;
BOOL chooseModRedTouched = FALSE;
BOOL chooseModGreenTouched = FALSE;
BOOL chooseSelectionMade = FALSE;

@implementation ChooseModerator

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	ChooseModerator *layer = [ChooseModerator node];
    
	[scene addChild: layer];

	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        chooseBannerLayer = [CCLayer node];
        chooseButtonLayer = [CCLayer node];
        chooseTextLayer = [CCLayer node];
        
        chooseBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background_no_text.png"];
        chooseBackground.position = ccp(240, 160);
        
        [self addChild: chooseBackground];
        [self addChild: chooseBannerLayer];
        [self addChild: chooseTextLayer];
        [self addChild: chooseButtonLayer];
        
        [self drawChooseElements];
        [self drawChooseButtons];
    }
    
    chooseModTransitionInFinished = FALSE;
    chooseModTextTransitionInFinished = FALSE;
    chooseBackTransitionInFinished = FALSE;
    chooseBackTouched = FALSE;
    chooseModeTransitionScheduled = FALSE;
    chooseHammerTransitionScheduled = FALSE;
    chooseModBlueTouched = FALSE;
    chooseModRedTouched = FALSE;
    chooseModGreenTouched = FALSE;
    chooseSelectionMade = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    //TRANSITIONS
    if(!chooseBackTransitionInFinished){
        if(chooseBackButtonMenu.position.x < 48){
            chooseBackButtonMenu.position = ccp(chooseBackButtonMenu.position.x +6, chooseBackButtonMenu.position.y);
        }
        else{
            chooseBackTransitionInFinished = TRUE;
        }
    }
    
    if(!chooseModTransitionInFinished){
        if(chooseModImageMenu.position.y > 230){
            chooseModImageMenu.position = ccp(chooseModImageMenu.position.x, chooseModImageMenu.position.y -10);
        }
        else{
            chooseModTransitionInFinished = TRUE;
        }
    }
    
    if(!chooseModTextTransitionInFinished){
        if(chooseModTextMenu.position.y < 110){
            chooseModTextMenu.position = ccp(chooseModTextMenu.position.x, chooseModTextMenu.position.y +10);
        }
        else{
            chooseModTextTransitionInFinished = TRUE;
        }
    }
    
    if(chooseBackTouched){
        if(!chooseModeTransitionScheduled){
            [self scheduleOnce:@selector(chooseModeTransition:) delay:1];
            chooseModeTransitionScheduled = TRUE;
        }
        else{
            chooseBackButtonMenu.position = ccp(chooseBackButtonMenu.position.x -6, chooseBackButtonMenu.position.y);
            chooseModImageMenu.position = ccp(chooseModImageMenu.position.x, chooseModImageMenu.position.y +10);
            chooseModTextMenu.position = ccp(chooseModTextMenu.position.x, chooseModTextMenu.position.y -10);
        }
    }
    
    //MODERATOR CHOICE
    if(chooseSelectionMade){
        if(chooseModBlueTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"modID"];
        }
        else if(chooseModRedTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"modID"];
        }
        else if(chooseModGreenTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"modID"];
        }
        
        if(!chooseHammerTransitionScheduled){
            [self scheduleOnce:@selector(chooseHammerTransition:) delay:1];
            chooseHammerTransitionScheduled = TRUE;
        }
        else{
            chooseBackButtonMenu.position = ccp(chooseBackButtonMenu.position.x -6, chooseBackButtonMenu.position.y);
            chooseModImageMenu.position = ccp(chooseModImageMenu.position.x, chooseModImageMenu.position.y +10);
            chooseModTextMenu.position = ccp(chooseModTextMenu.position.x, chooseModTextMenu.position.y -10);
        }
    }
}

-(void) drawChooseButtons{
    chooseBackButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                             selectedImage:@""
                                                    target:self
                                                  selector:@selector(backTouched:)]retain];
    
    chooseModBlue = [CCMenuItemImage itemWithNormalImage:@"GameSprites/blue_mod_256.png"
                                           selectedImage:@""
                                                  target:self
                                                selector:@selector(modBlueTouched:)];
    
    chooseModRed = [CCMenuItemImage itemWithNormalImage:@"GameSprites/red_mod_256.png"
                                          selectedImage:@""
                                                 target:self
                                               selector:@selector(modRedTouched:)];
    
    chooseModGreen = [CCMenuItemImage itemWithNormalImage:@"GameSprites/green_mod_256.png"
                                            selectedImage:@""
                                                   target:self
                                                 selector:@selector(modGreenTouched:)];
    
    chooseModBlueDescription = [CCMenuItemImage itemWithNormalImage:@"GameText/blue_mod_desc.png"
                                                      selectedImage:NULL];
    
    chooseModRedDescription = [CCMenuItemImage itemWithNormalImage:@"GameText/red_mod_desc.png"
                                                      selectedImage:NULL];
    
    chooseModGreenDescription = [CCMenuItemImage itemWithNormalImage:@"GameText/green_mod_desc.png"
                                                      selectedImage:NULL];
    
    chooseModImageMenu = [CCMenu menuWithItems: chooseModBlue, chooseModRed, chooseModGreen, nil];
    [chooseModImageMenu alignItemsHorizontallyWithPadding:20];
    chooseModImageMenu.position = ccp(240, 650);
    
    chooseModTextMenu = [CCMenu menuWithItems: chooseModBlueDescription, chooseModRedDescription, chooseModGreenDescription, nil];
    [chooseModTextMenu alignItemsHorizontallyWithPadding:20];
    chooseModTextMenu.position = ccp(240, -330);
    
    chooseBackButtonMenu = [CCMenu menuWithItems: chooseBackButton, nil];
    [chooseBackButtonMenu alignItemsHorizontally];
    chooseBackButtonMenu.position = ccp(-180, 16);
    
    [chooseButtonLayer addChild: chooseBackButtonMenu];
    [chooseButtonLayer addChild: chooseModImageMenu];
    [chooseButtonLayer addChild: chooseModTextMenu];
}

-(void) drawChooseElements{
    chooseBanner = [CCSprite spriteWithFile:@"MenuBanners/choose_mod_banner.png"];
    chooseBanner.position = ccp(60, 312);
    
    [chooseBannerLayer addChild: chooseBanner];
}

-(void) modBlueTouched:(id)sender{
    chooseModBlueTouched = TRUE;
    chooseSelectionMade = TRUE;
}

-(void) modRedTouched:(id)sender{
    chooseModRedTouched = TRUE;
    chooseSelectionMade = TRUE;
}

-(void) modGreenTouched:(id)sender{
    chooseModGreenTouched = TRUE;
    chooseSelectionMade = TRUE;
}

-(void) backTouched:(id)sender{
    chooseBackTouched = TRUE;
}

-(void) chooseModeTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[GameModes node]]];
}

-(void) chooseHammerTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[BanhammerSelection node]]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [chooseBackButton release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
