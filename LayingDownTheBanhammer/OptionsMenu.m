//
//  OptionsMenu.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "OptionsMenu.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

#pragma mark - OptionsMenu

CCSprite *optionsBackground;
CCSprite *optionsTextImage;

CCLayer *optionsBannerLayer;
CCLayer *optionsButtonLayer;
CCLayer *optionsTextLayer;

CCSprite *optionsBanner;

CCMenu *optionsButtonMenu;
CCMenuItemImage *optionsBackButton;

BOOL optionsBackTransitionInFinished = FALSE;
BOOL optionsBackPressed = FALSE;
BOOL optionsMenuTransitionScheduled = FALSE;

@implementation OptionsMenu

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	OptionsMenu *layer = [OptionsMenu node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        optionsBannerLayer = [CCLayer node];
        optionsButtonLayer = [CCLayer node];
        optionsTextLayer = [CCLayer node];
        
        optionsBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background_no_text.png"];
        optionsBackground.position = ccp(240, 160);
        
        optionsTextImage = [CCSprite spriteWithFile:@"BackgroundImages/options_background.png"];
        optionsTextImage.position = ccp(240, 160);
        
        [self addChild: optionsBackground];
        [self addChild: optionsTextImage];
        [self addChild: optionsBannerLayer];
        [self addChild: optionsTextLayer];
        [self addChild: optionsButtonLayer];
        
        [self drawOptionsElements];
        [self drawOptionsButtons];
    }
    
    optionsBackTransitionInFinished = FALSE;
    optionsBackPressed = FALSE;
    optionsMenuTransitionScheduled = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!optionsBackTransitionInFinished){
        if(optionsButtonMenu.position.x < 48){
            optionsButtonMenu.position = ccp(optionsButtonMenu.position.x +6, optionsButtonMenu.position.y);
        }
        else{
            optionsBackTransitionInFinished = TRUE;
        }
    }
    
    if(optionsBackPressed){
        if(!optionsMenuTransitionScheduled){
            [self scheduleOnce:@selector(optionsMenuTransition:) delay:1];
            optionsMenuTransitionScheduled = TRUE;
        }
        else{
            optionsButtonMenu.position = ccp(optionsButtonMenu.position.x -6, optionsButtonMenu.position.y);
        }
    }
}

-(void) drawOptionsButtons{
    
}

-(void) drawOptionsElements{
    optionsBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                                selectedImage:@""
                                                       target:self
                                                     selector:@selector(backTouched:)];
    
    optionsBanner = [CCSprite spriteWithFile:@"MenuBanners/options_banner.png"];
    optionsBanner.position = ccp(60, 312);
    
    [optionsBannerLayer addChild: optionsBanner];
    
    optionsButtonMenu = [CCMenu menuWithItems: optionsBackButton, nil];
    [optionsButtonMenu alignItemsHorizontally];
    optionsButtonMenu.position = ccp(-180, 16);
    
    [optionsButtonLayer addChild: optionsButtonMenu];
}

-(void) backTouched:(id)sender{
    optionsBackPressed = TRUE;
}

-(void) optionsMenuTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[MainMenu node]]];
}

@end
