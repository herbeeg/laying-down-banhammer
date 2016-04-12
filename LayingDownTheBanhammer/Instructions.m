//
//  Instructions.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "Instructions.h"
#import "GameModes.h"
#import "SimpleAudioEngine.h"

#pragma mark - Instructions

CCSprite *instructionsBackground;

CCLayer *instructionsButtonLayer;
CCMenu *instructionsButtonMenu;
CCMenuItemImage *instructionsBackButton;

BOOL instructionsBackTransitionInFinished = FALSE;
BOOL instructionsBackPressed = FALSE;
BOOL instructionsMenuTransitionScheduled = FALSE;

@implementation Instructions

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	Instructions *layer = [Instructions node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        instructionsButtonLayer = [CCLayer node];
        
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"instructionsID"] == 0){
            instructionsBackground = [CCSprite spriteWithFile:@"BackgroundImages/story_instructions.png"];
        }
        else if([[NSUserDefaults standardUserDefaults] integerForKey:@"instructionsID"] == 1){
            instructionsBackground = [CCSprite spriteWithFile:@"BackgroundImages/time_instructions.png"];
        }
        else if([[NSUserDefaults standardUserDefaults] integerForKey:@"instructionsID"] == 2){
            instructionsBackground = [CCSprite spriteWithFile:@"BackgroundImages/endless_chillax_instructions.png"];
        }
        else if([[NSUserDefaults standardUserDefaults] integerForKey:@"instructionsID"] == 3){
            instructionsBackground = [CCSprite spriteWithFile:@"BackgroundImages/endless_chillax_instructions.png"];
        }
        
        instructionsBackground.position = ccp(240, 160);
        
        [self addChild: instructionsBackground];
        [self addChild: instructionsButtonLayer];
        
        [self drawInstructionsElements];
    }

    instructionsBackPressed = FALSE;
    instructionsBackTransitionInFinished = FALSE;
    instructionsMenuTransitionScheduled = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!instructionsBackTransitionInFinished){
        if(instructionsButtonMenu.position.x < 48){
            instructionsButtonMenu.position = ccp(instructionsButtonMenu.position.x +6, instructionsButtonMenu.position.y);
        }
        else{
            instructionsBackTransitionInFinished = TRUE;
        }
    }
    
    if(instructionsBackPressed){
        if(!instructionsMenuTransitionScheduled){
            [self scheduleOnce:@selector(instructionsModeTransition:) delay:1];
            instructionsMenuTransitionScheduled = TRUE;
        }
        else{
            instructionsButtonMenu.position = ccp(instructionsButtonMenu.position.x -6, instructionsButtonMenu.position.y);
        }
    }
}

-(void) drawInstructionsElements{
    instructionsBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(backTouched:)];
    
    instructionsButtonMenu = [CCMenu menuWithItems: instructionsBackButton, nil];
    [instructionsButtonMenu alignItemsHorizontally];
    instructionsButtonMenu.position = ccp(-180, 16);
    
    [instructionsButtonLayer addChild: instructionsButtonMenu];
}

-(void) backTouched:(id)sender{
    instructionsBackPressed = TRUE;
}

-(void) instructionsModeTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[GameModes node]]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

@end
