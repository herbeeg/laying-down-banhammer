//
//  GameModes.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "GameModes.h"
#import "MainMenu.h"
#import "ChooseModerator.h"
#import "SimpleAudioEngine.h"
#import "Instructions.h"

#pragma mark - GameModes

CCSprite *modeBackground;
CCSprite *modeBanner;

CCLayer *modeBannerLayer;
CCLayer *modeButtonLayer;
CCLayer *modeTextLayer;

CCMenu *modeButtonMenu;
CCMenuItemImage *modeStoryButton;
CCMenuItemImage *modeTimeAttackButton;
CCMenuItemImage *modeEndlessButton;
CCMenuItemImage *modeChillaxButton;

CCMenu *modeBackButtonMenu;
CCMenuItemImage *modeBackButton;

CCMenu *modeExtraInfoMenu;
CCMenuItemSprite *modeTextInfo;
CCSprite *modeInfoStory;
CCSprite *modeInfoTime;
CCSprite *modeInfoEndless;
CCSprite *modeInfoChillax;

CCMenu *modeInfoButtonMenu;
CCMenuItemImage *modeInfoButtonPlay;
CCMenuItemImage *modeInfoButtonInstructions;

BOOL storyTouched = FALSE;
BOOL timeTouched = FALSE;
BOOL endlessTouched = FALSE;
BOOL chillaxTouched = FALSE;
BOOL modeBackTouched = FALSE;
BOOL modePlayTouched = FALSE;
BOOL modeInstructionsTouched = FALSE;

BOOL modeMenuTransitionInFinished = FALSE;
BOOL modeBackTransitionInFinished = FALSE;
BOOL modeMenuTransitionScheduled = FALSE;
BOOL modePlayTransitionScheduled = FALSE;
BOOL modeInstructionsTransitionScheduled = FALSE;

@implementation GameModes

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	GameModes *layer = [GameModes node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        modeBannerLayer = [CCLayer node];
        modeButtonLayer = [CCLayer node];
        modeTextLayer = [CCLayer node];
        
        modeBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background_no_text.png"];
        modeBackground.position = ccp(240, 160);
        
        [self addChild: modeBackground];
        [self addChild: modeBannerLayer];
        [self addChild: modeTextLayer];
        [self addChild: modeButtonLayer];
        
        [self drawModeElements];
        [self drawModeButtons];
    }
    
    storyTouched = FALSE;
    timeTouched = FALSE;
    endlessTouched = FALSE;
    chillaxTouched = FALSE;
    modeBackTouched = FALSE;
    modePlayTouched = FALSE;
    modeInstructionsTouched = FALSE;
    modeMenuTransitionInFinished = FALSE;
    modeBackTransitionInFinished = FALSE;
    modeMenuTransitionScheduled = FALSE;
    modePlayTransitionScheduled = FALSE;
    modeInstructionsTransitionScheduled = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    //TRANSITIONS
    if(!modeMenuTransitionInFinished){
        if(modeButtonMenu.position.x < 125){
            modeButtonMenu.position = ccp(modeButtonMenu.position.x +10, modeButtonMenu.position.y);
        }
        else{
            modeMenuTransitionInFinished = TRUE;
        }
    }
    
    if(!modeBackTransitionInFinished){
        if(modeBackButtonMenu.position.x < 48){
            modeBackButtonMenu.position = ccp(modeBackButtonMenu.position.x +6, modeBackButtonMenu.position.y);
        }
        else{
            modeBackTransitionInFinished = TRUE;
        }
    }
    
    if(modeBackTouched){
        if(!modeMenuTransitionScheduled){
            [self scheduleOnce:@selector(modeMenuTransition:) delay:1];
            modeMenuTransitionScheduled = TRUE;
        }
        else{
            modeButtonMenu.position = ccp(modeButtonMenu.position.x -10, modeButtonMenu.position.y);
            modeBackButtonMenu.position = ccp(modeBackButtonMenu.position.x -6, modeBackButtonMenu.position.y);
        }
    }
    
    //GAME MODES
    if(modePlayTouched){
        if(storyTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"gameID"];
        }
        else if(timeTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"gameID"];
        }
        else if(endlessTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"gameID"];
        }
        else if(chillaxTouched){
            [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"gameID"];
        }
        
        if(!modePlayTransitionScheduled){
            [self scheduleOnce:@selector(modePlayTransition:) delay:1];
            modePlayTransitionScheduled = TRUE;
            modeExtraInfoMenu.position = ccp(-1000, -1000);
            modeInfoButtonMenu.position = ccp(-1000, -1000);
        }
        else{
            modeButtonMenu.position = ccp(modeButtonMenu.position.x -10, modeButtonMenu.position.y);
            modeBackButtonMenu.position = ccp(modeBackButtonMenu.position.x -6, modeBackButtonMenu.position.y);
        }
    }
    
    if(modeInstructionsTouched){
        if(!modeInstructionsTransitionScheduled){
            [self scheduleOnce:@selector(modeInstructionsTransition:) delay:1];
            modeInstructionsTransitionScheduled = TRUE;
            modeExtraInfoMenu.position = ccp(-1000, -1000);
            modeInfoButtonMenu.position = ccp(-1000, -1000);
        }
        else{
            modeButtonMenu.position = ccp(modeButtonMenu.position.x -10, modeButtonMenu.position.y);
            modeBackButtonMenu.position = ccp(modeBackButtonMenu.position.x -6, modeBackButtonMenu.position.y);
        }
    }
}

