//
//  EndlessMode.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "EndlessMode.h"
#import "GameOver.h"
#import "SimpleAudioEngine.h"

#pragma mark - EndlessMode

CCSprite *endlessBackground;
CCSprite *endlessIntro3;
CCSprite *endlessIntro2;
CCSprite *endlessIntro1;
CCSprite *endlessIntro0;

CCMenu *endlessScoreMenu;
CCMenu *endlessLivesMenu;
CCMenu *endlessSpeedMenu;

CCMenu *endlessSpriteTopLeftMenu;
CCMenu *endlessSpriteTopMidMenu;
CCMenu *endlessSpriteTopRightMenu;
CCMenu *endlessSpriteMidLeftMenu;
CCMenu *endlessSpriteMidMidMenu;
CCMenu *endlessSpriteMidRightMenu;
CCMenu *endlessSpriteBotLeftMenu;
CCMenu *endlessSpriteBotMidMenu;
CCMenu *endlessSpriteBotRightMenu;

CCMenuItemImage *endlessScoreText;
CCMenuItemSprite *endlessScoreSpriteDigitOne;
CCMenuItemSprite *endlessScoreSpriteDigitTwo;
CCMenuItemSprite *endlessScoreSpriteDigitThree;
CCMenuItemSprite *endlessScoreSpriteDigitFour;

CCMenuItemImage *endlessSpeedText;
CCMenuItemSprite *endlessSpeedSpriteDigitOne;
CCMenuItemSprite *endlessSpeedSpriteDigitTwo;

CCMenuItemImage *endlessLivesText;
CCMenuItemSprite *endlessLivesSpriteOne;
CCMenuItemSprite *endlessLivesSpriteTwo;
CCMenuItemSprite *endlessLivesSpriteThree;

CCLayer *endlessStatsLayer;
CCLayer *endlessSpriteFrontLayer;
CCLayer *endlessSpriteMidLayer;
CCLayer *endlessSpriteBackLayer;

CCSprite *endlessVolcanoFrontSpriteTopLeft;
CCMenuItemSprite *endlessVolcanoBackSpriteTopLeft;
CCSprite *endlessVolcanoFrontSpriteTopMid;
CCMenuItemSprite *endlessVolcanoBackSpriteTopMid;
CCSprite *endlessVolcanoFrontSpriteTopRight;
CCMenuItemSprite *endlessVolcanoBackSpriteTopRight;
CCSprite *endlessVolcanoFrontSpriteMidLeft;
CCMenuItemSprite *endlessVolcanoBackSpriteMidLeft;
CCSprite *endlessVolcanoFrontSpriteMidMid;
CCMenuItemSprite *endlessVolcanoBackSpriteMidMid;
CCSprite *endlessVolcanoFrontSpriteMidRight;
CCMenuItemSprite *endlessVolcanoBackSpriteMidRight;
CCSprite *endlessVolcanoFrontSpriteBotLeft;
CCMenuItemSprite *endlessVolcanoBackSpriteBotLeft;
CCSprite *endlessVolcanoFrontSpriteBotMid;
CCMenuItemSprite *endlessVolcanoBackSpriteBotMid;
CCSprite *endlessVolcanoFrontSpriteBotRight;
CCMenuItemSprite *endlessVolcanoBackSpriteBotRight;

CCMenu *endlessVolcanoMenu;

int endlessTrollTLColour = -1;
int endlessTrollTMColour = -1;
int endlessTrollTRColour = -1;
int endlessTrollMLColour = -1;
int endlessTrollMMColour = -1;
int endlessTrollMRColour = -1;
int endlessTrollBLColour = -1;
int endlessTrollBMColour = -1;
int endlessTrollBRColour = -1;

CCMenuItemSprite *endlessTrollSpriteTopLeft;
CCMenuItemSprite *endlessTrollSpriteTopMid;
CCMenuItemSprite *endlessTrollSpriteTopRight;
CCMenuItemSprite *endlessTrollSpriteMidLeft;
CCMenuItemSprite *endlessTrollSpriteMidMid;
CCMenuItemSprite *endlessTrollSpriteMidRight;
CCMenuItemSprite *endlessTrollSpriteBotLeft;
CCMenuItemSprite *endlessTrollSpriteBotMid;
CCMenuItemSprite *endlessTrollSpriteBotRight;

CCSprite *endlessTrollSpriteTLGreen;
CCSprite *endlessTrollSpriteTLGrey;
CCSprite *endlessTrollSpriteTLPurple;
CCSprite *endlessTrollSpriteTMGreen;
CCSprite *endlessTrollSpriteTMGrey;
CCSprite *endlessTrollSpriteTMPurple;
CCSprite *endlessTrollSpriteTRGreen;
CCSprite *endlessTrollSpriteTRGrey;
CCSprite *endlessTrollSpriteTRPurple;
CCSprite *endlessTrollSpriteMLGreen;
CCSprite *endlessTrollSpriteMLGrey;
CCSprite *endlessTrollSpriteMLPurple;
CCSprite *endlessTrollSpriteMMGreen;
CCSprite *endlessTrollSpriteMMGrey;
CCSprite *endlessTrollSpriteMMPurple;
CCSprite *endlessTrollSpriteMRGreen;
CCSprite *endlessTrollSpriteMRGrey;
CCSprite *endlessTrollSpriteMRPurple;
CCSprite *endlessTrollSpriteBLGreen;
CCSprite *endlessTrollSpriteBLGrey;
CCSprite *endlessTrollSpriteBLPurple;
CCSprite *endlessTrollSpriteBMGreen;
CCSprite *endlessTrollSpriteBMGrey;
CCSprite *endlessTrollSpriteBMPurple;
CCSprite *endlessTrollSpriteBRGreen;
CCSprite *endlessTrollSpriteBRGrey;
CCSprite *endlessTrollSpriteBRPurple;

CCSprite *endlessTrollSpriteTLDeadGreen;
CCSprite *endlessTrollSpriteTLDeadGrey;
CCSprite *endlessTrollSpriteTLDeadPurple;
CCSprite *endlessTrollSpriteTMDeadGreen;
CCSprite *endlessTrollSpriteTMDeadGrey;
CCSprite *endlessTrollSpriteTMDeadPurple;
CCSprite *endlessTrollSpriteTRDeadGreen;
CCSprite *endlessTrollSpriteTRDeadGrey;
CCSprite *endlessTrollSpriteTRDeadPurple;
CCSprite *endlessTrollSpriteMLDeadGreen;
CCSprite *endlessTrollSpriteMLDeadGrey;
CCSprite *endlessTrollSpriteMLDeadPurple;
CCSprite *endlessTrollSpriteMMDeadGreen;
CCSprite *endlessTrollSpriteMMDeadGrey;
CCSprite *endlessTrollSpriteMMDeadPurple;
CCSprite *endlessTrollSpriteMRDeadGreen;
CCSprite *endlessTrollSpriteMRDeadGrey;
CCSprite *endlessTrollSpriteMRDeadPurple;
CCSprite *endlessTrollSpriteBLDeadGreen;
CCSprite *endlessTrollSpriteBLDeadGrey;
CCSprite *endlessTrollSpriteBLDeadPurple;
CCSprite *endlessTrollSpriteBMDeadGreen;
CCSprite *endlessTrollSpriteBMDeadGrey;
CCSprite *endlessTrollSpriteBMDeadPurple;
CCSprite *endlessTrollSpriteBRDeadGreen;
CCSprite *endlessTrollSpriteBRDeadGrey;
CCSprite *endlessTrollSpriteBRDeadPurple;

CCSprite *endlessScoreNumber0_1;
CCSprite *endlessScoreNumber0_2;
CCSprite *endlessScoreNumber0_3;
CCSprite *endlessScoreNumber0_4;
CCSprite *endlessScoreNumber1_1;
CCSprite *endlessScoreNumber1_2;
CCSprite *endlessScoreNumber1_3;
CCSprite *endlessScoreNumber1_4;
CCSprite *endlessScoreNumber2_1;
CCSprite *endlessScoreNumber2_2;
CCSprite *endlessScoreNumber2_3;
CCSprite *endlessScoreNumber2_4;
CCSprite *endlessScoreNumber3_1;
CCSprite *endlessScoreNumber3_2;
CCSprite *endlessScoreNumber3_3;
CCSprite *endlessScoreNumber3_4;
CCSprite *endlessScoreNumber4_1;
CCSprite *endlessScoreNumber4_2;
CCSprite *endlessScoreNumber4_3;
CCSprite *endlessScoreNumber4_4;
CCSprite *endlessScoreNumber5_1;
CCSprite *endlessScoreNumber5_2;
CCSprite *endlessScoreNumber5_3;
CCSprite *endlessScoreNumber5_4;
CCSprite *endlessScoreNumber6_1;
CCSprite *endlessScoreNumber6_2;
CCSprite *endlessScoreNumber6_3;
CCSprite *endlessScoreNumber6_4;
CCSprite *endlessScoreNumber7_1;
CCSprite *endlessScoreNumber7_2;
CCSprite *endlessScoreNumber7_3;
CCSprite *endlessScoreNumber7_4;
CCSprite *endlessScoreNumber8_1;
CCSprite *endlessScoreNumber8_2;
CCSprite *endlessScoreNumber8_3;
CCSprite *endlessScoreNumber8_4;
CCSprite *endlessScoreNumber9_1;
CCSprite *endlessScoreNumber9_2;
CCSprite *endlessScoreNumber9_3;
CCSprite *endlessScoreNumber9_4;

