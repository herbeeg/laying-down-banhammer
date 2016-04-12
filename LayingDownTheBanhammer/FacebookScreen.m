//
//  FacebookScreen.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "FacebookScreen.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

#pragma mark - FacebookScreen

CCSprite *facebookBackground;

CCLayer *facebookBannerLayer;
CCLayer *facebookButtonLayer;

CCSprite *facebookBanner;

CCMenu *facebookButtonMenu;
CCMenuItemImage *facebookBackButton;

BOOL facebookBackTransitionInFinished = FALSE;
BOOL facebookMenuTransitionScheduled = FALSE;
BOOL facebookBackPressed = FALSE;

@implementation FacebookScreen

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	FacebookScreen *layer = [FacebookScreen node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        facebookBannerLayer = [CCLayer node];
        facebookButtonLayer = [CCLayer node];
        
        facebookBackground = [CCSprite spriteWithFile:@"BackgroundImages/facebook_screen.png"];
        facebookBackground.position = ccp(240, 160);
        
        [self addChild: facebookBackground];
        [self addChild: facebookBannerLayer];
        [self addChild: facebookButtonLayer];
        
        [self drawFacebookElements];
    }
    
    facebookBackTransitionInFinished = FALSE;
    facebookMenuTransitionScheduled = FALSE;
    facebookBackPressed = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!facebookBackTransitionInFinished){
        if(facebookButtonMenu.position.x < 48){
            facebookButtonMenu.position = ccp(facebookButtonMenu.position.x +6, facebookButtonMenu.position.y);
        }
        else{
            facebookBackTransitionInFinished = TRUE;
        }
    }
    
    if(facebookBackPressed){
        if(!facebookMenuTransitionScheduled){
            [self scheduleOnce:@selector(facebookMenuTransition:) delay:1];
            facebookMenuTransitionScheduled = TRUE;
        }
        else{
            facebookButtonMenu.position = ccp(facebookButtonMenu.position.x -6, facebookButtonMenu.position.y);
        }
    }
}

-(void) drawFacebookElements{
    facebookBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(backTouched:)];
    
    facebookBanner = [CCSprite spriteWithFile:@"MenuBanners/facebook_banner.png"];
    facebookBanner.position = ccp(60, 312);
    
    [facebookBannerLayer addChild: facebookBanner];
    
    facebookButtonMenu = [CCMenu menuWithItems: facebookBackButton, nil];
    [facebookButtonMenu alignItemsHorizontally];
    facebookButtonMenu.position = ccp(-180, 16);
    
    [facebookButtonLayer addChild: facebookButtonMenu];
}

-(void) backTouched:(id)sender{
    facebookBackPressed = TRUE;
}

-(void) facebookMenuTransition:(id)sender{
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
