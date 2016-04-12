//
//  TimeAttack.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 07/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "TimeAttack.h"
#import "GameOver.h"
#import "SimpleAudioEngine.h"

#pragma mark - TimeAttack

CCSprite *attackBackground;
CCSprite *attackIntro3;
CCSprite *attackIntro2;
CCSprite *attackIntro1;
CCSprite *attackIntro0;

CCMenu *attackScoreMenu;
CCMenu *attackTimeMenu;

CCMenu *attackSpriteTopLeftMenu;
CCMenu *attackSpriteTopMidMenu;
CCMenu *attackSpriteTopRightMenu;
CCMenu *attackSpriteMidLeftMenu;
CCMenu *attackSpriteMidMidMenu;
CCMenu *attackSpriteMidRightMenu;
CCMenu *attackSpriteBotLeftMenu;
CCMenu *attackSpriteBotMidMenu;
CCMenu *attackSpriteBotRightMenu;

CCMenuItemImage *attackScoreText;
CCMenuItemSprite *attackScoreSpriteDigitOne;
CCMenuItemSprite *attackScoreSpriteDigitTwo;
CCMenuItemSprite *attackScoreSpriteDigitThree;
CCMenuItemSprite *attackScoreSpriteDigitFour;

CCMenuItemSprite *attackTimeSpriteDigitOne;
CCMenuItemSprite *attackTimeSpriteDigitTwo;

CCLayer *attackScoreTimeLayer;
CCLayer *attackSpriteFrontLayer;
CCLayer *attackSpriteMidLayer;
CCLayer *attackSpriteBackLayer;

CCSprite *attackVolcanoFrontSpriteTopLeft;
CCMenuItemSprite *attackVolcanoBackSpriteTopLeft;
CCSprite *attackVolcanoFrontSpriteTopMid;
CCMenuItemSprite *attackVolcanoBackSpriteTopMid;
CCSprite *attackVolcanoFrontSpriteTopRight;
CCMenuItemSprite *attackVolcanoBackSpriteTopRight;
CCSprite *attackVolcanoFrontSpriteMidLeft;
CCMenuItemSprite *attackVolcanoBackSpriteMidLeft;
CCSprite *attackVolcanoFrontSpriteMidMid;
CCMenuItemSprite *attackVolcanoBackSpriteMidMid;
CCSprite *attackVolcanoFrontSpriteMidRight;
CCMenuItemSprite *attackVolcanoBackSpriteMidRight;
CCSprite *attackVolcanoFrontSpriteBotLeft;
CCMenuItemSprite *attackVolcanoBackSpriteBotLeft;
CCSprite *attackVolcanoFrontSpriteBotMid;
CCMenuItemSprite *attackVolcanoBackSpriteBotMid;
CCSprite *attackVolcanoFrontSpriteBotRight;
CCMenuItemSprite *attackVolcanoBackSpriteBotRight;

CCMenu *attackVolcanoMenu;

int attackTrollTLColour = -1;
int attackTrollTMColour = -1;
int attackTrollTRColour = -1;
int attackTrollMLColour = -1;
int attackTrollMMColour = -1;
int attackTrollMRColour = -1;
int attackTrollBLColour = -1;
int attackTrollBMColour = -1;
int attackTrollBRColour = -1;

CCMenuItemSprite *attackTrollSpriteTopLeft;
CCMenuItemSprite *attackTrollSpriteTopMid;
CCMenuItemSprite *attackTrollSpriteTopRight;
CCMenuItemSprite *attackTrollSpriteMidLeft;
CCMenuItemSprite *attackTrollSpriteMidMid;
CCMenuItemSprite *attackTrollSpriteMidRight;
CCMenuItemSprite *attackTrollSpriteBotLeft;
CCMenuItemSprite *attackTrollSpriteBotMid;
CCMenuItemSprite *attackTrollSpriteBotRight;

CCSprite *attackTrollSpriteTLGreen;
CCSprite *attackTrollSpriteTLGrey;
CCSprite *attackTrollSpriteTLPurple;
CCSprite *attackTrollSpriteTMGreen;
CCSprite *attackTrollSpriteTMGrey;
CCSprite *attackTrollSpriteTMPurple;
CCSprite *attackTrollSpriteTRGreen;
CCSprite *attackTrollSpriteTRGrey;
CCSprite *attackTrollSpriteTRPurple;
CCSprite *attackTrollSpriteMLGreen;
CCSprite *attackTrollSpriteMLGrey;
CCSprite *attackTrollSpriteMLPurple;
CCSprite *attackTrollSpriteMMGreen;
CCSprite *attackTrollSpriteMMGrey;
CCSprite *attackTrollSpriteMMPurple;
CCSprite *attackTrollSpriteMRGreen;
CCSprite *attackTrollSpriteMRGrey;
CCSprite *attackTrollSpriteMRPurple;
CCSprite *attackTrollSpriteBLGreen;
CCSprite *attackTrollSpriteBLGrey;
CCSprite *attackTrollSpriteBLPurple;
CCSprite *attackTrollSpriteBMGreen;
CCSprite *attackTrollSpriteBMGrey;
CCSprite *attackTrollSpriteBMPurple;
CCSprite *attackTrollSpriteBRGreen;
CCSprite *attackTrollSpriteBRGrey;
CCSprite *attackTrollSpriteBRPurple;

CCSprite *attackTrollSpriteTLDeadGreen;
CCSprite *attackTrollSpriteTLDeadGrey;
CCSprite *attackTrollSpriteTLDeadPurple;
CCSprite *attackTrollSpriteTMDeadGreen;
CCSprite *attackTrollSpriteTMDeadGrey;
CCSprite *attackTrollSpriteTMDeadPurple;
CCSprite *attackTrollSpriteTRDeadGreen;
CCSprite *attackTrollSpriteTRDeadGrey;
CCSprite *attackTrollSpriteTRDeadPurple;
CCSprite *attackTrollSpriteMLDeadGreen;
CCSprite *attackTrollSpriteMLDeadGrey;
CCSprite *attackTrollSpriteMLDeadPurple;
CCSprite *attackTrollSpriteMMDeadGreen;
CCSprite *attackTrollSpriteMMDeadGrey;
CCSprite *attackTrollSpriteMMDeadPurple;
CCSprite *attackTrollSpriteMRDeadGreen;
CCSprite *attackTrollSpriteMRDeadGrey;
CCSprite *attackTrollSpriteMRDeadPurple;
CCSprite *attackTrollSpriteBLDeadGreen;
CCSprite *attackTrollSpriteBLDeadGrey;
CCSprite *attackTrollSpriteBLDeadPurple;
CCSprite *attackTrollSpriteBMDeadGreen;
CCSprite *attackTrollSpriteBMDeadGrey;
CCSprite *attackTrollSpriteBMDeadPurple;
CCSprite *attackTrollSpriteBRDeadGreen;
CCSprite *attackTrollSpriteBRDeadGrey;
CCSprite *attackTrollSpriteBRDeadPurple;

CCSprite *attackScoreNumber0_1;
CCSprite *attackScoreNumber0_2;
CCSprite *attackScoreNumber0_3;
CCSprite *attackScoreNumber0_4;
CCSprite *attackScoreNumber1_1;
CCSprite *attackScoreNumber1_2;
CCSprite *attackScoreNumber1_3;
CCSprite *attackScoreNumber1_4;
CCSprite *attackScoreNumber2_1;
CCSprite *attackScoreNumber2_2;
CCSprite *attackScoreNumber2_3;
CCSprite *attackScoreNumber2_4;
CCSprite *attackScoreNumber3_1;
CCSprite *attackScoreNumber3_2;
CCSprite *attackScoreNumber3_3;
CCSprite *attackScoreNumber3_4;
CCSprite *attackScoreNumber4_1;
CCSprite *attackScoreNumber4_2;
CCSprite *attackScoreNumber4_3;
CCSprite *attackScoreNumber4_4;
CCSprite *attackScoreNumber5_1;
CCSprite *attackScoreNumber5_2;
CCSprite *attackScoreNumber5_3;
CCSprite *attackScoreNumber5_4;
CCSprite *attackScoreNumber6_1;
CCSprite *attackScoreNumber6_2;
CCSprite *attackScoreNumber6_3;
CCSprite *attackScoreNumber6_4;
CCSprite *attackScoreNumber7_1;
CCSprite *attackScoreNumber7_2;
CCSprite *attackScoreNumber7_3;
CCSprite *attackScoreNumber7_4;
CCSprite *attackScoreNumber8_1;
CCSprite *attackScoreNumber8_2;
CCSprite *attackScoreNumber8_3;
CCSprite *attackScoreNumber8_4;
CCSprite *attackScoreNumber9_1;
CCSprite *attackScoreNumber9_2;
CCSprite *attackScoreNumber9_3;
CCSprite *attackScoreNumber9_4;

CCSprite *attackTimeNumber0_1;
CCSprite *attackTimeNumber0_2;
CCSprite *attackTimeNumber1_1;
CCSprite *attackTimeNumber1_2;
CCSprite *attackTimeNumber2_1;
CCSprite *attackTimeNumber2_2;
CCSprite *attackTimeNumber3_1;
CCSprite *attackTimeNumber3_2;
CCSprite *attackTimeNumber4_1;
CCSprite *attackTimeNumber4_2;
CCSprite *attackTimeNumber5_1;
CCSprite *attackTimeNumber5_2;
CCSprite *attackTimeNumber6_1;
CCSprite *attackTimeNumber6_2;
CCSprite *attackTimeNumber7_1;
CCSprite *attackTimeNumber8_1;
CCSprite *attackTimeNumber9_1;