CCSprite *endlessSpeedNumber0_1;
CCSprite *endlessSpeedNumber0_2;
CCSprite *endlessSpeedNumber1_1;
CCSprite *endlessSpeedNumber1_2;
CCSprite *endlessSpeedNumber2_1;
CCSprite *endlessSpeedNumber2_2;
CCSprite *endlessSpeedNumber3_1;
CCSprite *endlessSpeedNumber3_2;
CCSprite *endlessSpeedNumber4_1;
CCSprite *endlessSpeedNumber4_2;
CCSprite *endlessSpeedNumber5_1;
CCSprite *endlessSpeedNumber5_2;
CCSprite *endlessSpeedNumber6_1;
CCSprite *endlessSpeedNumber6_2;
CCSprite *endlessSpeedNumber7_1;
CCSprite *endlessSpeedNumber7_2;
CCSprite *endlessSpeedNumber8_1;
CCSprite *endlessSpeedNumber8_2;
CCSprite *endlessSpeedNumber9_1;
CCSprite *endlessSpeedNumber9_2;

CCSprite *endlessTrollTopLeftChat;
CCSprite *endlessTrollTopMidChat;
CCSprite *endlessTrollTopRightChat;
CCSprite *endlessTrollMidLeftChat;
CCSprite *endlessTrollMidMidChat;
CCSprite *endlessTrollMidRightChat;
CCSprite *endlessTrollBotLeftChat;
CCSprite *endlessTrollBotMidChat;
CCSprite *endlessTrollBotRightChat;

CCSprite *endlessTimeUpSprite;
BOOL endlessTimeUpDrawn = FALSE;

ccTime endlessGameTime = 0.0f;

int endlessCurrentScore = 0;
int endlessPrevScore = 0;
int endlessScoreInt = 0;
int endlessLivesRemaining = 3;
int endlessCurrentSpeed = 1;
int endlessPrevSpeed = 1;

float endlessTrollRespawnInterval = 0.0f;
float endlessTrollFadeOutCountup = 5.0f;
float endlessNextSpeedCountdown = 10.0f;

float endlessTrollTLResetTimer = 0.5f;
float endlessTrollTMResetTimer = 0.8f;
float endlessTrollTRResetTimer = 0.2f;
float endlessTrollMLResetTimer = 0.4f;
float endlessTrollMMResetTimer = 0.1f;
float endlessTrollMRResetTimer = 0.9f;
float endlessTrollBLResetTimer = 0.3f;
float endlessTrollBMResetTimer = 0.7f;
float endlessTrollBRResetTimer = 0.0f;

float endlessTrollTLTimeInPlay = 0.0f;
float endlessTrollTMTimeInPlay = 0.0f;
float endlessTrollTRTimeInPlay = 0.0f;
float endlessTrollMLTimeInPlay = 0.0f;
float endlessTrollMMTimeInPlay = 0.0f;
float endlessTrollMRTimeInPlay = 0.0f;
float endlessTrollBLTimeInPlay = 0.0f;
float endlessTrollBMTimeInPlay = 0.0f;
float endlessTrollBRTimeInPlay = 0.0f;

float endlessTrollTLFadingOutTimer = 0.0f;
float endlessTrollTMFadingOutTimer = 0.0f;
float endlessTrollTRFadingOutTimer = 0.0f;
float endlessTrollMLFadingOutTimer = 0.0f;
float endlessTrollMMFadingOutTimer = 0.0f;
float endlessTrollMRFadingOutTimer = 0.0f;
float endlessTrollBLFadingOutTimer = 0.0f;
float endlessTrollBMFadingOutTimer = 0.0f;
float endlessTrollBRFadingOutTimer = 0.0f;

BOOL endlessTrollTLTouched = FALSE;
BOOL endlessTrollTMTouched = FALSE;
BOOL endlessTrollTRTouched = FALSE;
BOOL endlessTrollMLTouched = FALSE;
BOOL endlessTrollMMTouched = FALSE;
BOOL endlessTrollMRTouched = FALSE;
BOOL endlessTrollBLTouched = FALSE;
BOOL endlessTrollBMTouched = FALSE;
BOOL endlessTrollBRTouched = FALSE;

BOOL endlessTrollTLInPlay = FALSE;
BOOL endlessTrollTMInPlay = FALSE;
BOOL endlessTrollTRInPlay = FALSE;
BOOL endlessTrollMLInPlay = FALSE;
BOOL endlessTrollMMInPlay = FALSE;
BOOL endlessTrollMRInPlay = FALSE;
BOOL endlessTrollBLInPlay = FALSE;
BOOL endlessTrollBMInPlay = FALSE;
BOOL endlessTrollBRInPlay = FALSE;

BOOL endlessStartTrollTLDeathAnim = FALSE;
BOOL endlessStartTrollTMDeathAnim = FALSE;
BOOL endlessStartTrollTRDeathAnim = FALSE;
BOOL endlessStartTrollMLDeathAnim = FALSE;
BOOL endlessStartTrollMMDeathAnim = FALSE;
BOOL endlessStartTrollMRDeathAnim = FALSE;
BOOL endlessStartTrollBLDeathAnim = FALSE;
BOOL endlessStartTrollBMDeathAnim = FALSE;
BOOL endlessStartTrollBRDeathAnim = FALSE;

BOOL endlessStartTrollTLMissed = FALSE;
BOOL endlessStartTrollTMMissed = FALSE;
BOOL endlessStartTrollTRMissed = FALSE;
BOOL endlessStartTrollMLMissed = FALSE;
BOOL endlessStartTrollMMMissed = FALSE;
BOOL endlessStartTrollMRMissed = FALSE;
BOOL endlessStartTrollBLMissed = FALSE;
BOOL endlessStartTrollBMMissed = FALSE;
BOOL endlessStartTrollBRMissed = FALSE;

int endlessTick = 0;

BOOL endlessIntroFinished = FALSE;
BOOL endlessAllChange = FALSE;