-(void) drawModeElements{
    modeBanner = [CCSprite spriteWithFile:@"MenuBanners/game_mode_banner.png"];
    modeBanner.position = ccp(60, 312);
    
    modeInfoStory = [[CCSprite spriteWithFile:@"GameText/story_quick_text.png"]retain];
    modeInfoTime = [[CCSprite spriteWithFile:@"GameText/time_attack_quick_text.png"]retain];
    modeInfoEndless = [[CCSprite spriteWithFile:@"GameText/endless_quick_text.png"]retain];
    modeInfoChillax = [[CCSprite spriteWithFile:@"GameText/chillax_quick_text.png"]retain];
    
    modeTextInfo = [CCMenuItemSprite itemWithNormalSprite:NULL
                                           selectedSprite:NULL];
    
    [modeTextInfo setTag: 101];
    
    modeExtraInfoMenu = [CCMenu menuWithItems: modeTextInfo, nil];
    [modeExtraInfoMenu alignItemsHorizontally];
    modeExtraInfoMenu.position = ccp(-1000, -1000);
    
    [modeTextLayer addChild: modeExtraInfoMenu];
    
    [modeBannerLayer addChild: modeBanner];
}

-(void) drawModeButtons{
    modeStoryButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/story_button.png"
                                             selectedImage:@""
                                                    target:self
                                                  selector:@selector(storyTouched:)]retain];
    
    modeTimeAttackButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/time_atk_button.png"
                                                  selectedImage:@""
                                                         target:self
                                                       selector:@selector(timeTouched:)]retain];
    
    modeEndlessButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/endless_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(endlessTouched:)]retain];
    
    modeChillaxButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/chillax_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(chillaxTouched:)]retain];
    
    modeBackButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                            selectedImage:@""
                                                   target:self
                                                 selector:@selector(backTouched:)]retain];
    
    modeInfoButtonPlay = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/play_button.png"
                                                selectedImage:@""
                                                       target:self
                                                     selector:@selector(playTouched:)]retain];
    
    modeInfoButtonInstructions = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/instructions_button.png"
                                                        selectedImage:@""
                                                               target:self
                                                             selector:@selector(instructionsTouched:)]retain];
    
    modeButtonMenu = [CCMenu menuWithItems: modeStoryButton, modeTimeAttackButton, modeEndlessButton, modeChillaxButton, nil];
    [modeButtonMenu alignItemsVerticallyWithPadding:20];
    modeButtonMenu.position = ccp(-325, 160);
    
    modeBackButtonMenu = [CCMenu menuWithItems: modeBackButton, nil];
    [modeBackButtonMenu alignItemsHorizontally];
    modeBackButtonMenu.position = ccp(-180, 16);
    
    modeInfoButtonMenu = [CCMenu menuWithItems: modeInfoButtonInstructions, modeInfoButtonPlay, nil];
    [modeInfoButtonMenu alignItemsHorizontallyWithPadding:8];
    modeInfoButtonMenu.position = ccp(-1000, -1000);
    
    [modeButtonLayer addChild: modeButtonMenu];
    [modeButtonLayer addChild: modeBackButtonMenu];
    
    [modeTextLayer addChild: modeInfoButtonMenu];
}