CCSprite *attackTrollTopLeftChat;
CCSprite *attackTrollTopMidChat;
CCSprite *attackTrollTopRightChat;
CCSprite *attackTrollMidLeftChat;
CCSprite *attackTrollMidMidChat;
CCSprite *attackTrollMidRightChat;
CCSprite *attackTrollBotLeftChat;
CCSprite *attackTrollBotMidChat;
CCSprite *attackTrollBotRightChat;

CCSprite *attackTimeBarRemaining;
CCSprite *attackTimeBarCover;

ccTime attackGameTime = 0.0f;
float attackTimeLeft = 60.0f;
int attackCurrentScore = 0;
int attackPrevScore = 0;
int attackScoreInt = 0;
int attackTimeInt = 0;
int attackPrevTime = 0;

float attackTrollRespawnInterval = 0.0f;

float attackTrollTLResetTimer = 0.0f;
float attackTrollTMResetTimer = 0.0f;
float attackTrollTRResetTimer = 0.0f;
float attackTrollMLResetTimer = 0.0f;
float attackTrollMMResetTimer = 0.0f;
float attackTrollMRResetTimer = 0.0f;
float attackTrollBLResetTimer = 0.0f;
float attackTrollBMResetTimer = 0.0f;
float attackTrollBRResetTimer = 0.0f;

float attackTrollTLTimeInPlay = 0.0f;
float attackTrollTMTimeInPlay = 0.0f;
float attackTrollTRTimeInPlay = 0.0f;
float attackTrollMLTimeInPlay = 0.0f;
float attackTrollMMTimeInPlay = 0.0f;
float attackTrollMRTimeInPlay = 0.0f;
float attackTrollBLTimeInPlay = 0.0f;
float attackTrollBMTimeInPlay = 0.0f;
float attackTrollBRTimeInPlay = 0.0f;

float attackTrollTLFadingOutTimer = 0.0f;
float attackTrollTMFadingOutTimer = 0.0f;
float attackTrollTRFadingOutTimer = 0.0f;
float attackTrollMLFadingOutTimer = 0.0f;
float attackTrollMMFadingOutTimer = 0.0f;
float attackTrollMRFadingOutTimer = 0.0f;
float attackTrollBLFadingOutTimer = 0.0f;
float attackTrollBMFadingOutTimer = 0.0f;
float attackTrollBRFadingOutTimer = 0.0f;

BOOL attackTrollTLTouched = FALSE;
BOOL attackTrollTMTouched = FALSE;
BOOL attackTrollTRTouched = FALSE;
BOOL attackTrollMLTouched = FALSE;
BOOL attackTrollMMTouched = FALSE;
BOOL attackTrollMRTouched = FALSE;
BOOL attackTrollBLTouched = FALSE;
BOOL attackTrollBMTouched = FALSE;
BOOL attackTrollBRTouched = FALSE;

BOOL attackTrollTLInPlay = FALSE;
BOOL attackTrollTMInPlay = FALSE;
BOOL attackTrollTRInPlay = FALSE;
BOOL attackTrollMLInPlay = FALSE;
BOOL attackTrollMMInPlay = FALSE;
BOOL attackTrollMRInPlay = FALSE;
BOOL attackTrollBLInPlay = FALSE;
BOOL attackTrollBMInPlay = FALSE;
BOOL attackTrollBRInPlay = FALSE;

BOOL attackStartTrollTLDeathAnim = FALSE;
BOOL attackStartTrollTMDeathAnim = FALSE;
BOOL attackStartTrollTRDeathAnim = FALSE;
BOOL attackStartTrollMLDeathAnim = FALSE;
BOOL attackStartTrollMMDeathAnim = FALSE;
BOOL attackStartTrollMRDeathAnim = FALSE;
BOOL attackStartTrollBLDeathAnim = FALSE;
BOOL attackStartTrollBMDeathAnim = FALSE;
BOOL attackStartTrollBRDeathAnim = FALSE;

BOOL attackTimeUpDrawn = FALSE;
CCSprite *attackTimeUpSprite;

int attackTick = 0;

BOOL attackIntroFinished = FALSE;
BOOL attackAllChange = FALSE;