@implementation EndlessMode

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	EndlessMode *layer = [EndlessMode node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        endlessStatsLayer = [CCLayer node];
        endlessSpriteBackLayer = [CCLayer node];
        endlessSpriteMidLayer = [CCLayer node];
        endlessSpriteFrontLayer = [CCLayer node];
        
        endlessBackground = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        endlessBackground.position = ccp(240, 160);
        
        [self addChild: endlessBackground];
        [self addChild: endlessStatsLayer];
        [self addChild: endlessSpriteBackLayer];
        [self addChild: endlessSpriteFrontLayer];
        [self addChild: endlessSpriteMidLayer];
        
        [self loadEndlessSpriteElements];
        [self loadEndlessTextElements];
    }
    
    endlessTrollTLColour = -1;
    endlessTrollTMColour = -1;
    endlessTrollTRColour = -1;
    endlessTrollMLColour = -1;
    endlessTrollMMColour = -1;
    endlessTrollMRColour = -1;
    endlessTrollBLColour = -1;
    endlessTrollBMColour = -1;
    endlessTrollBRColour = -1;
    endlessTimeUpDrawn = FALSE;
    endlessGameTime = 0.0f;
    endlessCurrentScore = 0;
    endlessPrevScore = 0;
    endlessScoreInt = 0;
    endlessLivesRemaining = 3;
    endlessCurrentSpeed = 1;
    endlessPrevSpeed = 1;
    endlessTrollRespawnInterval = 0.0f;
    endlessTrollFadeOutCountup = 5.0f;
    endlessNextSpeedCountdown = 10.0f;
    endlessTrollTLResetTimer = 0.5f;
    endlessTrollTMResetTimer = 0.8f;
    endlessTrollTRResetTimer = 0.2f;
    endlessTrollMLResetTimer = 0.4f;
    endlessTrollMMResetTimer = 0.1f;
    endlessTrollMRResetTimer = 0.9f;
    endlessTrollBLResetTimer = 0.3f;
    endlessTrollBMResetTimer = 0.7f;
    endlessTrollBRResetTimer = 0.0f;
    endlessTrollTLTimeInPlay = 0.0f;
    endlessTrollTMTimeInPlay = 0.0f;
    endlessTrollTRTimeInPlay = 0.0f;
    endlessTrollMLTimeInPlay = 0.0f;
    endlessTrollMMTimeInPlay = 0.0f;
    endlessTrollMRTimeInPlay = 0.0f;
    endlessTrollBLTimeInPlay = 0.0f;
    endlessTrollBMTimeInPlay = 0.0f;
    endlessTrollBRTimeInPlay = 0.0f;
    endlessTrollTLFadingOutTimer = 0.0f;
    endlessTrollTMFadingOutTimer = 0.0f;
    endlessTrollTRFadingOutTimer = 0.0f;
    endlessTrollMLFadingOutTimer = 0.0f;
    endlessTrollMMFadingOutTimer = 0.0f;
    endlessTrollMRFadingOutTimer = 0.0f;
    endlessTrollBLFadingOutTimer = 0.0f;
    endlessTrollBMFadingOutTimer = 0.0f;
    endlessTrollBRFadingOutTimer = 0.0f;
    endlessTrollTLTouched = FALSE;
    endlessTrollTMTouched = FALSE;
    endlessTrollTRTouched = FALSE;
    endlessTrollMLTouched = FALSE;
    endlessTrollMMTouched = FALSE;
    endlessTrollMRTouched = FALSE;
    endlessTrollBLTouched = FALSE;
    endlessTrollBMTouched = FALSE;
    endlessTrollBRTouched = FALSE;
    endlessTrollTLInPlay = FALSE;
    endlessTrollTMInPlay = FALSE;
    endlessTrollTRInPlay = FALSE;
    endlessTrollMLInPlay = FALSE;
    endlessTrollMMInPlay = FALSE;
    endlessTrollMRInPlay = FALSE;
    endlessTrollBLInPlay = FALSE;
    endlessTrollBMInPlay = FALSE;
    endlessTrollBRInPlay = FALSE;
    endlessStartTrollTLDeathAnim = FALSE;
    endlessStartTrollTMDeathAnim = FALSE;
    endlessStartTrollTRDeathAnim = FALSE;
    endlessStartTrollMLDeathAnim = FALSE;
    endlessStartTrollMMDeathAnim = FALSE;
    endlessStartTrollMRDeathAnim = FALSE;
    endlessStartTrollBLDeathAnim = FALSE;
    endlessStartTrollBMDeathAnim = FALSE;
    endlessStartTrollBRDeathAnim = FALSE;
    endlessStartTrollTLMissed = FALSE;
    endlessStartTrollTMMissed = FALSE;
    endlessStartTrollTRMissed = FALSE;
    endlessStartTrollMLMissed = FALSE;
    endlessStartTrollMMMissed = FALSE;
    endlessStartTrollMRMissed = FALSE;
    endlessStartTrollBLMissed = FALSE;
    endlessStartTrollBMMissed = FALSE;
    endlessStartTrollBRMissed = FALSE;
    endlessTick = 0;
    endlessIntroFinished = FALSE;
    endlessAllChange = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    endlessGameTime += dt;
    
    if (endlessGameTime < 5 && endlessIntroFinished == NO){
        if(endlessGameTime > 0 && endlessGameTime < 1.5){
            if(endlessTick == 0){
                endlessIntro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                endlessIntro3.position = ccp(240, 160);
                [self addChild: endlessIntro3];
                endlessTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(endlessGameTime > 1.5 && endlessGameTime < 2.5){
            if(endlessTick == 1) {
                endlessIntro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                endlessIntro2.position = ccp(240, 160);
                [self addChild: endlessIntro2];
                endlessTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(endlessTick == 2){
                [self removeChild: endlessIntro3 cleanup:YES];
                endlessTick = 3;
            }
        }
        else if(endlessGameTime > 2.5 && endlessGameTime < 3.5){
            if(endlessTick == 3){
                endlessIntro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                endlessIntro1.position = ccp(240, 160);
                [self addChild: endlessIntro1];
                endlessTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(endlessTick == 4) {
                [self removeChild: endlessIntro2 cleanup:YES];
                endlessTick = 5;
            }
        }
        else if(endlessGameTime > 3.5 && endlessGameTime < 4.5){
            if(endlessTick == 5){
                endlessIntro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                endlessIntro0.position = ccp(240, 160);
                [self addChild: endlessIntro0];
                endlessTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(endlessTick == 6) {
                [self removeChild: endlessIntro1 cleanup:YES];
                endlessTick = 7;
            }
        }
        else{
            if(endlessTick == 7){
                endlessIntroFinished = YES;
                [self removeChild: endlessIntro0 cleanup:YES];
                endlessTick = 8;
                endlessAllChange = TRUE;
            }
        }
    }
    else if(endlessTick == 8){
        if(endlessAllChange){
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_endless_mode.mp3"];
            endlessAllChange = FALSE;
            [self drawEndlessElements];
        }
        
        //TIME MECHANIC CALCULATIONS
        if(endlessTrollTLInPlay){
            if(endlessTrollTLTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollTLMissed = TRUE;
                endlessTrollTopLeftChat.position = ccp(-1000, -1000);
                endlessSpriteTopLeftMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollTLTimeInPlay += dt;
            }
        }
        else{
            endlessTrollTLResetTimer -= dt;
            if(endlessTrollTLResetTimer <= 0){
                endlessSpriteTopLeftMenu.position = ccp(80, 270);
                endlessTrollTopLeftChat.position = ccp(112, 280);
                endlessTrollTLInPlay = TRUE;
                endlessTrollTLTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollTMInPlay){
            if(endlessTrollTMTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollTMMissed = TRUE;
                endlessTrollTopMidChat.position = ccp(-1000, -1000);
                endlessSpriteTopMidMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollTMTimeInPlay += dt;
            }
        }
        else{
            endlessTrollTMResetTimer -= dt;
            if(endlessTrollTMResetTimer <= 0){
                endlessSpriteTopMidMenu.position = ccp(240, 270);
                endlessTrollTopMidChat.position = ccp(272, 280);
                endlessTrollTMInPlay = TRUE;
                endlessTrollTMTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollTRInPlay){
            if(endlessTrollTRTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollTRMissed = TRUE;
                endlessTrollTopRightChat.position = ccp(-1000, -1000);
                endlessSpriteTopRightMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollTRTimeInPlay += dt;
            }
        }
        else{
            endlessTrollTRResetTimer -= dt;
            if(endlessTrollTRResetTimer <= 0){
                endlessSpriteTopRightMenu.position = ccp(400, 270);
                endlessTrollTopRightChat.position = ccp(432, 280);
                endlessTrollTRInPlay = TRUE;
                endlessTrollTRTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollMLInPlay){
            if(endlessTrollMLTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollMLMissed = TRUE;
                endlessTrollMidLeftChat.position = ccp(-1000, -1000);
                endlessSpriteMidLeftMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollMLTimeInPlay += dt;
            }
        }
        else{
            endlessTrollMLResetTimer -= dt;
            if(endlessTrollMLResetTimer <= 0){
                endlessSpriteMidLeftMenu.position = ccp(80, 190);
                endlessTrollMidLeftChat.position = ccp(112, 200);
                endlessTrollMLInPlay = TRUE;
                endlessTrollMLTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollMMInPlay){
            if(endlessTrollMMTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollMMMissed = TRUE;
                endlessTrollMidMidChat.position = ccp(-1000, -1000);
                endlessSpriteMidMidMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollMMTimeInPlay += dt;
            }
        }
        else{
            endlessTrollMMResetTimer -= dt;
            if(endlessTrollMMResetTimer <= 0){
                endlessSpriteMidMidMenu.position = ccp(240, 190);
                endlessTrollMidMidChat.position = ccp(272, 200);
                endlessTrollMMInPlay = TRUE;
                endlessTrollMMTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollMRInPlay){
            if(endlessTrollMRTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollMRMissed = TRUE;
                endlessTrollMidRightChat.position = ccp(-1000, -1000);
                endlessSpriteMidRightMenu.position = ccp(-1000, -1000);
            }
            else{
                
            }
            endlessTrollMRTimeInPlay += dt;
        }
        else{
            endlessTrollMRResetTimer -= dt;
            if(endlessTrollMRResetTimer <= 0){
                endlessSpriteMidRightMenu.position = ccp(400, 190);
                endlessTrollMidRightChat.position = ccp(432, 200);
                endlessTrollMRInPlay = TRUE;
                endlessTrollMRTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollBLInPlay){
            if(endlessTrollBLTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollBLMissed = TRUE;
                endlessTrollBotLeftChat.position = ccp(-1000, -1000);
                endlessSpriteBotLeftMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollBLTimeInPlay += dt;
            }
        }
        else{
            endlessTrollBLResetTimer -= dt;
            if(endlessTrollBLResetTimer <= 0){
                endlessSpriteBotLeftMenu.position = ccp(80, 110);
                endlessTrollBotLeftChat.position = ccp(112, 120);
                endlessTrollBLInPlay = TRUE;
                endlessTrollBLTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollBMInPlay){
            if(endlessTrollBMTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollBMMissed = TRUE;
                endlessTrollBotMidChat.position = ccp(-1000, -1000);
                endlessSpriteBotMidMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollBMTimeInPlay += dt;
            }
        }
        else{
            endlessTrollBMResetTimer -= dt;
            if(endlessTrollBMResetTimer <= 0){
                endlessSpriteBotMidMenu.position = ccp(240, 110);
                endlessTrollBotMidChat.position = ccp(272, 120);
                endlessTrollBMInPlay = TRUE;
                endlessTrollBMTimeInPlay = 0.0f;
            }
        }
        
        if(endlessTrollBRInPlay){
            if(endlessTrollBRTimeInPlay >= endlessTrollFadeOutCountup){
                endlessStartTrollBRMissed = TRUE;
                endlessTrollBotRightChat.position = ccp(-1000, -1000);
                endlessSpriteBotRightMenu.position = ccp(-1000, -1000);
            }
            else{
                endlessTrollBRTimeInPlay += dt;
            }
        }
        else{
            endlessTrollBRResetTimer -= dt;
            if(endlessTrollBRResetTimer <= 0){
                endlessSpriteBotRightMenu.position = ccp(400, 110);
                endlessTrollBotRightChat.position = ccp(432, 120);
                endlessTrollBRInPlay = TRUE;
                endlessTrollBRTimeInPlay = 0.0f;
            }
        }
        
        //TOUCH MECHANICS
        if(endlessTrollTLTouched){
            endlessStartTrollTLDeathAnim = TRUE;
            endlessTrollTLTouched = FALSE;
            if(endlessTrollTLColour == 0){
                [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLDeadGreen];
            }
            else if(endlessTrollTLColour == 1){
                [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLDeadGrey];
            }
            else if(endlessTrollTLColour == 2){
                [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLDeadPurple];
            }
            
            endlessTrollTopLeftChat.position = ccp(-1000, -1000);
            
            id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteTopLeft runAction:actionFade1];
        }
        else if(endlessTrollTMTouched){
            endlessStartTrollTMDeathAnim = TRUE;
            endlessTrollTMTouched = FALSE;
            if(endlessTrollTMColour == 0){
                [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMDeadGreen];
            }
            else if(endlessTrollTMColour == 1){
                [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMDeadGrey];
            }
            else if(endlessTrollTMColour == 2){
                [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMDeadPurple];
            }
            
            endlessTrollTopMidChat.position = ccp(-1000, -1000);
            
            id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteTopMid runAction:actionFade2];
        }
        else if(endlessTrollTRTouched){
            endlessStartTrollTRDeathAnim = TRUE;
            endlessTrollTRTouched = FALSE;
            if(endlessTrollTRColour == 0){
                [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRDeadGreen];
            }
            else if(endlessTrollTRColour == 1){
                [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRDeadGrey];
            }
            else if(endlessTrollTRColour == 2){
                [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRDeadPurple];
            }
            
            endlessTrollTopRightChat.position = ccp(-1000, -1000);
            
            id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteTopRight runAction:actionFade3];
        }
        else if(endlessTrollMLTouched){
            endlessStartTrollMLDeathAnim = TRUE;
            endlessTrollMLTouched = FALSE;
            if(endlessTrollMLColour == 0){
                [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLDeadGreen];
            }
            else if(endlessTrollMLColour == 1){
                [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLDeadGrey];
            }
            else if(endlessTrollMLColour == 2){
                [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLDeadPurple];
            }
            
            endlessTrollMidLeftChat.position = ccp(-1000, -1000);
            
            id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteMidLeft runAction:actionFade4];
        }
        else if(endlessTrollMMTouched){
            endlessStartTrollMMDeathAnim = TRUE;
            endlessTrollMMTouched = FALSE;
            if(endlessTrollMMColour == 0){
                [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMDeadGreen];
            }
            else if(endlessTrollMMColour == 1){
                [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMDeadGrey];
            }
            else if(endlessTrollMMColour == 2){
                [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMDeadPurple];
            }
            
            endlessTrollMidMidChat.position = ccp(-1000, -1000);
            
            id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteMidMid runAction:actionFade5];
        }
        else if(endlessTrollMRTouched){
            endlessStartTrollMRDeathAnim = TRUE;
            endlessTrollMRTouched = FALSE;
            if(endlessTrollMRColour == 0){
                [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRDeadGreen];
            }
            else if(endlessTrollMRColour == 1){
                [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRDeadGrey];
            }
            else if(endlessTrollMRColour == 2){
                [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRDeadPurple];
            }
            
            endlessTrollMidRightChat.position = ccp(-1000, -1000);
            
            id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteMidRight runAction:actionFade6];
        }
        else if(endlessTrollBLTouched){
            endlessStartTrollBLDeathAnim = TRUE;
            endlessTrollBLTouched = FALSE;
            if(endlessTrollBLColour == 0){
                [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLDeadGreen];
            }
            else if(endlessTrollBLColour == 1){
                [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLDeadGrey];
            }
            else if(endlessTrollBLColour == 2){
                [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLDeadPurple];
            }
            
            endlessTrollBotLeftChat.position = ccp(-1000, -1000);
            
            id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteBotLeft runAction:actionFade7];
        }
        else if(endlessTrollBMTouched){
            endlessStartTrollBMDeathAnim = TRUE;
            endlessTrollBMTouched = FALSE;
            if(endlessTrollBMColour == 0){
                [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMDeadGreen];
            }
            else if(endlessTrollBMColour == 1){
                [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMDeadGrey];
            }
            else if(endlessTrollBMColour == 2){
                [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMDeadPurple];
            }
            
            endlessTrollBotMidChat.position = ccp(-1000, -1000);
            
            id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteBotMid runAction:actionFade8];
        }
        else if(endlessTrollBRTouched){
            endlessStartTrollBRDeathAnim = TRUE;
            endlessTrollBRTouched = FALSE;
            if(endlessTrollBRColour == 0){
                [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRDeadGreen];
            }
            else if(endlessTrollBRColour == 1){
                [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRDeadGrey];
            }
            else if(endlessTrollBRColour == 2){
                [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRDeadPurple];
            }
            
            endlessTrollBotRightChat.position = ccp(-1000, -1000);
            
            id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
            [endlessTrollSpriteBotRight runAction:actionFade9];
        }
        
        //TROLL DEATH ANIMATIONS
        if(endlessStartTrollTLDeathAnim){
            if(endlessTrollTLFadingOutTimer < 0.25){
                endlessTrollTLFadingOutTimer += dt;
                endlessSpriteTopLeftMenu.position = ccp(endlessSpriteTopLeftMenu.position.x, endlessSpriteTopLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollTLDeathAnim = FALSE;
                endlessTrollTLTimeInPlay = 0.0f;
                endlessTrollTLFadingOutTimer = 0.0f;
                endlessTrollTLInPlay = FALSE;
                endlessTrollTLResetTimer = endlessTrollRespawnInterval;
                
                id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteTopLeft runAction:actionReset1];
                
                if(endlessTrollTLColour == 0){
                    [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLGreen];
                }
                else if(endlessTrollTLColour == 1){
                    [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLGrey];
                }
                else if(endlessTrollTLColour == 2){
                    [endlessTrollSpriteTopLeft setNormalImage:endlessTrollSpriteTLPurple];
                }
                
                endlessSpriteTopLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollTMDeathAnim){
            if(endlessTrollTMFadingOutTimer < 0.25){
                endlessTrollTMFadingOutTimer += dt;
                endlessSpriteTopMidMenu.position = ccp(endlessSpriteTopMidMenu.position.x, endlessSpriteTopMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollTMDeathAnim = FALSE;
                endlessTrollTMTimeInPlay = 0.0f;
                endlessTrollTMFadingOutTimer = 0.0f;
                endlessTrollTMInPlay = FALSE;
                endlessTrollTMResetTimer = endlessTrollRespawnInterval;
                
                id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteTopMid runAction:actionReset2];
                
                if(endlessTrollTMColour == 0){
                    [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMGreen];
                }
                else if(endlessTrollTMColour == 1){
                    [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMGrey];
                }
                else if(endlessTrollTMColour == 2){
                    [endlessTrollSpriteTopMid setNormalImage:endlessTrollSpriteTMPurple];
                }
                
                endlessSpriteTopMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollTRDeathAnim){
            if(endlessTrollTRFadingOutTimer < 0.25){
                endlessTrollTRFadingOutTimer += dt;
                endlessSpriteTopRightMenu.position = ccp(endlessSpriteTopRightMenu.position.x, endlessSpriteTopRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollTRDeathAnim = FALSE;
                endlessTrollTRTimeInPlay = 0.0f;
                endlessTrollTRFadingOutTimer = 0.0f;
                endlessTrollTRInPlay = FALSE;
                endlessTrollTRResetTimer = endlessTrollRespawnInterval;
                
                id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteTopRight runAction:actionReset3];
                
                if(endlessTrollTRColour == 0){
                    [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRGreen];
                }
                else if(endlessTrollTRColour == 1){
                    [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRGrey];
                }
                else if(endlessTrollTRColour == 2){
                    [endlessTrollSpriteTopRight setNormalImage:endlessTrollSpriteTRPurple];
                }
                
                endlessSpriteTopRightMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollMLDeathAnim){
            if(endlessTrollMLFadingOutTimer < 0.25){
                endlessTrollMLFadingOutTimer += dt;
                endlessSpriteMidLeftMenu.position = ccp(endlessSpriteMidLeftMenu.position.x, endlessSpriteMidLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollMLDeathAnim = FALSE;
                endlessTrollMLTimeInPlay = 0.0f;
                endlessTrollMLFadingOutTimer = 0.0f;
                endlessTrollMLInPlay = FALSE;
                endlessTrollMLResetTimer = endlessTrollRespawnInterval;
                
                id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteMidLeft runAction:actionReset4];
                
                if(endlessTrollMLColour == 0){
                    [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLGreen];
                }
                else if(endlessTrollMLColour == 1){
                    [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLGrey];
                }
                else if(endlessTrollMLColour == 2){
                    [endlessTrollSpriteMidLeft setNormalImage:endlessTrollSpriteMLPurple];
                }
                
                endlessSpriteMidLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollMMDeathAnim){
            if(endlessTrollMMFadingOutTimer < 0.25){
                endlessTrollMMFadingOutTimer += dt;
                endlessSpriteMidMidMenu.position = ccp(endlessSpriteMidMidMenu.position.x, endlessSpriteMidMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollMMDeathAnim = FALSE;
                endlessTrollMMTimeInPlay = 0.0f;
                endlessTrollMMFadingOutTimer = 0.0f;
                endlessTrollMMInPlay = FALSE;
                endlessTrollMMResetTimer = endlessTrollRespawnInterval;
                
                id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteMidMid runAction:actionReset5];
                
                if(endlessTrollMMColour == 0){
                    [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMGreen];
                }
                else if(endlessTrollMMColour == 1){
                    [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMGrey];
                }
                else if(endlessTrollMMColour == 2){
                    [endlessTrollSpriteMidMid setNormalImage:endlessTrollSpriteMMPurple];
                }
                
                endlessSpriteMidMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollMRDeathAnim){
            if(endlessTrollMRFadingOutTimer < 0.25){
                endlessTrollMRFadingOutTimer += dt;
                endlessSpriteMidRightMenu.position = ccp(endlessSpriteMidRightMenu.position.x, endlessSpriteMidRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollMRDeathAnim = FALSE;
                endlessTrollMRTimeInPlay = 0.0f;
                endlessTrollMRFadingOutTimer = 0.0f;
                endlessTrollMRInPlay = FALSE;
                endlessTrollMRResetTimer = endlessTrollRespawnInterval;
                
                id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteMidRight runAction:actionReset6];
                
                if(endlessTrollMRColour == 0){
                    [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRGreen];
                }
                else if(endlessTrollMRColour == 1){
                    [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRGrey];
                }
                else if(endlessTrollMRColour == 2){
                    [endlessTrollSpriteMidRight setNormalImage:endlessTrollSpriteMRPurple];
                }
                
                endlessSpriteMidRightMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollBLDeathAnim){
            if(endlessTrollBLFadingOutTimer < 0.25){
                endlessTrollBLFadingOutTimer += dt;
                endlessSpriteBotLeftMenu.position = ccp(endlessSpriteBotLeftMenu.position.x, endlessSpriteBotLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollBLDeathAnim = FALSE;
                endlessTrollBLTimeInPlay = 0.0f;
                endlessTrollBLFadingOutTimer = 0.0f;
                endlessTrollBLInPlay = FALSE;
                endlessTrollBLResetTimer = endlessTrollRespawnInterval;
                
                id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteBotLeft runAction:actionReset7];
                
                if(endlessTrollBLColour == 0){
                    [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLGreen];
                }
                else if(endlessTrollBLColour == 1){
                    [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLGrey];
                }
                else if(endlessTrollBLColour == 2){
                    [endlessTrollSpriteBotLeft setNormalImage:endlessTrollSpriteBLPurple];
                }
                
                endlessSpriteBotLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollBMDeathAnim){
            if(endlessTrollBMFadingOutTimer < 0.25){
                endlessTrollBMFadingOutTimer += dt;
                endlessSpriteBotMidMenu.position = ccp(endlessSpriteBotMidMenu.position.x, endlessSpriteBotMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollBMDeathAnim = FALSE;
                endlessTrollBMTimeInPlay = 0.0f;
                endlessTrollBMFadingOutTimer = 0.0f;
                endlessTrollBMInPlay = FALSE;
                endlessTrollBMResetTimer = endlessTrollRespawnInterval;
                
                id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteBotMid runAction:actionReset8];
                
                if(endlessTrollBMColour == 0){
                    [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMGreen];
                }
                else if(endlessTrollBMColour == 1){
                    [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMGrey];
                }
                else if(endlessTrollBMColour == 2){
                    [endlessTrollSpriteBotMid setNormalImage:endlessTrollSpriteBMPurple];
                }
                
                endlessSpriteBotMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(endlessStartTrollBRDeathAnim){
            if(endlessTrollBRFadingOutTimer < 0.25){
                endlessTrollBRFadingOutTimer += dt;
                endlessSpriteBotRightMenu.position = ccp(endlessSpriteBotRightMenu.position.x, endlessSpriteBotRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                endlessTrollRespawnInterval = (float)i / 100.0f;
                
                endlessStartTrollBRDeathAnim = FALSE;
                endlessTrollBRTimeInPlay = 0.0f;
                endlessTrollBRFadingOutTimer = 0.0f;
                endlessTrollBRInPlay = FALSE;
                endlessTrollBRResetTimer = endlessTrollRespawnInterval;
                
                id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                [endlessTrollSpriteBotRight runAction:actionReset9];
                
                if(endlessTrollBRColour == 0){
                    [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRGreen];
                }
                else if(endlessTrollBRColour == 1){
                    [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRGrey];
                }
                else if(endlessTrollBRColour == 2){
                    [endlessTrollSpriteBotRight setNormalImage:endlessTrollSpriteBRPurple];
                }
                
                endlessSpriteBotRightMenu.position = ccp(-1000, -1000);
            }
        }
        
        //TROLL MISSED
        if(endlessStartTrollTLMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollTLMissed = FALSE;
            endlessTrollTLTimeInPlay = 0.0f;
            endlessTrollTLInPlay = FALSE;
            endlessTrollTLResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;

            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollTMMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollTMMissed = FALSE;
            endlessTrollTMTimeInPlay = 0.0f;
            endlessTrollTMInPlay = FALSE;
            endlessTrollTMResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollTRMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollTRMissed = FALSE;
            endlessTrollTRTimeInPlay = 0.0f;
            endlessTrollTRInPlay = FALSE;
            endlessTrollTRResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollMLMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollMLMissed = FALSE;
            endlessTrollMLTimeInPlay = 0.0f;
            endlessTrollMLInPlay = FALSE;
            endlessTrollMLResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollMMMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollMMMissed = FALSE;
            endlessTrollMMTimeInPlay = 0.0f;
            endlessTrollMMInPlay = FALSE;
            endlessTrollMMResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollMRMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollMRMissed = FALSE;
            endlessTrollMRTimeInPlay = 0.0f;
            endlessTrollMRInPlay = FALSE;
            endlessTrollMRResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollBLMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollBLMissed = FALSE;
            endlessTrollBLTimeInPlay = 0.0f;
            endlessTrollBLInPlay = FALSE;
            endlessTrollBLResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollBMMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollBMMissed = FALSE;
            endlessTrollBMTimeInPlay = 0.0f;
            endlessTrollBMInPlay = FALSE;
            endlessTrollBMResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        if(endlessStartTrollBRMissed){
            int i = (arc4random() % (301)) + 200;
            endlessTrollRespawnInterval = (float)i / 100.0f;
            endlessStartTrollBRMissed = FALSE;
            endlessTrollBRTimeInPlay = 0.0f;
            endlessTrollBRInPlay = FALSE;
            endlessTrollBRResetTimer = endlessTrollRespawnInterval;
            endlessLivesRemaining--;
            
            if(endlessLivesRemaining == 2){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 1){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(endlessLivesRemaining == 0){
                endlessLivesSpriteThree.position = ccp(-1000, -1000);
                endlessLivesSpriteTwo.position = ccp(-1000, -1000);
                endlessLivesSpriteOne.position = ccp(-1000, -1000);
            }
            else{
                //GAME OVER
                endlessTick = 9;
            }
        }
        
        endlessScoreInt = endlessCurrentScore;
        
        //SCORE CALCULATIONS
        if(endlessLivesRemaining >= 0) {
            if(endlessCurrentScore != endlessPrevScore){
                if(endlessCurrentScore >= 0 && endlessCurrentScore < 10){
                    if(endlessCurrentScore == 0){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber0_4];
                    }
                    else if(endlessCurrentScore == 1){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber1_4];
                    }
                    else if(endlessCurrentScore == 2){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber2_4];
                    }
                    else if(endlessCurrentScore == 3){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber3_4];
                    }
                    else if(endlessCurrentScore == 4){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber4_4];
                    }
                    else if(endlessCurrentScore == 5){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber5_4];
                    }
                    else if(endlessCurrentScore == 6){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber6_4];
                    }
                    else if(endlessCurrentScore == 7){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber7_4];
                    }
                    else if(endlessCurrentScore == 8){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber8_4];
                    }
                    else if(endlessCurrentScore == 9){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber9_4];
                    }
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber0_1];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber0_2];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber0_3];
                }
                
                else if(endlessCurrentScore >= 10 && endlessCurrentScore <= 99){
                    int lSDS = endlessScoreInt % 10;
                    if(lSDS == 0){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber0_4];
                    }
                    else if(lSDS == 1){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber1_4];
                    }
                    else if(lSDS == 2){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber2_4];
                    }
                    else if(lSDS == 3){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber3_4];
                    }
                    else if(lSDS == 4){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber4_4];
                    }
                    else if(lSDS == 5){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber5_4];
                    }
                    else if(lSDS == 6){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber6_4];
                    }
                    else if(lSDS == 7){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber7_4];
                    }
                    else if(lSDS == 8){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber8_4];
                    }
                    else if(lSDS == 9){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber9_4];
                    }
                    
                    if(endlessCurrentScore >= 10 && endlessCurrentScore <= 19){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber1_3];
                    }
                    else if(endlessCurrentScore >= 20 && endlessCurrentScore <= 29){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber2_3];
                    }
                    else if(endlessCurrentScore >= 30 && endlessCurrentScore <= 39){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber3_3];
                    }
                    else if(endlessCurrentScore >= 40 && endlessCurrentScore <= 49){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber4_3];
                    }
                    else if(endlessCurrentScore >= 50 && endlessCurrentScore <= 59){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber5_3];
                    }
                    else if(endlessCurrentScore >= 60 && endlessCurrentScore <= 69){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber6_3];
                    }
                    else if(endlessCurrentScore >= 70 && endlessCurrentScore <= 79){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber7_3];
                    }
                    else if(endlessCurrentScore >= 80 && endlessCurrentScore <= 89){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber8_3];
                    }
                    else if(endlessCurrentScore >= 90 && endlessCurrentScore <= 99){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber9_3];
                    }
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber0_2];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber0_1];
                }
                
                else if(endlessCurrentScore >= 100 && endlessCurrentScore <= 999){
                    int endlessCount = 0;
                    while(endlessCount < 2){
                        int lSDSs = endlessScoreInt % 10;
                        if(endlessCount == 0){
                            if(lSDSs == 0){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber0_4];
                            }
                            else if(lSDSs == 1){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber1_4];
                            }
                            else if(lSDSs == 2){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber2_4];
                            }
                            else if(lSDSs == 3){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber3_4];
                            }
                            else if(lSDSs == 4){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber4_4];
                            }
                            else if(lSDSs == 5){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber5_4];
                            }
                            else if(lSDSs == 6){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber6_4];
                            }
                            else if(lSDSs == 7){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber7_4];
                            }
                            else if(lSDSs == 8){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber8_4];
                            }
                            else if(lSDSs == 9){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber9_4];
                            }
                        }
                        else if(endlessCount == 1){
                            if(lSDSs == 0){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber0_3];
                            }
                            else if(lSDSs == 1){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber1_3];
                            }
                            else if(lSDSs == 2){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber2_3];
                            }
                            else if(lSDSs == 3){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber3_3];
                            }
                            else if(lSDSs == 4){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber4_3];
                            }
                            else if(lSDSs == 5){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber5_3];
                            }
                            else if(lSDSs == 6){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber6_3];
                            }
                            else if(lSDSs == 7){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber7_3];
                            }
                            else if(lSDSs == 8){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber8_3];
                            }
                            else if(lSDSs == 9){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber9_3];
                            }
                        }
                        endlessScoreInt /= 10;
                        endlessCount++;
                    }
                    
                    if(endlessCurrentScore >= 100 && endlessCurrentScore <= 199){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber1_2];
                    }
                    else if(endlessCurrentScore >= 200 && endlessCurrentScore <= 299){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber2_2];
                    }
                    else if(endlessCurrentScore >= 300 && endlessCurrentScore <= 399){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber3_2];
                    }
                    else if(endlessCurrentScore >= 400 && endlessCurrentScore <= 499){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber4_2];
                    }
                    else if(endlessCurrentScore >= 500 && endlessCurrentScore <= 599){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber5_2];
                    }
                    else if(endlessCurrentScore >= 600 && endlessCurrentScore <= 699){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber6_2];
                    }
                    else if(endlessCurrentScore >= 700 && endlessCurrentScore <= 799){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber7_2];
                    }
                    else if(endlessCurrentScore >= 800 && endlessCurrentScore <= 899){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber8_2];
                    }
                    else if(endlessCurrentScore >= 900 && endlessCurrentScore <= 999){
                        [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber9_2];
                    }
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber0_1];
                }
                
                else if(endlessCurrentScore >= 1000 && endlessCurrentScore <= 9999){
                    int endlessCount = 0;
                    while(endlessCount < 3){
                        int lSDSsS = endlessScoreInt % 10;
                        if(endlessCount == 0){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber0_4];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber1_4];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber2_4];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber3_4];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber4_4];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber5_4];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber6_4];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber7_4];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber8_4];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber9_4];
                            }
                        }
                        else if(endlessCount == 1){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber0_3];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber1_3];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber2_3];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber3_3];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber4_3];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber5_3];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber6_3];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber7_3];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber8_3];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber9_3];
                            }
                        }
                        else if(endlessCount == 2){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber0_2];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber1_2];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber2_2];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber3_2];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber4_2];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber5_2];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber6_2];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber7_2];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber8_2];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber9_2];
                            }
                        }
                        endlessScoreInt /= 10;
                        endlessCount++;
                        
                        if(endlessCurrentScore >= 1000 && endlessCurrentScore <= 1999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber1_1];
                        }
                        else if(endlessCurrentScore >= 2000 && endlessCurrentScore <= 2999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber2_1];
                        }
                        else if(endlessCurrentScore >= 3000 && endlessCurrentScore <= 3999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber3_1];
                        }
                        else if(endlessCurrentScore >= 4000 && endlessCurrentScore <= 4999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber4_1];
                        }
                        else if(endlessCurrentScore >= 5000 && endlessCurrentScore <= 5999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber5_1];
                        }
                        else if(endlessCurrentScore >= 6000 && endlessCurrentScore <= 6999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber6_1];
                        }
                        else if(endlessCurrentScore >= 7000 && endlessCurrentScore <= 7999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber7_1];
                        }
                        else if(endlessCurrentScore >= 8000 && endlessCurrentScore <= 8999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber8_1];
                        }
                        else if(endlessCurrentScore >= 9000 && endlessCurrentScore <= 9999){
                            [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber9_1];
                        }
                    }
                }
                
                else if(endlessCurrentScore <= 0){
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 104] setNormalImage:endlessScoreNumber0_4];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 103] setNormalImage:endlessScoreNumber0_3];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 102] setNormalImage:endlessScoreNumber0_2];
                    [(CCMenuItemSprite*)[endlessScoreMenu getChildByTag: 101] setNormalImage:endlessScoreNumber0_1];
                }
            }
        }
        
        if(endlessNextSpeedCountdown <= 0.0f){
            endlessCurrentSpeed++;
            endlessTrollFadeOutCountup -= 0.25f;
            endlessNextSpeedCountdown = 10.0f;
        }
        else{
            endlessNextSpeedCountdown -= dt;
        }
        
        //SPEED CALCULATIONS
        if(endlessCurrentSpeed != endlessPrevSpeed){
            if(endlessCurrentSpeed == 1){
                //DO NOTHING
            }
            else if(endlessCurrentSpeed == 2){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber2_2];
            }
            else if(endlessCurrentSpeed == 3){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber3_2];
            }
            else if(endlessCurrentSpeed == 4){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber4_2];
            }
            else if(endlessCurrentSpeed == 5){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber5_2];
            }
            else if(endlessCurrentSpeed == 6){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber6_2];
            }
            else if(endlessCurrentSpeed == 7){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber7_2];
            }
            else if(endlessCurrentSpeed == 8){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber8_2];
            }
            else if(endlessCurrentSpeed == 9){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber0_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber9_2];
            }
            else if(endlessCurrentSpeed == 10){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber0_2];
            }
            else if(endlessCurrentSpeed == 11){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber1_2];
            }
            else if(endlessCurrentSpeed == 12){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber2_2];
            }
            else if(endlessCurrentSpeed == 13){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber3_2];
            }
            else if(endlessCurrentSpeed == 14){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber4_2];
            }
            else if(endlessCurrentSpeed == 15){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber5_2];
            }
            else if(endlessCurrentSpeed == 16){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber6_2];
            }
            else if(endlessCurrentSpeed == 17){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber7_2];
            }
            else if(endlessCurrentSpeed == 18){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber8_2];
            }
            else if(endlessCurrentSpeed == 19){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber1_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber9_2];
            }
            else if(endlessCurrentSpeed == 20){
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 201] setNormalImage:endlessSpeedNumber2_1];
                [(CCMenuItemSprite*)[endlessSpeedMenu getChildByTag: 202] setNormalImage:endlessSpeedNumber0_2];
            }
            endlessPrevSpeed = endlessCurrentSpeed;
        }
    }
    else if(endlessTick == 9){
        if(!endlessTimeUpDrawn){
            endlessTimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
            endlessTimeUpSprite.position = ccp(240, 836);
            [self addChild: endlessTimeUpSprite];
            [self scheduleOnce:@selector(endlessGameOver:) delay:2];
            endlessTimeUpDrawn = TRUE;
        }
        else{
            if(endlessTimeUpSprite.position.y <= -64){
                //DO NOTHING
            }
            else{
                endlessTimeUpSprite.position = ccp(endlessTimeUpSprite.position.x, endlessTimeUpSprite.position.y -10);
            }
        }
    }
}

