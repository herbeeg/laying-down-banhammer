//
//  TwitterScreen.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 21/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "TwitterScreen.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

#pragma mark - TwitterScreen

CCSprite *twitterBackground;

CCLayer *twitterBannerLayer;
CCLayer *twitterButtonLayer;

CCSprite *twitterBanner;

CCMenu *twitterButtonMenu;
CCMenuItemImage *twitterBackButton;

BOOL twitterBackTransitionInFinished = FALSE;
BOOL twitterMenuTransitionScheduled = FALSE;
BOOL twitterBackTouched = FALSE;

@implementation TwitterScreen

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	TwitterScreen *layer = [TwitterScreen node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        twitterBannerLayer = [CCLayer node];
        twitterButtonLayer = [CCLayer node];
        
        twitterBackground = [CCSprite spriteWithFile:@"BackgroundImages/twitter_screen.png"];
        twitterBackground.position = ccp(240, 160);
        
        [self addChild: twitterBackground];
        [self addChild: twitterBannerLayer];
        [self addChild: twitterButtonLayer];
        
        [self drawTwitterElements];
    }
    
    twitterBackTransitionInFinished = FALSE;
    twitterMenuTransitionScheduled = FALSE;
    twitterBackTouched = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!twitterBackTransitionInFinished){
        if(twitterButtonMenu.position.x < 48){
            twitterButtonMenu.position = ccp(twitterButtonMenu.position.x +6, twitterButtonMenu.position.y);
        }
        else{
            twitterBackTransitionInFinished = TRUE;
        }
    }
    
    if(twitterBackTouched){
        if(!twitterMenuTransitionScheduled){
            [self scheduleOnce:@selector(twitterMenuTransition:) delay:1];
            twitterMenuTransitionScheduled = TRUE;
        }
        else{
            twitterButtonMenu.position = ccp(twitterButtonMenu.position.x -6, twitterButtonMenu.position.y);
        }
    }
}

-(void) drawTwitterElements{
    twitterBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(backTouched:)];
    
    twitterBanner = [CCSprite spriteWithFile:@"MenuBanners/twitter_banner.png"];
    twitterBanner.position = ccp(60, 312);
    
    [twitterBannerLayer addChild: twitterBanner];
    
    twitterButtonMenu = [CCMenu menuWithItems: twitterBackButton, nil];
    [twitterButtonMenu alignItemsHorizontally];
    twitterButtonMenu.position = ccp(-180, 16);
    
    [twitterButtonLayer addChild: twitterButtonMenu];
}

-(void) backTouched:(id)sender{
    twitterBackTouched = TRUE;
}

-(void) twitterMenuTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[MainMenu node]]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