@implementation TimeAttack

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	TimeAttack *layer = [TimeAttack node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        attackScoreTimeLayer = [CCLayer node];
        attackSpriteBackLayer = [CCLayer node];
        attackSpriteMidLayer = [CCLayer node];
        attackSpriteFrontLayer = [CCLayer node];
        
        attackBackground = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        attackBackground.position = ccp(240, 160);
        
        [self addChild: attackBackground];
        [self addChild: attackScoreTimeLayer];
        [self addChild: attackSpriteBackLayer];
        [self addChild: attackSpriteFrontLayer];
        [self addChild: attackSpriteMidLayer];
        
        [self loadAttackScoreTimeElements];
        [self loadAttackSpriteElements];
    }
    
    attackTrollTLColour = -1;
    attackTrollTMColour = -1;
    attackTrollTRColour = -1;
    attackTrollMLColour = -1;
    attackTrollMMColour = -1;
    attackTrollMRColour = -1;
    attackTrollBLColour = -1;
    attackTrollBMColour = -1;
    attackTrollBRColour = -1;
    attackGameTime = 0.0f;
    attackTimeLeft = 60.0f;
    attackCurrentScore = 0;
    attackPrevScore = 0;
    attackScoreInt = 0;
    attackTimeInt = 0;
    attackPrevTime = 0;
    attackTrollRespawnInterval = 0.0f;
    attackTrollTLResetTimer = 0.0f;
    attackTrollTMResetTimer = 0.0f;
    attackTrollTRResetTimer = 0.0f;
    attackTrollMLResetTimer = 0.0f;
    attackTrollMMResetTimer = 0.0f;
    attackTrollMRResetTimer = 0.0f;
    attackTrollBLResetTimer = 0.0f;
    attackTrollBMResetTimer = 0.0f;
    attackTrollBRResetTimer = 0.0f;
    attackTrollTLTimeInPlay = 0.0f;
    attackTrollTMTimeInPlay = 0.0f;
    attackTrollTRTimeInPlay = 0.0f;
    attackTrollMLTimeInPlay = 0.0f;
    attackTrollMMTimeInPlay = 0.0f;
    attackTrollMRTimeInPlay = 0.0f;
    attackTrollBLTimeInPlay = 0.0f;
    attackTrollBMTimeInPlay = 0.0f;
    attackTrollBRTimeInPlay = 0.0f;
    attackTrollTLFadingOutTimer = 0.0f;
    attackTrollTMFadingOutTimer = 0.0f;
    attackTrollTRFadingOutTimer = 0.0f;
    attackTrollMLFadingOutTimer = 0.0f;
    attackTrollMMFadingOutTimer = 0.0f;
    attackTrollMRFadingOutTimer = 0.0f;
    attackTrollBLFadingOutTimer = 0.0f;
    attackTrollBMFadingOutTimer = 0.0f;
    attackTrollBRFadingOutTimer = 0.0f;
    attackTrollTLTouched = FALSE;
    attackTrollTMTouched = FALSE;
    attackTrollTRTouched = FALSE;
    attackTrollMLTouched = FALSE;
    attackTrollMMTouched = FALSE;
    attackTrollMRTouched = FALSE;
    attackTrollBLTouched = FALSE;
    attackTrollBMTouched = FALSE;
    attackTrollBRTouched = FALSE;
    attackTrollTLInPlay = FALSE;
    attackTrollTMInPlay = FALSE;
    attackTrollTRInPlay = FALSE;
    attackTrollMLInPlay = FALSE;
    attackTrollMMInPlay = FALSE;
    attackTrollMRInPlay = FALSE;
    attackTrollBLInPlay = FALSE;
    attackTrollBMInPlay = FALSE;
    attackTrollBRInPlay = FALSE;
    attackStartTrollTLDeathAnim = FALSE;
    attackStartTrollTMDeathAnim = FALSE;
    attackStartTrollTRDeathAnim = FALSE;
    attackStartTrollMLDeathAnim = FALSE;
    attackStartTrollMMDeathAnim = FALSE;
    attackStartTrollMRDeathAnim = FALSE;
    attackStartTrollBLDeathAnim = FALSE;
    attackStartTrollBMDeathAnim = FALSE;
    attackStartTrollBRDeathAnim = FALSE;
    attackTimeUpDrawn = FALSE;
    attackTick = 0;
    attackIntroFinished = FALSE;
    attackAllChange = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    attackGameTime += dt;
    
    if (attackGameTime < 5 && attackIntroFinished == NO){
        if(attackGameTime > 0 && attackGameTime < 1.5){
            if(attackTick == 0){
                attackIntro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                attackIntro3.position = ccp(240, 160);
                [self addChild: attackIntro3];
                attackTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(attackGameTime > 1.5 && attackGameTime < 2.5){
            if(attackTick == 1) {
                attackIntro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                attackIntro2.position = ccp(240, 160);
                [self addChild: attackIntro2];
                attackTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(attackTick == 2){
                [self removeChild: attackIntro3 cleanup:YES];
                attackTick = 3;
            }
        }
        else if(attackGameTime > 2.5 && attackGameTime < 3.5){
            if(attackTick == 3){
                attackIntro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                attackIntro1.position = ccp(240, 160);
                [self addChild: attackIntro1];
                attackTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(attackTick == 4) {
                [self removeChild: attackIntro2 cleanup:YES];
                attackTick = 5;
            }
        }
        else if(attackGameTime > 3.5 && attackGameTime < 4.5){
            if(attackTick == 5){
                attackIntro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                attackIntro0.position = ccp(240, 160);
                [self addChild: attackIntro0];
                attackTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(attackTick == 6) {
                [self removeChild: attackIntro1 cleanup:YES];
                attackTick = 7;
            }
        }
        else{
            if(attackTick == 7){
                attackIntroFinished = YES;
                [self removeChild: attackIntro0 cleanup:YES];
                attackTick = 8;
                attackAllChange = TRUE;
            }
        }
    }
    
    else if(attackTick == 8){
        //Do everything else
        if(attackAllChange){
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_time_attack.mp3"];
            attackAllChange = FALSE;
            [self drawAttackElements];
        }
        
        attackTimeLeft -= dt;
        
        //TIME BAR CALCULATIONS
        if(attackTimeLeft > 56 && attackTimeLeft <= 60){
            //Do nothing
        }
        else if(attackTimeLeft > 52 && attackTimeLeft <= 56){
            attackTimeBarCover.position = ccp(-208, 8);
        }
        else if(attackTimeLeft > 48 && attackTimeLeft <= 52){
            attackTimeBarCover.position = ccp(-176, 8);
        }
        else if(attackTimeLeft > 44 && attackTimeLeft <= 48){
            attackTimeBarCover.position = ccp(-144, 8);
        }
        else if(attackTimeLeft > 40 && attackTimeLeft <= 44){
            attackTimeBarCover.position = ccp(-112, 8);
        }
        else if(attackTimeLeft > 36 && attackTimeLeft <= 40){
            attackTimeBarCover.position = ccp(-80, 8);
        }
        else if(attackTimeLeft > 32 && attackTimeLeft <= 36){
            attackTimeBarCover.position = ccp(-48, 8);
        }
        else if(attackTimeLeft > 28 && attackTimeLeft <= 32){
            attackTimeBarCover.position = ccp(-16, 8);
        }
        else if(attackTimeLeft > 24 && attackTimeLeft <= 28){
            attackTimeBarCover.position = ccp(16, 8);
        }
        else if(attackTimeLeft > 20 && attackTimeLeft <= 24){
            attackTimeBarCover.position = ccp(48, 8);
        }
        else if(attackTimeLeft > 16 && attackTimeLeft <= 20){
            attackTimeBarCover.position = ccp(80, 8);
        }
        else if(attackTimeLeft > 12 && attackTimeLeft <= 16){
            attackTimeBarCover.position = ccp(112, 8);
        }
        else if(attackTimeLeft > 8 && attackTimeLeft <= 12){
            attackTimeBarCover.position = ccp(144, 8);
        }
        else if(attackTimeLeft > 4 && attackTimeLeft <= 8){
            attackTimeBarCover.position = ccp(176, 8);
        }
        else if(attackTimeLeft > 0 && attackTimeLeft <= 4){
            attackTimeBarCover.position = ccp(208, 8);
        }
        else{
            attackTimeBarCover.position = ccp(240, 8);
            attackTick = 9;
        }
        
        //TIME MECHANIC CALCULATIONS
        if(attackTrollTLInPlay){
            attackTrollTLTimeInPlay += dt;
        }
        else{
            attackTrollTLResetTimer -= dt;
            if(attackTrollTLResetTimer <= 0){
                attackSpriteTopLeftMenu.position = ccp(80, 270);
                attackTrollTopLeftChat.position = ccp(112, 280);
                attackTrollTLInPlay = TRUE;
                attackTrollTLTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollTMInPlay){
            attackTrollTMTimeInPlay += dt;
        }
        else{
            attackTrollTMResetTimer -= dt;
            if(attackTrollTMResetTimer <= 0){
                attackSpriteTopMidMenu.position = ccp(240, 270);
                attackTrollTopMidChat.position = ccp(272, 280);
                attackTrollTMInPlay = TRUE;
                attackTrollTMTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollTRInPlay){
            attackTrollTRTimeInPlay += dt;
        }
        else{
            attackTrollTRResetTimer -= dt;
            if(attackTrollTRResetTimer <= 0){
                attackSpriteTopRightMenu.position = ccp(400, 270);
                attackTrollTopRightChat.position = ccp(432, 280);
                attackTrollTRInPlay = TRUE;
                attackTrollTRTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollMLInPlay){
            attackTrollMLTimeInPlay += dt;
        }
        else{
            attackTrollMLResetTimer -= dt;
            if(attackTrollMLResetTimer <= 0){
                attackSpriteMidLeftMenu.position = ccp(80, 190);
                attackTrollMidLeftChat.position = ccp(112, 200);
                attackTrollMLInPlay = TRUE;
                attackTrollMLTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollMMInPlay){
            attackTrollMMTimeInPlay += dt;
        }
        else{
            attackTrollMMResetTimer -= dt;
            if(attackTrollMMResetTimer <= 0){
                attackSpriteMidMidMenu.position = ccp(240, 190);
                attackTrollMidMidChat.position = ccp(272, 200);
                attackTrollMMInPlay = TRUE;
                attackTrollMMTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollMRInPlay){
            attackTrollMRTimeInPlay += dt;
        }
        else{
            attackTrollMRResetTimer -= dt;
            if(attackTrollMRResetTimer <= 0){
                attackSpriteMidRightMenu.position = ccp(400, 190);
                attackTrollMidRightChat.position = ccp(432, 200);
                attackTrollMRInPlay = TRUE;
                attackTrollMRTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollBLInPlay){
            attackTrollBLTimeInPlay += dt;
        }
        else{
            attackTrollBLResetTimer -= dt;
            if(attackTrollBLResetTimer <= 0){
                attackSpriteBotLeftMenu.position = ccp(80, 110);
                attackTrollBotLeftChat.position = ccp(112, 120);
                attackTrollBLInPlay = TRUE;
                attackTrollBLTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollBMInPlay){
            attackTrollBMTimeInPlay += dt;
        }
        else{
            attackTrollBMResetTimer -= dt;
            if(attackTrollBMResetTimer <= 0){
                attackSpriteBotMidMenu.position = ccp(240, 110);
                attackTrollBotMidChat.position = ccp(272, 120);
                attackTrollBMInPlay = TRUE;
                attackTrollBMTimeInPlay = 0.0f;
            }
        }
        
        if(attackTrollBRInPlay){
            attackTrollBRTimeInPlay += dt;
        }
        else{
            attackTrollBRResetTimer -= dt;
            if(attackTrollBRResetTimer <= 0){
                attackSpriteBotRightMenu.position = ccp(400, 110);
                attackTrollBotRightChat.position = ccp(432, 120);
                attackTrollBRInPlay = TRUE;
                attackTrollBRTimeInPlay = 0.0f;
            }
        }
        
        //TOUCH MECHANICS
        if(attackTrollTLTouched){
            attackStartTrollTLDeathAnim = TRUE;
            attackTrollTLTouched = FALSE;
            if(attackTrollTLColour == 0){
                [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLDeadGreen];
            }
            else if(attackTrollTLColour == 1){
                [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLDeadGrey];
            }
            else if(attackTrollTLColour == 2){
                [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLDeadPurple];
            }
            
            attackTrollTopLeftChat.position = ccp(-1000, -1000);
            
            id actionFade1 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteTopLeft runAction:actionFade1];
        }
        else if(attackTrollTMTouched){
            attackStartTrollTMDeathAnim = TRUE;
            attackTrollTMTouched = FALSE;
            if(attackTrollTMColour == 0){
                [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMDeadGreen];
            }
            else if(attackTrollTMColour == 1){
                [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMDeadGrey];
            }
            else if(attackTrollTMColour == 2){
                [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMDeadPurple];
            }
            
            attackTrollTopMidChat.position = ccp(-1000, -1000);
            
            id actionFade2 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteTopMid runAction:actionFade2];
        }
        else if(attackTrollTRTouched){
            attackStartTrollTRDeathAnim = TRUE;
            attackTrollTRTouched = FALSE;
            if(attackTrollTRColour == 0){
                [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRDeadGreen];
            }
            else if(attackTrollTRColour == 1){
                [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRDeadGrey];
            }
            else if(attackTrollTRColour == 2){
                [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRDeadPurple];
            }
            
            attackTrollTopRightChat.position = ccp(-1000, -1000);
            
            id actionFade3 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteTopRight runAction:actionFade3];
        }
        else if(attackTrollMLTouched){
            attackStartTrollMLDeathAnim = TRUE;
            attackTrollMLTouched = FALSE;
            if(attackTrollMLColour == 0){
                [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLDeadGreen];
            }
            else if(attackTrollMLColour == 1){
                [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLDeadGrey];
            }
            else if(attackTrollMLColour == 2){
                [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLDeadPurple];
            }
            
            attackTrollMidLeftChat.position = ccp(-1000, -1000);
            
            id actionFade4 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteMidLeft runAction:actionFade4];
        }
        else if(attackTrollMMTouched){
            attackStartTrollMMDeathAnim = TRUE;
            attackTrollMMTouched = FALSE;
            if(attackTrollMMColour == 0){
                [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMDeadGreen];
            }
            else if(attackTrollMMColour == 1){
                [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMDeadGrey];
            }
            else if(attackTrollMMColour == 2){
                [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMDeadPurple];
            }
            
            attackTrollMidMidChat.position = ccp(-1000, -1000);
            
            id actionFade5 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteMidMid runAction:actionFade5];
        }
        else if(attackTrollMRTouched){
            attackStartTrollMRDeathAnim = TRUE;
            attackTrollMRTouched = FALSE;
            if(attackTrollMRColour == 0){
                [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRDeadGreen];
            }
            else if(attackTrollMRColour == 1){
                [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRDeadGrey];
            }
            else if(attackTrollMRColour == 2){
                [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRDeadPurple];
            }
            
            attackTrollMidRightChat.position = ccp(-1000, -1000);
            
            id actionFade6 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteMidRight runAction:actionFade6];
        }
        else if(attackTrollBLTouched){
            attackStartTrollBLDeathAnim = TRUE;
            attackTrollBLTouched = FALSE;
            if(attackTrollBLColour == 0){
                [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLDeadGreen];
            }
            else if(attackTrollBLColour == 1){
                [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLDeadGrey];
            }
            else if(attackTrollBLColour == 2){
                [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLDeadPurple];
            }
            
            attackTrollBotLeftChat.position = ccp(-1000, -1000);
            
            id actionFade7 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteBotLeft runAction:actionFade7];
        }
        else if(attackTrollBMTouched){
            attackStartTrollBMDeathAnim = TRUE;
            attackTrollBMTouched = FALSE;
            if(attackTrollBMColour == 0){
                [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMDeadGreen];
            }
            else if(attackTrollBMColour == 1){
                [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMDeadGrey];
            }
            else if(attackTrollBMColour == 2){
                [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMDeadPurple];
            }
            
            attackTrollBotMidChat.position = ccp(-1000, -1000);
            
            id actionFade8 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteBotMid runAction:actionFade8];
        }
        else if(attackTrollBRTouched){
            attackStartTrollBRDeathAnim = TRUE;
            attackTrollBRTouched = FALSE;
            if(attackTrollBRColour == 0){
                [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRDeadGreen];
            }
            else if(attackTrollBRColour == 1){
                [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRDeadGrey];
            }
            else if(attackTrollBRColour == 2){
                [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRDeadPurple];
            }
            
            attackTrollBotRightChat.position = ccp(-1000, -1000);
            
            id actionFade9 = [CCFadeOut actionWithDuration:.25];
            [attackTrollSpriteBotRight runAction:actionFade9];
        }
        
        //TROLL ANIMATIONS
        if(attackStartTrollTLDeathAnim){
            if(attackTrollTLFadingOutTimer < 0.25){
                attackTrollTLFadingOutTimer += dt;
                attackSpriteTopLeftMenu.position = ccp(attackSpriteTopLeftMenu.position.x, attackSpriteTopLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollTLDeathAnim = FALSE;
                attackTrollTLTimeInPlay = 0.0f;
                attackTrollTLFadingOutTimer = 0.0f;
                attackTrollTLInPlay = FALSE;
                attackTrollTLResetTimer = attackTrollRespawnInterval;
                
                id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteTopLeft runAction:actionReset1];
                
                if(attackTrollTLColour == 0){
                    [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLGreen];
                }
                else if(attackTrollTLColour == 1){
                    [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLGrey];
                }
                else if(attackTrollTLColour == 2){
                    [attackTrollSpriteTopLeft setNormalImage:attackTrollSpriteTLPurple];
                }
                
                attackSpriteTopLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollTMDeathAnim){
            if(attackTrollTMFadingOutTimer < 0.25){
                attackTrollTMFadingOutTimer += dt;
                attackSpriteTopMidMenu.position = ccp(attackSpriteTopMidMenu.position.x, attackSpriteTopMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollTMDeathAnim = FALSE;
                attackTrollTMTimeInPlay = 0.0f;
                attackTrollTMFadingOutTimer = 0.0f;
                attackTrollTMInPlay = FALSE;
                attackTrollTMResetTimer = attackTrollRespawnInterval;
                
                id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteTopMid runAction:actionReset2];
                
                if(attackTrollTMColour == 0){
                    [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMGreen];
                }
                else if(attackTrollTMColour == 1){
                    [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMGrey];
                }
                else if(attackTrollTMColour == 2){
                    [attackTrollSpriteTopMid setNormalImage:attackTrollSpriteTMPurple];
                }
                
                attackSpriteTopMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollTRDeathAnim){
            if(attackTrollTRFadingOutTimer < 0.25){
                attackTrollTRFadingOutTimer += dt;
                attackSpriteTopRightMenu.position = ccp(attackSpriteTopRightMenu.position.x, attackSpriteTopRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollTRDeathAnim = FALSE;
                attackTrollTRTimeInPlay = 0.0f;
                attackTrollTRFadingOutTimer = 0.0f;
                attackTrollTRInPlay = FALSE;
                attackTrollTRResetTimer = attackTrollRespawnInterval;
                
                id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteTopRight runAction:actionReset3];
                
                if(attackTrollTRColour == 0){
                    [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRGreen];
                }
                else if(attackTrollTRColour == 1){
                    [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRGrey];
                }
                else if(attackTrollTRColour == 2){
                    [attackTrollSpriteTopRight setNormalImage:attackTrollSpriteTRPurple];
                }
                
                attackSpriteTopRightMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollMLDeathAnim){
            if(attackTrollMLFadingOutTimer < 0.25){
                attackTrollMLFadingOutTimer += dt;
                attackSpriteMidLeftMenu.position = ccp(attackSpriteMidLeftMenu.position.x, attackSpriteMidLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollMLDeathAnim = FALSE;
                attackTrollMLTimeInPlay = 0.0f;
                attackTrollMLFadingOutTimer = 0.0f;
                attackTrollMLInPlay = FALSE;
                attackTrollMLResetTimer = attackTrollRespawnInterval;
                
                id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteMidLeft runAction:actionReset4];
                
                if(attackTrollMLColour == 0){
                    [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLGreen];
                }
                else if(attackTrollMLColour == 1){
                    [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLGrey];
                }
                else if(attackTrollMLColour == 2){
                    [attackTrollSpriteMidLeft setNormalImage:attackTrollSpriteMLPurple];
                }
                
                attackSpriteMidLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollMMDeathAnim){
            if(attackTrollMMFadingOutTimer < 0.25){
                attackTrollMMFadingOutTimer += dt;
                attackSpriteMidMidMenu.position = ccp(attackSpriteMidMidMenu.position.x, attackSpriteMidMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollMMDeathAnim = FALSE;
                attackTrollMMTimeInPlay = 0.0f;
                attackTrollMMFadingOutTimer = 0.0f;
                attackTrollMMInPlay = FALSE;
                attackTrollMMResetTimer = attackTrollRespawnInterval;
                
                id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteMidMid runAction:actionReset5];
                
                if(attackTrollMMColour == 0){
                    [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMGreen];
                }
                else if(attackTrollMMColour == 1){
                    [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMGrey];
                }
                else if(attackTrollMMColour == 2){
                    [attackTrollSpriteMidMid setNormalImage:attackTrollSpriteMMPurple];
                }
                
                attackSpriteMidMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollMRDeathAnim){
            if(attackTrollMRFadingOutTimer < 0.25){
                attackTrollMRFadingOutTimer += dt;
                attackSpriteMidRightMenu.position = ccp(attackSpriteMidRightMenu.position.x, attackSpriteMidRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollMRDeathAnim = FALSE;
                attackTrollMRTimeInPlay = 0.0f;
                attackTrollMRFadingOutTimer = 0.0f;
                attackTrollMRInPlay = FALSE;
                attackTrollMRResetTimer = attackTrollRespawnInterval;
                
                id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteMidRight runAction:actionReset6];
                
                if(attackTrollMRColour == 0){
                    [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRGreen];
                }
                else if(attackTrollMRColour == 1){
                    [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRGrey];
                }
                else if(attackTrollMRColour == 2){
                    [attackTrollSpriteMidRight setNormalImage:attackTrollSpriteMRPurple];
                }
                
                attackSpriteMidRightMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollBLDeathAnim){
            if(attackTrollBLFadingOutTimer < 0.25){
                attackTrollBLFadingOutTimer += dt;
                attackSpriteBotLeftMenu.position = ccp(attackSpriteBotLeftMenu.position.x, attackSpriteBotLeftMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollBLDeathAnim = FALSE;
                attackTrollBLTimeInPlay = 0.0f;
                attackTrollBLFadingOutTimer = 0.0f;
                attackTrollBLInPlay = FALSE;
                attackTrollBLResetTimer = attackTrollRespawnInterval;
                
                id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteBotLeft runAction:actionReset7];
                
                if(attackTrollBLColour == 0){
                    [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLGreen];
                }
                else if(attackTrollBLColour == 1){
                    [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLGrey];
                }
                else if(attackTrollBLColour == 2){
                    [attackTrollSpriteBotLeft setNormalImage:attackTrollSpriteBLPurple];
                }
                
                attackSpriteBotLeftMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollBMDeathAnim){
            if(attackTrollBMFadingOutTimer < 0.25){
                attackTrollBMFadingOutTimer += dt;
                attackSpriteBotMidMenu.position = ccp(attackSpriteBotMidMenu.position.x, attackSpriteBotMidMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollBMDeathAnim = FALSE;
                attackTrollBMTimeInPlay = 0.0f;
                attackTrollBMFadingOutTimer = 0.0f;
                attackTrollBMInPlay = FALSE;
                attackTrollBMResetTimer = attackTrollRespawnInterval;
                
                id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteBotMid runAction:actionReset8];
                
                if(attackTrollBMColour == 0){
                    [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMGreen];
                }
                else if(attackTrollBMColour == 1){
                    [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMGrey];
                }
                else if(attackTrollBMColour == 2){
                    [attackTrollSpriteBotMid setNormalImage:attackTrollSpriteBMPurple];
                }
                
                attackSpriteBotMidMenu.position = ccp(-1000, -1000);
            }
        }
        if(attackStartTrollBRDeathAnim){
            if(attackTrollBRFadingOutTimer < 0.25){
                attackTrollBRFadingOutTimer += dt;
                attackSpriteBotRightMenu.position = ccp(attackSpriteBotRightMenu.position.x, attackSpriteBotRightMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (101)) + 50;
                attackTrollRespawnInterval = (float)i / 100.0f;
                
                attackStartTrollBRDeathAnim = FALSE;
                attackTrollBRTimeInPlay = 0.0f;
                attackTrollBRFadingOutTimer = 0.0f;
                attackTrollBRInPlay = FALSE;
                attackTrollBRResetTimer = attackTrollRespawnInterval;
                
                id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                [attackTrollSpriteBotRight runAction:actionReset9];
                
                if(attackTrollBRColour == 0){
                    [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRGreen];
                }
                else if(attackTrollBRColour == 1){
                    [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRGrey];
                }
                else if(attackTrollBRColour == 2){
                    [attackTrollSpriteBotRight setNormalImage:attackTrollSpriteBRPurple];
                }
                
                attackSpriteBotRightMenu.position = ccp(-1000, -1000);
            }
        }
        
        attackTimeInt = (int)(attackTimeLeft + 1.0f);
        
        //TIME CALCULATIONS
        if(attackTimeLeft > 0){
            if(attackTimeInt >= 10){
                int lsd = attackTimeInt % 10;
                if(lsd == 0){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber0_2];
                }
                else if(lsd == 1){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber1_2];
                }
                else if(lsd == 2){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber2_2];
                }
                else if(lsd == 3){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber3_2];
                }
                else if(lsd == 4){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber4_2];
                }
                else if(lsd == 5){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber5_2];
                }
                else if(lsd == 6){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber6_2];
                }
                else if(lsd == 7){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber7_1];
                }
                else if(lsd == 8){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber8_1];
                }
                else if(lsd == 9){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber9_1];
                }
                
                if(attackTimeInt >= 10 && attackTimeInt < 20){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber1_1];
                }
                else if(attackTimeInt >= 20 && attackTimeInt < 30){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber2_1];
                }
                else if(attackTimeInt >= 30 && attackTimeInt < 40){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber3_1];
                }
                else if(attackTimeInt >= 40 && attackTimeInt < 50){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber4_1];
                }
                if(attackTimeInt == 60){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber6_1];
                }
                else if(attackTimeInt >= 50 && attackTimeInt < 60){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber5_1];
                }
            }
            else{
                if(attackTimeInt == 0){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber0_2];
                }
                else if(attackTimeInt == 1){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber1_2];
                }
                else if(attackTimeInt == 2){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber2_2];
                }
                else if(attackTimeInt == 3){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber3_2];
                }
                else if(attackTimeInt == 4){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber4_2];
                }
                else if(attackTimeInt == 5){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber5_2];
                }
                else if(attackTimeInt == 6){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber6_2];
                }
                else if(attackTimeInt == 7){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber7_1];
                }
                else if(attackTimeInt == 8){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber8_1];
                }
                else if(attackTimeInt == 9){
                    [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber9_1];
                }
                [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber0_1];
            }
        }
        else{
            [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 201] setNormalImage:attackTimeNumber0_1];
            [(CCMenuItemSprite*)[attackTimeMenu getChildByTag: 202] setNormalImage:attackTimeNumber0_2];
        }

        attackScoreInt = attackCurrentScore;
        
        //SCORE CALCULATIONS
        if(attackTimeLeft > 0) {
            if(attackCurrentScore != attackPrevScore){
                if(attackCurrentScore >= 0 && attackCurrentScore < 10){
                    if(attackCurrentScore == 0){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber0_4];
                    }
                    else if(attackCurrentScore == 1){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber1_4];
                    }
                    else if(attackCurrentScore == 2){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber2_4];
                    }
                    else if(attackCurrentScore == 3){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber3_4];
                    }
                    else if(attackCurrentScore == 4){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber4_4];
                    }
                    else if(attackCurrentScore == 5){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber5_4];
                    }
                    else if(attackCurrentScore == 6){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber6_4];
                    }
                    else if(attackCurrentScore == 7){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber7_4];
                    }
                    else if(attackCurrentScore == 8){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber8_4];
                    }
                    else if(attackCurrentScore == 9){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber9_4];
                    }
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber0_1];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber0_2];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber0_3];
                }
                
                else if(attackCurrentScore >= 10 && attackCurrentScore <= 99){
                    int lSDS = attackScoreInt % 10;
                    if(lSDS == 0){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber0_4];
                    }
                    else if(lSDS == 1){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber1_4];
                    }
                    else if(lSDS == 2){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber2_4];
                    }
                    else if(lSDS == 3){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber3_4];
                    }
                    else if(lSDS == 4){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber4_4];
                    }
                    else if(lSDS == 5){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber5_4];
                    }
                    else if(lSDS == 6){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber6_4];
                    }
                    else if(lSDS == 7){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber7_4];
                    }
                    else if(lSDS == 8){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber8_4];
                    }
                    else if(lSDS == 9){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber9_4];
                    }
                    
                    if(attackCurrentScore >= 10 && attackCurrentScore <= 19){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber1_3];
                    }
                    else if(attackCurrentScore >= 20 && attackCurrentScore <= 29){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber2_3];
                    }
                    else if(attackCurrentScore >= 30 && attackCurrentScore <= 39){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber3_3];
                    }
                    else if(attackCurrentScore >= 40 && attackCurrentScore <= 49){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber4_3];
                    }
                    else if(attackCurrentScore >= 50 && attackCurrentScore <= 59){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber5_3];
                    }
                    else if(attackCurrentScore >= 60 && attackCurrentScore <= 69){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber6_3];
                    }
                    else if(attackCurrentScore >= 70 && attackCurrentScore <= 79){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber7_3];
                    }
                    else if(attackCurrentScore >= 80 && attackCurrentScore <= 89){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber8_3];
                    }
                    else if(attackCurrentScore >= 90 && attackCurrentScore <= 99){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber9_3];
                    }
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber0_2];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber0_1];
                }
                
                else if(attackCurrentScore >= 100 && attackCurrentScore <= 999){
                    int attackCount = 0;
                    while(attackCount < 2){
                        int lSDSs = attackScoreInt % 10;
                        if(attackCount == 0){
                            if(lSDSs == 0){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber0_4];
                            }
                            else if(lSDSs == 1){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber1_4];
                            }
                            else if(lSDSs == 2){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber2_4];
                            }
                            else if(lSDSs == 3){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber3_4];
                            }
                            else if(lSDSs == 4){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber4_4];
                            }
                            else if(lSDSs == 5){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber5_4];
                            }
                            else if(lSDSs == 6){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber6_4];
                            }
                            else if(lSDSs == 7){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber7_4];
                            }
                            else if(lSDSs == 8){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber8_4];
                            }
                            else if(lSDSs == 9){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber9_4];
                            }
                        }
                        else if(attackCount == 1){
                            if(lSDSs == 0){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber0_3];
                            }
                            else if(lSDSs == 1){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber1_3];
                            }
                            else if(lSDSs == 2){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber2_3];
                            }
                            else if(lSDSs == 3){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber3_3];
                            }
                            else if(lSDSs == 4){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber4_3];
                            }
                            else if(lSDSs == 5){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber5_3];
                            }
                            else if(lSDSs == 6){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber6_3];
                            }
                            else if(lSDSs == 7){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber7_3];
                            }
                            else if(lSDSs == 8){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber8_3];
                            }
                            else if(lSDSs == 9){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber9_3];
                            }
                        }
                        attackScoreInt /= 10;
                        attackCount++;
                    }
                    
                    if(attackCurrentScore >= 100 && attackCurrentScore <= 199){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber1_2];
                    }
                    else if(attackCurrentScore >= 200 && attackCurrentScore <= 299){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber2_2];
                    }
                    else if(attackCurrentScore >= 300 && attackCurrentScore <= 399){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber3_2];
                    }
                    else if(attackCurrentScore >= 400 && attackCurrentScore <= 499){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber4_2];
                    }
                    else if(attackCurrentScore >= 500 && attackCurrentScore <= 599){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber5_2];
                    }
                    else if(attackCurrentScore >= 600 && attackCurrentScore <= 699){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber6_2];
                    }
                    else if(attackCurrentScore >= 700 && attackCurrentScore <= 799){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber7_2];
                    }
                    else if(attackCurrentScore >= 800 && attackCurrentScore <= 899){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber8_2];
                    }
                    else if(attackCurrentScore >= 900 && attackCurrentScore <= 999){
                        [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber9_2];
                    }
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber0_1];
                }
                
                else if(attackCurrentScore >= 1000 && attackCurrentScore <= 9999){
                    int attackCount = 0;
                    while(attackCount < 3){
                        int lSDSsS = attackScoreInt % 10;
                        if(attackCount == 0){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber0_4];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber1_4];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber2_4];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber3_4];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber4_4];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber5_4];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber6_4];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber7_4];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber8_4];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber9_4];
                            }
                        }
                        else if(attackCount == 1){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber0_3];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber1_3];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber2_3];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber3_3];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber4_3];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber5_3];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber6_3];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber7_3];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber8_3];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber9_3];
                            }
                        }
                        else if(attackCount == 2){
                            if(lSDSsS == 0){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber0_2];
                            }
                            else if(lSDSsS == 1){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber1_2];
                            }
                            else if(lSDSsS == 2){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber2_2];
                            }
                            else if(lSDSsS == 3){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber3_2];
                            }
                            else if(lSDSsS == 4){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber4_2];
                            }
                            else if(lSDSsS == 5){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber5_2];
                            }
                            else if(lSDSsS == 6){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber6_2];
                            }
                            else if(lSDSsS == 7){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber7_2];
                            }
                            else if(lSDSsS == 8){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber8_2];
                            }
                            else if(lSDSsS == 9){
                                [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber9_2];
                            }
                        }
                        attackScoreInt /= 10;
                        attackCount++;
                        
                        if(attackCurrentScore >= 1000 && attackCurrentScore <= 1999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber1_1];
                        }
                        else if(attackCurrentScore >= 2000 && attackCurrentScore <= 2999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber2_1];
                        }
                        else if(attackCurrentScore >= 3000 && attackCurrentScore <= 3999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber3_1];
                        }
                        else if(attackCurrentScore >= 4000 && attackCurrentScore <= 4999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber4_1];
                        }
                        else if(attackCurrentScore >= 5000 && attackCurrentScore <= 5999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber5_1];
                        }
                        else if(attackCurrentScore >= 6000 && attackCurrentScore <= 6999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber6_1];
                        }
                        else if(attackCurrentScore >= 7000 && attackCurrentScore <= 7999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber7_1];
                        }
                        else if(attackCurrentScore >= 8000 && attackCurrentScore <= 8999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber8_1];
                        }
                        else if(attackCurrentScore >= 9000 && attackCurrentScore <= 9999){
                            [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber9_1];
                        }
                    }
                }
                
                else if(attackCurrentScore <= 0){
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 104] setNormalImage:attackScoreNumber0_4];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 103] setNormalImage:attackScoreNumber0_3];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 102] setNormalImage:attackScoreNumber0_2];
                    [(CCMenuItemSprite*)[attackScoreMenu getChildByTag: 101] setNormalImage:attackScoreNumber0_1];
                }
            }
        }
    }
    else if(attackTick == 9){
        if(!attackTimeUpDrawn){
            attackTimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
            attackTimeUpSprite.position = ccp(240, 836);
            [self addChild: attackTimeUpSprite];
            [self scheduleOnce:@selector(attackGameOver:) delay:2];
            attackTimeUpDrawn = TRUE;
        }
        else{
            if(attackTimeUpSprite.position.y <= -64){
                //DO NOTHING
            }
            else{
                attackTimeUpSprite.position = ccp(attackTimeUpSprite.position.x, attackTimeUpSprite.position.y -10);
            }
        }
    }
}