-(void) loadEndlessSpriteElements{
    endlessVolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    endlessVolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    endlessVolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    endlessVolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    endlessVolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topRightExtraTouched:)];
    
    endlessVolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midLeftExtraTouched:)];
    
    endlessVolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    endlessVolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midRightExtraTouched:)];
    
    endlessVolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botLeftExtraTouched:)];
    
    endlessVolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    endlessVolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botRightExtraTouched:)];
    
    endlessVolcanoFrontSpriteTopLeft.position = ccp(80, 250);
    endlessVolcanoBackSpriteTopLeft.position = ccp(-160, 90);
    endlessVolcanoFrontSpriteTopMid.position = ccp(240, 250);
    endlessVolcanoBackSpriteTopMid.position = ccp(0, 90);
    endlessVolcanoFrontSpriteTopRight.position = ccp(400, 250);
    endlessVolcanoBackSpriteTopRight.position = ccp(160, 90);
    
    endlessVolcanoFrontSpriteMidLeft.position = ccp(80, 170);
    endlessVolcanoBackSpriteMidLeft.position = ccp(-160, 10);
    endlessVolcanoFrontSpriteMidMid.position = ccp(240, 170);
    endlessVolcanoBackSpriteMidMid.position = ccp(0, 10);
    endlessVolcanoFrontSpriteMidRight.position = ccp(400, 170);
    endlessVolcanoBackSpriteMidRight.position = ccp(160, 10);
    
    endlessVolcanoFrontSpriteBotLeft.position = ccp(80, 90);
    endlessVolcanoBackSpriteBotLeft.position = ccp(-160, -70);
    endlessVolcanoFrontSpriteBotMid.position = ccp(240, 90);
    endlessVolcanoBackSpriteBotMid.position = ccp(0, -70);
    endlessVolcanoFrontSpriteBotRight.position = ccp(400, 90);
    endlessVolcanoBackSpriteBotRight.position = ccp(160, -70);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                endlessTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                endlessTrollTLColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                endlessTrollTLColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                endlessTrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                endlessTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(topMidTouched:)];
                
                endlessTrollTMColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(topMidTouched:)];
                
                endlessTrollTMColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(topMidTouched:)];
                
                endlessTrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                endlessTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topRightTouched:)];
                
                endlessTrollTRColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topRightTouched:)];
                
                endlessTrollTRColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topRightTouched:)];
                
                endlessTrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                endlessTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                endlessTrollMLColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                endlessTrollMLColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                endlessTrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                endlessTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(midMidTouched:)];
                
                endlessTrollMMColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(midMidTouched:)];
                
                endlessTrollMMColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(midMidTouched:)];
                
                endlessTrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                endlessTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midRightTouched:)];
                endlessTrollMRColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midRightTouched:)];
                
                endlessTrollMRColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midRightTouched:)];
                
                endlessTrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                endlessTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                endlessTrollBLColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                endlessTrollBLColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                endlessTrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                endlessTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(botMidTouched:)];
                endlessTrollBMColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(botMidTouched:)];
                
                endlessTrollBMColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(botMidTouched:)];
                
                endlessTrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                endlessTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botRightTouched:)];
                endlessTrollBRColour = 0;
            }
            else if(i == 1){
                endlessTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botRightTouched:)];
                
                endlessTrollBRColour = 1;
            }
            else if(i == 2){
                endlessTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botRightTouched:)];
                
                endlessTrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                endlessTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    endlessTrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    endlessTrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    endlessTrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    endlessTrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    endlessTrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    endlessTrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    endlessTrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    endlessTrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    endlessSpriteTopLeftMenu = [CCMenu menuWithItems: endlessTrollSpriteTopLeft, nil];
    endlessSpriteTopMidMenu = [CCMenu menuWithItems: endlessTrollSpriteTopMid, nil];
    endlessSpriteTopRightMenu = [CCMenu menuWithItems: endlessTrollSpriteTopRight, nil];
    endlessSpriteMidLeftMenu = [CCMenu menuWithItems: endlessTrollSpriteMidLeft, nil];
    endlessSpriteMidMidMenu = [CCMenu menuWithItems: endlessTrollSpriteMidMid, nil];
    endlessSpriteMidRightMenu = [CCMenu menuWithItems: endlessTrollSpriteMidRight, nil];
    endlessSpriteBotLeftMenu = [CCMenu menuWithItems: endlessTrollSpriteBotLeft, nil];
    endlessSpriteBotMidMenu = [CCMenu menuWithItems: endlessTrollSpriteBotMid, nil];
    endlessSpriteBotRightMenu = [CCMenu menuWithItems: endlessTrollSpriteBotRight, nil];
    
    endlessSpriteTopLeftMenu.position = ccp(-1000, -1000);
    endlessSpriteTopMidMenu.position = ccp(-1000, -1000);
    endlessSpriteTopRightMenu.position = ccp(-1000, -1000);
    endlessSpriteMidLeftMenu.position = ccp(-1000, -1000);
    endlessSpriteMidMidMenu.position = ccp(-1000, -1000);
    endlessSpriteMidRightMenu.position = ccp(-1000, -1000);
    endlessSpriteBotLeftMenu.position = ccp(-1000, -1000);
    endlessSpriteBotMidMenu.position = ccp(-1000, -1000);
    endlessSpriteBotRightMenu.position = ccp(-1000, -1000);
    
    endlessTrollTopLeftChat.position = ccp(-1000, -1000);
    endlessTrollTopMidChat.position = ccp(-1000, -1000);
    endlessTrollTopRightChat.position = ccp(-1000, -1000);
    endlessTrollMidLeftChat.position = ccp(-1000, -1000);
    endlessTrollMidMidChat.position = ccp(-1000, -1000);
    endlessTrollMidRightChat.position = ccp(-1000, -1000);
    endlessTrollBotLeftChat.position = ccp(-1000, -1000);
    endlessTrollBotMidChat.position = ccp(-1000, -1000);
    endlessTrollBotRightChat.position = ccp(-1000, -1000);
    
    endlessVolcanoMenu = [CCMenu menuWithItems: endlessVolcanoBackSpriteTopLeft, endlessVolcanoBackSpriteTopMid, endlessVolcanoBackSpriteTopRight,
                          endlessVolcanoBackSpriteMidLeft, endlessVolcanoBackSpriteMidMid, endlessVolcanoBackSpriteMidRight,
                          endlessVolcanoBackSpriteBotLeft, endlessVolcanoBackSpriteBotMid, endlessVolcanoBackSpriteBotRight, nil];
    
    [endlessSpriteMidLayer addChild: endlessSpriteTopLeftMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteTopMidMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteTopRightMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteMidLeftMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteMidMidMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteMidRightMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteBotLeftMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteBotMidMenu];
    [endlessSpriteMidLayer addChild: endlessSpriteBotRightMenu];
    
    [endlessSpriteMidLayer addChild: endlessTrollTopLeftChat];
    [endlessSpriteMidLayer addChild: endlessTrollTopMidChat];
    [endlessSpriteMidLayer addChild: endlessTrollTopRightChat];
    [endlessSpriteMidLayer addChild: endlessTrollMidLeftChat];
    [endlessSpriteMidLayer addChild: endlessTrollMidMidChat];
    [endlessSpriteMidLayer addChild: endlessTrollMidRightChat];
    [endlessSpriteMidLayer addChild: endlessTrollBotLeftChat];
    [endlessSpriteMidLayer addChild: endlessTrollBotMidChat];
    [endlessSpriteMidLayer addChild: endlessTrollBotRightChat];
    
    [endlessSpriteBackLayer addChild: endlessVolcanoMenu];
    
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteTopLeft];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteTopMid];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteTopRight];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteMidLeft];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteMidMid];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteMidRight];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteBotLeft];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteBotMid];
    [endlessSpriteFrontLayer addChild: endlessVolcanoFrontSpriteBotRight];
    
    endlessSpriteBackLayer.position = ccp(-1000, -1000);
    endlessSpriteMidLayer.position = ccp(-1000, -1000);
    endlessSpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadEndlessTextElements{
    endlessScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    endlessScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    endlessScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    endlessScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    endlessSpeedNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessSpeedNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    endlessSpeedNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessSpeedNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    endlessSpeedNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessSpeedNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    endlessSpeedNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessSpeedNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    endlessSpeedNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessSpeedNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    endlessSpeedNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessSpeedNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    endlessSpeedNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessSpeedNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    endlessSpeedNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessSpeedNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    endlessSpeedNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessSpeedNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    endlessSpeedNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    endlessSpeedNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    endlessScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text.png"
                                              selectedImage:NULL];
    
    endlessScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    endlessScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    endlessScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                           selectedSprite:NULL];
    
    endlessScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    endlessSpeedText = [CCMenuItemImage itemWithNormalImage:@"GameText/speed_text.png"
                                              selectedImage:NULL];
    
    endlessSpeedSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    endlessSpeedSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_32.png"]
                                                         selectedSprite:NULL];
    
    endlessLivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text.png"
                                              selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        endlessLivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        endlessLivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        endlessLivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        endlessLivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    
    endlessScoreMenu = [CCMenu menuWithItems:endlessScoreText, endlessScoreSpriteDigitOne, endlessScoreSpriteDigitTwo, endlessScoreSpriteDigitThree, endlessScoreSpriteDigitFour, nil];
    [endlessScoreMenu alignItemsHorizontallyWithPadding:1];
    
    endlessSpeedMenu = [CCMenu menuWithItems: endlessSpeedText, endlessSpeedSpriteDigitOne, endlessSpeedSpriteDigitTwo, nil];
    [endlessSpeedMenu alignItemsHorizontallyWithPadding:1];
    
    endlessLivesMenu = [CCMenu menuWithItems: endlessLivesText, endlessLivesSpriteOne, endlessLivesSpriteTwo, endlessLivesSpriteThree, nil];
    [endlessLivesMenu alignItemsHorizontallyWithPadding:2];
    
    endlessScoreMenu.position = ccp(72, 308);
    endlessSpeedMenu.position = ccp(420, 15);
    endlessLivesMenu.position = ccp(400, 308);
    
    [endlessScoreSpriteDigitOne setTag: 101];
    [endlessScoreSpriteDigitTwo setTag: 102];
    [endlessScoreSpriteDigitThree setTag: 103];
    [endlessScoreSpriteDigitFour setTag: 104];
    
    [endlessSpeedSpriteDigitOne setTag: 201];
    [endlessSpeedSpriteDigitTwo setTag: 202];
    
    [endlessStatsLayer addChild: endlessScoreMenu];
    [endlessStatsLayer addChild: endlessSpeedMenu];
    [endlessStatsLayer addChild: endlessLivesMenu];
    
    endlessStatsLayer.position = ccp(-1000, -1000);
}