-(void) storyTouched:(id)sender{
    storyTouched = TRUE;
    timeTouched = FALSE;
    endlessTouched = FALSE;
    chillaxTouched = FALSE;
    
    [(CCMenuItemSprite*)[modeExtraInfoMenu getChildByTag: 101] setNormalImage:modeInfoStory];
    modeExtraInfoMenu.position = ccp(380, 125);
    modeInfoButtonMenu.position = ccp(380, 16);
    
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"instructionsID"];
}

-(void) timeTouched:(id)sender{
    storyTouched = FALSE;
    timeTouched = TRUE;
    endlessTouched = FALSE;
    chillaxTouched = FALSE;
    
    [(CCMenuItemSprite*)[modeExtraInfoMenu getChildByTag: 101] setNormalImage:modeInfoTime];
    modeExtraInfoMenu.position = ccp(380, 125);
    modeInfoButtonMenu.position = ccp(380, 16);
    
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"instructionsID"];
}

-(void) endlessTouched:(id)sender{
    storyTouched = FALSE;
    timeTouched = FALSE;
    endlessTouched = TRUE;
    chillaxTouched = FALSE;
    
    [(CCMenuItemSprite*)[modeExtraInfoMenu getChildByTag: 101] setNormalImage:modeInfoEndless];
    modeExtraInfoMenu.position = ccp(380, 125);
    modeInfoButtonMenu.position = ccp(380, 16);
    
    [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"instructionsID"];
}

-(void) chillaxTouched:(id)sender{
    storyTouched = FALSE;
    timeTouched = FALSE;
    endlessTouched = FALSE;
    chillaxTouched = TRUE;
    
    [(CCMenuItemSprite*)[modeExtraInfoMenu getChildByTag: 101] setNormalImage:modeInfoChillax];
    modeExtraInfoMenu.position = ccp(380, 125);
    modeInfoButtonMenu.position = ccp(380, 16);
    
    [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"instructionsID"];
}

-(void) backTouched:(id)sender{
    modeBackTouched = TRUE;
    modeExtraInfoMenu.position = ccp(-1000, -1000);
    modeInfoButtonMenu.position = ccp(-1000, -1000);
}

-(void) playTouched:(id)sender{
    modePlayTouched = TRUE;
}

-(void) instructionsTouched:(id)sender{
    modeInstructionsTouched = TRUE;
}

-(void) modeMenuTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[MainMenu node]]];
}

-(void) modePlayTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[ChooseModerator node]]];
}

-(void) modeInstructionsTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[Instructions node]]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [modeInfoStory release];
    [modeInfoTime release];
    [modeInfoEndless release];
    [modeInfoChillax release];
    [modeStoryButton release];
    [modeTimeAttackButton release];
    [modeEndlessButton release];
    [modeChillaxButton release];
    [modeBackButton release];
    [modeInfoButtonPlay release];
    [modeInfoButtonInstructions release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