-(void) loadAttackScoreTimeElements{
    //ATTACK SCORE NUMBERS
    attackScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    attackScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    attackScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    attackScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    attackScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    attackScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    attackScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    attackScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    attackScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    attackScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    attackScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    attackScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    attackTimeNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackTimeNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    attackTimeNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackTimeNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    attackTimeNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackTimeNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    attackTimeNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackTimeNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    attackTimeNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackTimeNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    attackTimeNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackTimeNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    attackTimeNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackTimeNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    attackTimeNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    attackTimeNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    attackTimeNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    attackScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text.png"
                                             selectedImage:NULL];
    
    attackScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                        selectedSprite:NULL];
    
    attackScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                        selectedSprite:NULL];
    
    attackScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                        selectedSprite:NULL];
    
    attackScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    attackTimeSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_32.png"]
                                                       selectedSprite:NULL];
    
    attackTimeSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                       selectedSprite:NULL];
    
    attackTimeBarRemaining = [CCSprite spriteWithFile:@"GameSprites/time_attack_bar.png"];
    attackTimeBarCover = [CCSprite spriteWithFile:@"GameSprites/time_attack_bar_slider.png"];
    attackTimeBarRemaining.position = ccp(240, 8);
    attackTimeBarCover.position = ccp(-240, 8);
    
    attackScoreMenu = [CCMenu menuWithItems:attackScoreText, attackScoreSpriteDigitOne, attackScoreSpriteDigitTwo, attackScoreSpriteDigitThree, attackScoreSpriteDigitFour, nil];
    [attackScoreMenu alignItemsHorizontallyWithPadding:1];
    
    attackTimeMenu = [CCMenu menuWithItems: attackTimeSpriteDigitOne, attackTimeSpriteDigitTwo, nil];
    [attackTimeMenu alignItemsHorizontallyWithPadding:1];
    
    attackScoreMenu.position = ccp(72, 308);
    attackTimeMenu.position = ccp(460, 30);
    
    [attackScoreSpriteDigitOne setTag: 101];
    [attackScoreSpriteDigitTwo setTag: 102];
    [attackScoreSpriteDigitThree setTag: 103];
    [attackScoreSpriteDigitFour setTag: 104];
    
    [attackTimeSpriteDigitOne setTag: 201];
    [attackTimeSpriteDigitTwo setTag: 202];
    
    [attackScoreTimeLayer addChild: attackTimeBarRemaining];
    [attackScoreTimeLayer addChild: attackTimeBarCover];
    [attackScoreTimeLayer addChild: attackScoreMenu];
    [attackScoreTimeLayer addChild: attackTimeMenu];
    
    attackScoreTimeLayer.position = ccp(-1000, -1000);
}