-(void) drawEndlessElements{
    endlessSpriteBackLayer.position = ccp(0, 0);
    endlessSpriteMidLayer.position = ccp(0, 0);
    endlessSpriteFrontLayer.position = ccp(0, 0);
    endlessStatsLayer.position = ccp(0, 0);
}

-(void) topLeftTouched:(id)sender{
    if(endlessStartTrollTLDeathAnim || endlessStartTrollTLMissed || endlessTrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        endlessTrollTLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) topMidTouched:(id)sender{
    if(endlessStartTrollTMDeathAnim || endlessStartTrollTMMissed || endlessTrollTMResetTimer > 0){
        
    }
    else{
        endlessTrollTMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) topRightTouched:(id)sender{
    if(endlessStartTrollTRDeathAnim || endlessStartTrollTRMissed || endlessTrollTRResetTimer > 0){
        
    }
    else{
        endlessTrollTRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midLeftTouched:(id)sender{
    if(endlessStartTrollMLDeathAnim || endlessStartTrollMLMissed || endlessTrollMLResetTimer > 0){
        
    }
    else{
        endlessTrollMLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midMidTouched:(id)sender{
    if(endlessStartTrollMMDeathAnim || endlessStartTrollMMMissed || endlessTrollMMResetTimer > 0){
        
    }
    else{
        endlessTrollMMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midRightTouched:(id)sender{
    if(endlessStartTrollMRDeathAnim || endlessStartTrollMRMissed || endlessTrollMRResetTimer > 0){
        
    }
    else{
        endlessTrollMRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botLeftTouched:(id)sender{
    if(endlessStartTrollBLDeathAnim || endlessStartTrollBLMissed || endlessTrollBLResetTimer > 0){
        
    }
    else{
        endlessTrollBLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botMidTouched:(id)sender{
    if(endlessStartTrollBMDeathAnim || endlessStartTrollBMMissed || endlessTrollBMResetTimer > 0){
        
    }
    else{
        endlessTrollBMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botRightTouched:(id)sender{
    if(endlessStartTrollBRDeathAnim || endlessStartTrollBRMissed || endlessTrollBRResetTimer > 0){
        
    }
    else{
        endlessTrollBRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(endlessStartTrollTLDeathAnim || endlessStartTrollTLMissed || endlessTrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        endlessTrollTLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(endlessStartTrollTMDeathAnim || endlessStartTrollTMMissed || endlessTrollTMResetTimer > 0){
        
    }
    else{
        endlessTrollTMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(endlessStartTrollTRDeathAnim || endlessStartTrollTRMissed || endlessTrollTRResetTimer > 0){
        
    }
    else{
        endlessTrollTRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(endlessStartTrollMLDeathAnim || endlessStartTrollMLMissed || endlessTrollMLResetTimer > 0){
        
    }
    else{
        endlessTrollMLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(endlessStartTrollMMDeathAnim || endlessStartTrollMMMissed || endlessTrollMMResetTimer > 0){
        
    }
    else{
        endlessTrollMMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(endlessStartTrollMRDeathAnim || endlessStartTrollMRMissed || endlessTrollMRResetTimer > 0){
        
    }
    else{
        endlessTrollMRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(endlessStartTrollBLDeathAnim || endlessStartTrollBLMissed || endlessTrollBLResetTimer > 0){
        
    }
    else{
        endlessTrollBLTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(endlessStartTrollBMDeathAnim || endlessStartTrollBMMissed || endlessTrollBMResetTimer > 0){
        
    }
    else{
        endlessTrollBMTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(endlessStartTrollBRDeathAnim || endlessStartTrollBRMissed || endlessTrollBRResetTimer > 0){
        
    }
    else{
        endlessTrollBRTouched = TRUE;
        endlessCurrentScore += (endlessCurrentSpeed * 2);
    }
}

-(void) endlessGameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:endlessCurrentScore forKey:@"endlessScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameOver node] withColor:ccWHITE]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [endlessTrollTopLeftChat release];
    [endlessTrollTopMidChat release];
    [endlessTrollTopRightChat release];
    [endlessTrollMidLeftChat release];
    [endlessTrollMidMidChat release];
    [endlessTrollMidRightChat release];
    [endlessTrollBotLeftChat release];
    [endlessTrollBotMidChat release];
    [endlessTrollBotRightChat release];
    [endlessTrollSpriteTLGreen release];
    [endlessTrollSpriteTLGrey release];
    [endlessTrollSpriteTLPurple release];
    [endlessTrollSpriteTMGreen release];
    [endlessTrollSpriteTMGrey release];
    [endlessTrollSpriteTMPurple release];
    [endlessTrollSpriteTRGreen release];
    [endlessTrollSpriteTRGrey release];
    [endlessTrollSpriteTRPurple release];
    [endlessTrollSpriteMLGreen release];
    [endlessTrollSpriteMLGrey release];
    [endlessTrollSpriteMLPurple release];
    [endlessTrollSpriteMMGreen release];
    [endlessTrollSpriteMMGrey release];
    [endlessTrollSpriteMMPurple release];
    [endlessTrollSpriteMRGreen release];
    [endlessTrollSpriteMRGrey release];
    [endlessTrollSpriteMRPurple release];
    [endlessTrollSpriteBLGreen release];
    [endlessTrollSpriteBLGrey release];
    [endlessTrollSpriteBLPurple release];
    [endlessTrollSpriteBMGreen release];
    [endlessTrollSpriteBMGrey release];
    [endlessTrollSpriteBMPurple release];
    [endlessTrollSpriteBRGreen release];
    [endlessTrollSpriteBRGrey release];
    [endlessTrollSpriteBRPurple release];
    [endlessTrollSpriteTLDeadGreen release];
    [endlessTrollSpriteTLDeadGrey release];
    [endlessTrollSpriteTLDeadPurple release];
    [endlessTrollSpriteTMDeadGreen release];
    [endlessTrollSpriteTMDeadGrey release];
    [endlessTrollSpriteTMDeadPurple release];
    [endlessTrollSpriteTRDeadGreen release];
    [endlessTrollSpriteTRDeadGrey release];
    [endlessTrollSpriteTRDeadPurple release];
    [endlessTrollSpriteMLDeadGreen release];
    [endlessTrollSpriteMLDeadGrey release];
    [endlessTrollSpriteMLDeadPurple release];
    [endlessTrollSpriteMMDeadGreen release];
    [endlessTrollSpriteMMDeadGrey release];
    [endlessTrollSpriteMMDeadPurple release];
    [endlessTrollSpriteMRDeadGreen release];
    [endlessTrollSpriteMRDeadGrey release];
    [endlessTrollSpriteMRDeadPurple release];
    [endlessTrollSpriteBLDeadGreen release];
    [endlessTrollSpriteBLDeadGrey release];
    [endlessTrollSpriteBLDeadPurple release];
    [endlessTrollSpriteBMDeadGreen release];
    [endlessTrollSpriteBMDeadGrey release];
    [endlessTrollSpriteBMDeadPurple release];
    [endlessTrollSpriteBRDeadGreen release];
    [endlessTrollSpriteBRDeadGrey release];
    [endlessTrollSpriteBRDeadPurple release];
    [endlessScoreNumber0_1 release];
    [endlessScoreNumber0_2 release];
    [endlessScoreNumber0_3 release];
    [endlessScoreNumber0_4 release];
    [endlessScoreNumber1_1 release];
    [endlessScoreNumber1_2 release];
    [endlessScoreNumber1_3 release];
    [endlessScoreNumber1_4 release];
    [endlessScoreNumber2_1 release];
    [endlessScoreNumber2_2 release];
    [endlessScoreNumber2_3 release];
    [endlessScoreNumber2_4 release];
    [endlessScoreNumber3_1 release];
    [endlessScoreNumber3_2 release];
    [endlessScoreNumber3_3 release];
    [endlessScoreNumber3_4 release];
    [endlessScoreNumber4_1 release];
    [endlessScoreNumber4_2 release];
    [endlessScoreNumber4_3 release];
    [endlessScoreNumber4_4 release];
    [endlessScoreNumber5_1 release];
    [endlessScoreNumber5_2 release];
    [endlessScoreNumber5_3 release];
    [endlessScoreNumber5_4 release];
    [endlessScoreNumber6_1 release];
    [endlessScoreNumber6_2 release];
    [endlessScoreNumber6_3 release];
    [endlessScoreNumber6_4 release];
    [endlessScoreNumber7_1 release];
    [endlessScoreNumber7_2 release];
    [endlessScoreNumber7_3 release];
    [endlessScoreNumber7_4 release];
    [endlessScoreNumber8_1 release];
    [endlessScoreNumber8_2 release];
    [endlessScoreNumber8_3 release];
    [endlessScoreNumber8_4 release];
    [endlessScoreNumber9_1 release];
    [endlessScoreNumber9_2 release];
    [endlessScoreNumber9_3 release];
    [endlessScoreNumber9_4 release];
    [endlessSpeedNumber0_1 release];
    [endlessSpeedNumber0_2 release];
    [endlessSpeedNumber1_1 release];
    [endlessSpeedNumber1_2 release];
    [endlessSpeedNumber2_1 release];
    [endlessSpeedNumber2_2 release];
    [endlessSpeedNumber3_1 release];
    [endlessSpeedNumber3_2 release];
    [endlessSpeedNumber4_1 release];
    [endlessSpeedNumber4_2 release];
    [endlessSpeedNumber5_1 release];
    [endlessSpeedNumber5_2 release];
    [endlessSpeedNumber6_1 release];
    [endlessSpeedNumber6_2 release];
    [endlessSpeedNumber7_1 release];
    [endlessSpeedNumber7_2 release];
    [endlessSpeedNumber8_1 release];
    [endlessSpeedNumber8_2 release];
    [endlessSpeedNumber9_1 release];
    [endlessSpeedNumber9_2 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