-(void) loadAttackSpriteElements{
    attackVolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    attackVolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    attackVolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(topLeftExtraTouched:)];
    
    attackVolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(topMidExtraTouched:)];
    
    attackVolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(topRightExtraTouched:)];
    
    attackVolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(midLeftExtraTouched:)];
    
    attackVolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(midMidExtraTouched:)];
    
    attackVolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(midRightExtraTouched:)];
    
    attackVolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(botLeftExtraTouched:)];
    
    attackVolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(botMidExtraTouched:)];
    
    attackVolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(botRightExtraTouched:)];
    
    attackVolcanoFrontSpriteTopLeft.position = ccp(80, 250);
    attackVolcanoBackSpriteTopLeft.position = ccp(-160, 90);
    attackVolcanoFrontSpriteTopMid.position = ccp(240, 250);
    attackVolcanoBackSpriteTopMid.position = ccp(0, 90);
    attackVolcanoFrontSpriteTopRight.position = ccp(400, 250);
    attackVolcanoBackSpriteTopRight.position = ccp(160, 90);
    
    attackVolcanoFrontSpriteMidLeft.position = ccp(80, 170);
    attackVolcanoBackSpriteMidLeft.position = ccp(-160, 10);
    attackVolcanoFrontSpriteMidMid.position = ccp(240, 170);
    attackVolcanoBackSpriteMidMid.position = ccp(0, 10);
    attackVolcanoFrontSpriteMidRight.position = ccp(400, 170);
    attackVolcanoBackSpriteMidRight.position = ccp(160, 10);
    
    attackVolcanoFrontSpriteBotLeft.position = ccp(80, 90);
    attackVolcanoBackSpriteBotLeft.position = ccp(-160, -70);
    attackVolcanoFrontSpriteBotMid.position = ccp(240, 90);
    attackVolcanoBackSpriteBotMid.position = ccp(0, -70);
    attackVolcanoFrontSpriteBotRight.position = ccp(400, 90);
    attackVolcanoBackSpriteBotRight.position = ccp(160, -70);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                attackTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                attackTrollTLColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                attackTrollTLColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topLeftTouched:)];
                
                attackTrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                attackTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                attackTrollTMColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                attackTrollTMColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                attackTrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                attackTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topRightTouched:)];
                
                attackTrollTRColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topRightTouched:)];
                
                attackTrollTRColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topRightTouched:)];
                
                attackTrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                attackTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                attackTrollMLColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                attackTrollMLColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midLeftTouched:)];
                
                attackTrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                attackTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                attackTrollMMColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                attackTrollMMColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                attackTrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                attackTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midRightTouched:)];
                attackTrollMRColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midRightTouched:)];
                
                attackTrollMRColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midRightTouched:)];
                
                attackTrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                attackTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                attackTrollBLColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                attackTrollBLColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botLeftTouched:)];
                
                attackTrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                attackTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                attackTrollBMColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                
                attackTrollBMColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                
                attackTrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                attackTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botRightTouched:)];
                attackTrollBRColour = 0;
            }
            else if(i == 1){
                attackTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botRightTouched:)];
                
                attackTrollBRColour = 1;
            }
            else if(i == 2){
                attackTrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botRightTouched:)];
                
                attackTrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                attackTrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    attackTrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    attackTrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    attackTrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    attackTrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    attackTrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    attackTrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    attackTrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    attackTrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    attackSpriteTopLeftMenu = [CCMenu menuWithItems: attackTrollSpriteTopLeft, nil];
    attackSpriteTopMidMenu = [CCMenu menuWithItems: attackTrollSpriteTopMid, nil];
    attackSpriteTopRightMenu = [CCMenu menuWithItems: attackTrollSpriteTopRight, nil];
    attackSpriteMidLeftMenu = [CCMenu menuWithItems: attackTrollSpriteMidLeft, nil];
    attackSpriteMidMidMenu = [CCMenu menuWithItems: attackTrollSpriteMidMid, nil];
    attackSpriteMidRightMenu = [CCMenu menuWithItems: attackTrollSpriteMidRight, nil];
    attackSpriteBotLeftMenu = [CCMenu menuWithItems: attackTrollSpriteBotLeft, nil];
    attackSpriteBotMidMenu = [CCMenu menuWithItems: attackTrollSpriteBotMid, nil];
    attackSpriteBotRightMenu = [CCMenu menuWithItems: attackTrollSpriteBotRight, nil];
    
    attackSpriteTopLeftMenu.position = ccp(-1000, -1000);
    attackSpriteTopMidMenu.position = ccp(-1000, -1000);
    attackSpriteTopRightMenu.position = ccp(-1000, -1000);
    attackSpriteMidLeftMenu.position = ccp(-1000, -1000);
    attackSpriteMidMidMenu.position = ccp(-1000, -1000);
    attackSpriteMidRightMenu.position = ccp(-1000, -1000);
    attackSpriteBotLeftMenu.position = ccp(-1000, -1000);
    attackSpriteBotMidMenu.position = ccp(-1000, -1000);
    attackSpriteBotRightMenu.position = ccp(-1000, -1000);
    
    attackTrollTopLeftChat.position = ccp(-1000, -1000);
    attackTrollTopMidChat.position = ccp(-1000, -1000);
    attackTrollTopRightChat.position = ccp(-1000, -1000);
    attackTrollMidLeftChat.position = ccp(-1000, -1000);
    attackTrollMidMidChat.position = ccp(-1000, -1000);
    attackTrollMidRightChat.position = ccp(-1000, -1000);
    attackTrollBotLeftChat.position = ccp(-1000, -1000);
    attackTrollBotMidChat.position = ccp(-1000, -1000);
    attackTrollBotRightChat.position = ccp(-1000, -1000);
    
    attackVolcanoMenu = [CCMenu menuWithItems: attackVolcanoBackSpriteTopLeft, attackVolcanoBackSpriteTopMid, attackVolcanoBackSpriteTopRight,
                         attackVolcanoBackSpriteMidLeft, attackVolcanoBackSpriteMidMid, attackVolcanoBackSpriteMidRight,
                         attackVolcanoBackSpriteBotLeft, attackVolcanoBackSpriteBotMid, attackVolcanoBackSpriteBotRight, nil];
    
    [attackSpriteMidLayer addChild: attackSpriteTopLeftMenu];
    [attackSpriteMidLayer addChild: attackSpriteTopMidMenu];
    [attackSpriteMidLayer addChild: attackSpriteTopRightMenu];
    [attackSpriteMidLayer addChild: attackSpriteMidLeftMenu];
    [attackSpriteMidLayer addChild: attackSpriteMidMidMenu];
    [attackSpriteMidLayer addChild: attackSpriteMidRightMenu];
    [attackSpriteMidLayer addChild: attackSpriteBotLeftMenu];
    [attackSpriteMidLayer addChild: attackSpriteBotMidMenu];
    [attackSpriteMidLayer addChild: attackSpriteBotRightMenu];
    
    [attackSpriteMidLayer addChild: attackTrollTopLeftChat];
    [attackSpriteMidLayer addChild: attackTrollTopMidChat];
    [attackSpriteMidLayer addChild: attackTrollTopRightChat];
    [attackSpriteMidLayer addChild: attackTrollMidLeftChat];
    [attackSpriteMidLayer addChild: attackTrollMidMidChat];
    [attackSpriteMidLayer addChild: attackTrollMidRightChat];
    [attackSpriteMidLayer addChild: attackTrollBotLeftChat];
    [attackSpriteMidLayer addChild: attackTrollBotMidChat];
    [attackSpriteMidLayer addChild: attackTrollBotRightChat];
    
    [attackSpriteBackLayer addChild: attackVolcanoMenu];
    
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteTopLeft];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteTopMid];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteTopRight];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteMidLeft];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteMidMid];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteMidRight];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteBotLeft];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteBotMid];
    [attackSpriteFrontLayer addChild: attackVolcanoFrontSpriteBotRight];
    
    attackSpriteBackLayer.position = ccp(-1000, -1000);
    attackSpriteMidLayer.position = ccp(-1000, -1000);
    attackSpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) drawAttackElements{
    attackSpriteBackLayer.position = ccp(0, 0);
    attackSpriteMidLayer.position = ccp(0, 0);
    attackSpriteFrontLayer.position = ccp(0, 0);
    attackScoreTimeLayer.position = ccp(0, 0);
}

-(void) topLeftTouched:(id)sender{
    if(attackStartTrollTLDeathAnim || attackTrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        attackTrollTLTouched = TRUE;
        if(attackTrollTLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTLTimeInPlay >= 0.4f && attackTrollTLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTLTimeInPlay >= 0.7f && attackTrollTLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTLTimeInPlay >= 1.0f && attackTrollTLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTLTimeInPlay >= 1.4f && attackTrollTLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTLTimeInPlay >= 1.8f && attackTrollTLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTLTimeInPlay >= 2.3f && attackTrollTLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) topMidTouched:(id)sender{
    if(attackStartTrollTMDeathAnim || attackTrollTMResetTimer > 0){
        
    }
    else{
        attackTrollTMTouched = TRUE;
        if(attackTrollTMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTMTimeInPlay >= 0.4f && attackTrollTMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTMTimeInPlay >= 0.7f && attackTrollTMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTMTimeInPlay >= 1.0f && attackTrollTMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTMTimeInPlay >= 1.4f && attackTrollTMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTMTimeInPlay >= 1.8f && attackTrollTMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTMTimeInPlay >= 2.3f && attackTrollTMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) topRightTouched:(id)sender{
    if(attackStartTrollTRDeathAnim || attackTrollTRResetTimer > 0){
        
    }
    else{
        attackTrollTRTouched = TRUE;
        if(attackTrollTRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTRTimeInPlay >= 0.4f && attackTrollTRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTRTimeInPlay >= 0.7f && attackTrollTRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTRTimeInPlay >= 1.0f && attackTrollTRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTRTimeInPlay >= 1.4f && attackTrollTRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTRTimeInPlay >= 1.8f && attackTrollTRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTRTimeInPlay >= 2.3f && attackTrollTRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midLeftTouched:(id)sender{
    if(attackStartTrollMLDeathAnim || attackTrollMLResetTimer > 0){
        
    }
    else{
        attackTrollMLTouched = TRUE;
        if(attackTrollMLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMLTimeInPlay >= 0.4f && attackTrollMLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMLTimeInPlay >= 0.7f && attackTrollMLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMLTimeInPlay >= 1.0f && attackTrollMLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMLTimeInPlay >= 1.4f && attackTrollMLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMLTimeInPlay >= 1.8f && attackTrollMLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMLTimeInPlay >= 2.3f && attackTrollMLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midMidTouched:(id)sender{
    if(attackStartTrollMMDeathAnim || attackTrollMMResetTimer > 0){
        
    }
    else{
        attackTrollMMTouched = TRUE;
        if(attackTrollMMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMMTimeInPlay >= 0.4f && attackTrollMMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMMTimeInPlay >= 0.7f && attackTrollMMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMMTimeInPlay >= 1.0f && attackTrollMMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMMTimeInPlay >= 1.4f && attackTrollMMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMMTimeInPlay >= 1.8f && attackTrollMMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMMTimeInPlay >= 2.3f && attackTrollMMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midRightTouched:(id)sender{
    if(attackStartTrollMRDeathAnim || attackTrollMRResetTimer > 0){
        
    }
    else{
        attackTrollMRTouched = TRUE;
        if(attackTrollMRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMRTimeInPlay >= 0.4f && attackTrollMRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMRTimeInPlay >= 0.7f && attackTrollMRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMRTimeInPlay >= 1.0f && attackTrollMRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMRTimeInPlay >= 1.4f && attackTrollMRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMRTimeInPlay >= 1.8f && attackTrollMRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMRTimeInPlay >= 2.3f && attackTrollMRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botLeftTouched:(id)sender{
    if(attackStartTrollBLDeathAnim || attackTrollBLResetTimer > 0){
        
    }
    else{
        attackTrollBLTouched = TRUE;
        if(attackTrollBLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBLTimeInPlay >= 0.4f && attackTrollBLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBLTimeInPlay >= 0.7f && attackTrollBLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBLTimeInPlay >= 1.0f && attackTrollBLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBLTimeInPlay >= 1.4f && attackTrollBLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBLTimeInPlay >= 1.8f && attackTrollBLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBLTimeInPlay >= 2.3f && attackTrollBLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botMidTouched:(id)sender{
    if(attackStartTrollBMDeathAnim || attackTrollBMResetTimer > 0){
        
    }
    else{
        attackTrollBMTouched = TRUE;
        if(attackTrollBMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBMTimeInPlay >= 0.4f && attackTrollBMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBMTimeInPlay >= 0.7f && attackTrollBMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBMTimeInPlay >= 1.0f && attackTrollBMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBMTimeInPlay >= 1.4f && attackTrollBMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBMTimeInPlay >= 1.8f && attackTrollBMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBMTimeInPlay >= 2.3f && attackTrollBMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botRightTouched:(id)sender{
    if(attackStartTrollBRDeathAnim || attackTrollBRResetTimer > 0){
        
    }
    else{
        attackTrollBRTouched = TRUE;
        if(attackTrollBRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBRTimeInPlay >= 0.4f && attackTrollBRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBRTimeInPlay >= 0.7f && attackTrollBRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBRTimeInPlay >= 1.0f && attackTrollBRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBRTimeInPlay >= 1.4f && attackTrollBRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBRTimeInPlay >= 1.8f && attackTrollBRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBRTimeInPlay >= 2.3f && attackTrollBRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(attackStartTrollTLDeathAnim || attackTrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        attackTrollTLTouched = TRUE;
        if(attackTrollTLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTLTimeInPlay >= 0.4f && attackTrollTLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTLTimeInPlay >= 0.7f && attackTrollTLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTLTimeInPlay >= 1.0f && attackTrollTLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTLTimeInPlay >= 1.4f && attackTrollTLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTLTimeInPlay >= 1.8f && attackTrollTLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTLTimeInPlay >= 2.3f && attackTrollTLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(attackStartTrollTMDeathAnim || attackTrollTMResetTimer > 0){
        
    }
    else{
        attackTrollTMTouched = TRUE;
        if(attackTrollTMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTMTimeInPlay >= 0.4f && attackTrollTMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTMTimeInPlay >= 0.7f && attackTrollTMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTMTimeInPlay >= 1.0f && attackTrollTMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTMTimeInPlay >= 1.4f && attackTrollTMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTMTimeInPlay >= 1.8f && attackTrollTMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTMTimeInPlay >= 2.3f && attackTrollTMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(attackStartTrollTRDeathAnim || attackTrollTRResetTimer > 0){
        
    }
    else{
        attackTrollTRTouched = TRUE;
        if(attackTrollTRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollTRTimeInPlay >= 0.4f && attackTrollTRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollTRTimeInPlay >= 0.7f && attackTrollTRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollTRTimeInPlay >= 1.0f && attackTrollTRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollTRTimeInPlay >= 1.4f && attackTrollTRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollTRTimeInPlay >= 1.8f && attackTrollTRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollTRTimeInPlay >= 2.3f && attackTrollTRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollTRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(attackStartTrollMLDeathAnim || attackTrollMLResetTimer > 0){
        
    }
    else{
        attackTrollMLTouched = TRUE;
        if(attackTrollMLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMLTimeInPlay >= 0.4f && attackTrollMLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMLTimeInPlay >= 0.7f && attackTrollMLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMLTimeInPlay >= 1.0f && attackTrollMLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMLTimeInPlay >= 1.4f && attackTrollMLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMLTimeInPlay >= 1.8f && attackTrollMLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMLTimeInPlay >= 2.3f && attackTrollMLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(attackStartTrollMMDeathAnim || attackTrollMMResetTimer > 0){
        
    }
    else{
        attackTrollMMTouched = TRUE;
        if(attackTrollMMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMMTimeInPlay >= 0.4f && attackTrollMMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMMTimeInPlay >= 0.7f && attackTrollMMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMMTimeInPlay >= 1.0f && attackTrollMMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMMTimeInPlay >= 1.4f && attackTrollMMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMMTimeInPlay >= 1.8f && attackTrollMMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMMTimeInPlay >= 2.3f && attackTrollMMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(attackStartTrollMRDeathAnim || attackTrollMRResetTimer > 0){
        
    }
    else{
        attackTrollMRTouched = TRUE;
        if(attackTrollMRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollMRTimeInPlay >= 0.4f && attackTrollMRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollMRTimeInPlay >= 0.7f && attackTrollMRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollMRTimeInPlay >= 1.0f && attackTrollMRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollMRTimeInPlay >= 1.4f && attackTrollMRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollMRTimeInPlay >= 1.8f && attackTrollMRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollMRTimeInPlay >= 2.3f && attackTrollMRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollMRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(attackStartTrollBLDeathAnim || attackTrollBLResetTimer > 0){
        
    }
    else{
        attackTrollBLTouched = TRUE;
        if(attackTrollBLTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBLTimeInPlay >= 0.4f && attackTrollBLTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBLTimeInPlay >= 0.7f && attackTrollBLTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBLTimeInPlay >= 1.0f && attackTrollBLTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBLTimeInPlay >= 1.4f && attackTrollBLTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBLTimeInPlay >= 1.8f && attackTrollBLTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBLTimeInPlay >= 2.3f && attackTrollBLTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBLTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(attackStartTrollBMDeathAnim || attackTrollBMResetTimer > 0){
        
    }
    else{
        attackTrollBMTouched = TRUE;
        if(attackTrollBMTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBMTimeInPlay >= 0.4f && attackTrollBMTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBMTimeInPlay >= 0.7f && attackTrollBMTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBMTimeInPlay >= 1.0f && attackTrollBMTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBMTimeInPlay >= 1.4f && attackTrollBMTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBMTimeInPlay >= 1.8f && attackTrollBMTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBMTimeInPlay >= 2.3f && attackTrollBMTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBMTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(attackStartTrollBRDeathAnim || attackTrollBRResetTimer > 0){
        
    }
    else{
        attackTrollBRTouched = TRUE;
        if(attackTrollBRTimeInPlay < 0.4f){
            attackCurrentScore += 10;
        }
        else if(attackTrollBRTimeInPlay >= 0.4f && attackTrollBRTimeInPlay < 0.7f){
            attackCurrentScore += 9;
        }
        else if(attackTrollBRTimeInPlay >= 0.7f && attackTrollBRTimeInPlay < 1.0f){
            attackCurrentScore += 8;
        }
        else if(attackTrollBRTimeInPlay >= 1.0f && attackTrollBRTimeInPlay < 1.4f){
            attackCurrentScore += 6;
        }
        else if(attackTrollBRTimeInPlay >= 1.4f && attackTrollBRTimeInPlay < 1.8f){
            attackCurrentScore += 4;
        }
        else if(attackTrollBRTimeInPlay >= 1.8f && attackTrollBRTimeInPlay < 2.3f){
            attackCurrentScore += 3;
        }
        else if(attackTrollBRTimeInPlay >= 2.3f && attackTrollBRTimeInPlay < 3.0f){
            attackCurrentScore += 2;
        }
        else if(attackTrollBRTimeInPlay >= 3.0f){
            attackCurrentScore += 1;
        }
    }
}

-(void) attackGameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:attackCurrentScore forKey:@"timeScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameOver node] withColor:ccWHITE]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [attackScoreNumber0_1 release];
    [attackScoreNumber0_2 release];
    [attackScoreNumber0_3 release];
    [attackScoreNumber0_4 release];
    [attackScoreNumber1_1 release];
    [attackScoreNumber1_2 release];
    [attackScoreNumber1_3 release];
    [attackScoreNumber1_4 release];
    [attackScoreNumber2_1 release];
    [attackScoreNumber2_2 release];
    [attackScoreNumber2_3 release];
    [attackScoreNumber2_4 release];
    [attackScoreNumber3_1 release];
    [attackScoreNumber3_2 release];
    [attackScoreNumber3_3 release];
    [attackScoreNumber3_4 release];
    [attackScoreNumber4_1 release];
    [attackScoreNumber4_2 release];
    [attackScoreNumber4_3 release];
    [attackScoreNumber4_4 release];
    [attackScoreNumber5_1 release];
    [attackScoreNumber5_2 release];
    [attackScoreNumber5_3 release];
    [attackScoreNumber5_4 release];
    [attackScoreNumber6_1 release];
    [attackScoreNumber6_2 release];
    [attackScoreNumber6_3 release];
    [attackScoreNumber6_4 release];
    [attackScoreNumber7_1 release];
    [attackScoreNumber7_2 release];
    [attackScoreNumber7_3 release];
    [attackScoreNumber7_4 release];
    [attackScoreNumber8_1 release];
    [attackScoreNumber8_2 release];
    [attackScoreNumber8_3 release];
    [attackScoreNumber8_4 release];
    [attackScoreNumber9_1 release];
    [attackScoreNumber9_2 release];
    [attackScoreNumber9_3 release];
    [attackScoreNumber9_4 release];
    [attackTimeNumber0_1 release];
    [attackTimeNumber0_2 release];
    [attackTimeNumber1_1 release];
    [attackTimeNumber1_2 release];
    [attackTimeNumber2_1 release];
    [attackTimeNumber2_2 release];
    [attackTimeNumber3_1 release];
    [attackTimeNumber3_2 release];
    [attackTimeNumber4_1 release];
    [attackTimeNumber4_2 release];
    [attackTimeNumber5_1 release];
    [attackTimeNumber5_2 release];
    [attackTimeNumber6_1 release];
    [attackTimeNumber6_2 release];
    [attackTimeNumber7_1 release];
    [attackTimeNumber8_1 release];
    [attackTimeNumber9_1 release];
    [attackTrollTopLeftChat release];
    [attackTrollTopMidChat release];
    [attackTrollTopRightChat release];
    [attackTrollMidLeftChat release];
    [attackTrollMidMidChat release];
    [attackTrollMidRightChat release];
    [attackTrollBotLeftChat release];
    [attackTrollBotMidChat release];
    [attackTrollBotRightChat release];
    [attackTrollSpriteTLGreen release];
    [attackTrollSpriteTLGrey release];
    [attackTrollSpriteTLPurple release];
    [attackTrollSpriteTMGreen release];
    [attackTrollSpriteTMGrey release];
    [attackTrollSpriteTMPurple release];
    [attackTrollSpriteTRGreen release];
    [attackTrollSpriteTRGrey release];
    [attackTrollSpriteTRPurple release];
    [attackTrollSpriteMLGreen release];
    [attackTrollSpriteMLGrey release];
    [attackTrollSpriteMLPurple release];
    [attackTrollSpriteMMGreen release];
    [attackTrollSpriteMMGrey release];
    [attackTrollSpriteMMPurple release];
    [attackTrollSpriteMRGreen release];
    [attackTrollSpriteMRGrey release];
    [attackTrollSpriteMRPurple release];
    [attackTrollSpriteBLGreen release];
    [attackTrollSpriteBLGrey release];
    [attackTrollSpriteBLPurple release];
    [attackTrollSpriteBMGreen release];
    [attackTrollSpriteBMGrey release];
    [attackTrollSpriteBMPurple release];
    [attackTrollSpriteBRGreen release];
    [attackTrollSpriteBRGrey release];
    [attackTrollSpriteBRPurple release];
    [attackTrollSpriteTLDeadGreen release];
    [attackTrollSpriteTLDeadGrey release];
    [attackTrollSpriteTLDeadPurple release];
    [attackTrollSpriteTMDeadGreen release];
    [attackTrollSpriteTMDeadGrey release];
    [attackTrollSpriteTMDeadPurple release];
    [attackTrollSpriteTRDeadGreen release];
    [attackTrollSpriteTRDeadGrey release];
    [attackTrollSpriteTRDeadPurple release];
    [attackTrollSpriteMLDeadGreen release];
    [attackTrollSpriteMLDeadGrey release];
    [attackTrollSpriteMLDeadPurple release];
    [attackTrollSpriteMMDeadGreen release];
    [attackTrollSpriteMMDeadGrey release];
    [attackTrollSpriteMMDeadPurple release];
    [attackTrollSpriteMRDeadGreen release];
    [attackTrollSpriteMRDeadGrey release];
    [attackTrollSpriteMRDeadPurple release];
    [attackTrollSpriteBLDeadGreen release];
    [attackTrollSpriteBLDeadGrey release];
    [attackTrollSpriteBLDeadPurple release];
    [attackTrollSpriteBMDeadGreen release];
    [attackTrollSpriteBMDeadGrey release];
    [attackTrollSpriteBMDeadPurple release];
    [attackTrollSpriteBRDeadGreen release];
    [attackTrollSpriteBRDeadGrey release];
    [attackTrollSpriteBRDeadPurple release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
