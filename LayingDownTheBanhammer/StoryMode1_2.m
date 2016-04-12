//
//  StoryMode1_2.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode1_2.h"
#import "GameOver.h"
#import "BossScene_1.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode1_2

CCSprite *story1_2Background;
CCSprite *story1_2Intro3;
CCSprite *story1_2Intro2;
CCSprite *story1_2Intro1;
CCSprite *story1_2Intro0;

CCLayer *story1_2StatsLayer;
CCLayer *story1_2SpriteFrontLayer;
CCLayer *story1_2SpriteMidLayer;
CCLayer *story1_2SpriteBackLayer;

CCMenu *story1_2DialogueMenu;

CCSprite *story1_2CharacterSprite;
CCSprite *story1_2CharacterName;
CCMenuItemImage *story1_2DialogueSprite;

CCMenu *story1_2ScoreMenu;
CCMenu *story1_2LivesMenu;
CCMenu *story1_2TrollsLeftMenu;

CCMenu *story1_2SpriteTopLeftMenu;
CCMenu *story1_2SpriteTopMidMenu;
CCMenu *story1_2SpriteTopRightMenu;
CCMenu *story1_2SpriteMidLeftMenu;
CCMenu *story1_2SpriteMidMidMenu;
CCMenu *story1_2SpriteMidRightMenu;
CCMenu *story1_2SpriteBotLeftMenu;
CCMenu *story1_2SpriteBotMidMenu;
CCMenu *story1_2SpriteBotRightMenu;

CCMenuItemImage *story1_2ScoreText;
CCMenuItemSprite *story1_2ScoreSpriteDigitOne;
CCMenuItemSprite *story1_2ScoreSpriteDigitTwo;
CCMenuItemSprite *story1_2ScoreSpriteDigitThree;
CCMenuItemSprite *story1_2ScoreSpriteDigitFour;

CCMenuItemImage *story1_2LivesText;
CCMenuItemSprite *story1_2LivesSpriteOne;
CCMenuItemSprite *story1_2LivesSpriteTwo;
CCMenuItemSprite *story1_2LivesSpriteThree;

CCMenuItemImage *story1_2TrollsLeftText;
CCMenuItemSprite *story1_2TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story1_2TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story1_2TrollsLeftSpriteDigitThree;

CCSprite *story1_2VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story1_2VolcanoBackSpriteTopLeft;
CCSprite *story1_2VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story1_2VolcanoBackSpriteTopMid;
CCSprite *story1_2VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story1_2VolcanoBackSpriteTopRight;
CCSprite *story1_2VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story1_2VolcanoBackSpriteMidLeft;
CCSprite *story1_2VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story1_2VolcanoBackSpriteMidMid;
CCSprite *story1_2VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story1_2VolcanoBackSpriteMidRight;
CCSprite *story1_2VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story1_2VolcanoBackSpriteBotLeft;
CCSprite *story1_2VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story1_2VolcanoBackSpriteBotMid;
CCSprite *story1_2VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story1_2VolcanoBackSpriteBotRight;

CCMenu *story1_2VolcanoMenu;

int story1_2TrollTLColour = -1;
int story1_2TrollTMColour = -1;
int story1_2TrollTRColour = -1;
int story1_2TrollMLColour = -1;
int story1_2TrollMMColour = -1;
int story1_2TrollMRColour = -1;
int story1_2TrollBLColour = -1;
int story1_2TrollBMColour = -1;
int story1_2TrollBRColour = -1;

CCMenuItemSprite *story1_2TrollSpriteTopLeft;
CCMenuItemSprite *story1_2TrollSpriteTopMid;
CCMenuItemSprite *story1_2TrollSpriteTopRight;
CCMenuItemSprite *story1_2TrollSpriteMidLeft;
CCMenuItemSprite *story1_2TrollSpriteMidMid;
CCMenuItemSprite *story1_2TrollSpriteMidRight;
CCMenuItemSprite *story1_2TrollSpriteBotLeft;
CCMenuItemSprite *story1_2TrollSpriteBotMid;
CCMenuItemSprite *story1_2TrollSpriteBotRight;

CCSprite *story1_2TrollSpriteTLGreen;
CCSprite *story1_2TrollSpriteTLGrey;
CCSprite *story1_2TrollSpriteTLPurple;
CCSprite *story1_2TrollSpriteTMGreen;
CCSprite *story1_2TrollSpriteTMGrey;
CCSprite *story1_2TrollSpriteTMPurple;
CCSprite *story1_2TrollSpriteTRGreen;
CCSprite *story1_2TrollSpriteTRGrey;
CCSprite *story1_2TrollSpriteTRPurple;
CCSprite *story1_2TrollSpriteMLGreen;
CCSprite *story1_2TrollSpriteMLGrey;
CCSprite *story1_2TrollSpriteMLPurple;
CCSprite *story1_2TrollSpriteMMGreen;
CCSprite *story1_2TrollSpriteMMGrey;
CCSprite *story1_2TrollSpriteMMPurple;
CCSprite *story1_2TrollSpriteMRGreen;
CCSprite *story1_2TrollSpriteMRGrey;
CCSprite *story1_2TrollSpriteMRPurple;
CCSprite *story1_2TrollSpriteBLGreen;
CCSprite *story1_2TrollSpriteBLGrey;
CCSprite *story1_2TrollSpriteBLPurple;
CCSprite *story1_2TrollSpriteBMGreen;
CCSprite *story1_2TrollSpriteBMGrey;
CCSprite *story1_2TrollSpriteBMPurple;
CCSprite *story1_2TrollSpriteBRGreen;
CCSprite *story1_2TrollSpriteBRGrey;
CCSprite *story1_2TrollSpriteBRPurple;

CCSprite *story1_2TrollSpriteTLDeadGreen;
CCSprite *story1_2TrollSpriteTLDeadGrey;
CCSprite *story1_2TrollSpriteTLDeadPurple;
CCSprite *story1_2TrollSpriteTMDeadGreen;
CCSprite *story1_2TrollSpriteTMDeadGrey;
CCSprite *story1_2TrollSpriteTMDeadPurple;
CCSprite *story1_2TrollSpriteTRDeadGreen;
CCSprite *story1_2TrollSpriteTRDeadGrey;
CCSprite *story1_2TrollSpriteTRDeadPurple;
CCSprite *story1_2TrollSpriteMLDeadGreen;
CCSprite *story1_2TrollSpriteMLDeadGrey;
CCSprite *story1_2TrollSpriteMLDeadPurple;
CCSprite *story1_2TrollSpriteMMDeadGreen;
CCSprite *story1_2TrollSpriteMMDeadGrey;
CCSprite *story1_2TrollSpriteMMDeadPurple;
CCSprite *story1_2TrollSpriteMRDeadGreen;
CCSprite *story1_2TrollSpriteMRDeadGrey;
CCSprite *story1_2TrollSpriteMRDeadPurple;
CCSprite *story1_2TrollSpriteBLDeadGreen;
CCSprite *story1_2TrollSpriteBLDeadGrey;
CCSprite *story1_2TrollSpriteBLDeadPurple;
CCSprite *story1_2TrollSpriteBMDeadGreen;
CCSprite *story1_2TrollSpriteBMDeadGrey;
CCSprite *story1_2TrollSpriteBMDeadPurple;
CCSprite *story1_2TrollSpriteBRDeadGreen;
CCSprite *story1_2TrollSpriteBRDeadGrey;
CCSprite *story1_2TrollSpriteBRDeadPurple;

CCSprite *story1_2ScoreNumber0_1;
CCSprite *story1_2ScoreNumber0_2;
CCSprite *story1_2ScoreNumber0_3;
CCSprite *story1_2ScoreNumber0_4;
CCSprite *story1_2ScoreNumber1_1;
CCSprite *story1_2ScoreNumber1_2;
CCSprite *story1_2ScoreNumber1_3;
CCSprite *story1_2ScoreNumber1_4;
CCSprite *story1_2ScoreNumber2_1;
CCSprite *story1_2ScoreNumber2_2;
CCSprite *story1_2ScoreNumber2_3;
CCSprite *story1_2ScoreNumber2_4;
CCSprite *story1_2ScoreNumber3_1;
CCSprite *story1_2ScoreNumber3_2;
CCSprite *story1_2ScoreNumber3_3;
CCSprite *story1_2ScoreNumber3_4;
CCSprite *story1_2ScoreNumber4_1;
CCSprite *story1_2ScoreNumber4_2;
CCSprite *story1_2ScoreNumber4_3;
CCSprite *story1_2ScoreNumber4_4;
CCSprite *story1_2ScoreNumber5_1;
CCSprite *story1_2ScoreNumber5_2;
CCSprite *story1_2ScoreNumber5_3;
CCSprite *story1_2ScoreNumber5_4;
CCSprite *story1_2ScoreNumber6_1;
CCSprite *story1_2ScoreNumber6_2;
CCSprite *story1_2ScoreNumber6_3;
CCSprite *story1_2ScoreNumber6_4;
CCSprite *story1_2ScoreNumber7_1;
CCSprite *story1_2ScoreNumber7_2;
CCSprite *story1_2ScoreNumber7_3;
CCSprite *story1_2ScoreNumber7_4;
CCSprite *story1_2ScoreNumber8_1;
CCSprite *story1_2ScoreNumber8_2;
CCSprite *story1_2ScoreNumber8_3;
CCSprite *story1_2ScoreNumber8_4;
CCSprite *story1_2ScoreNumber9_1;
CCSprite *story1_2ScoreNumber9_2;
CCSprite *story1_2ScoreNumber9_3;
CCSprite *story1_2ScoreNumber9_4;

CCSprite *story1_2TrollsLeftNumber0_1;
CCSprite *story1_2TrollsLeftNumber0_2;
CCSprite *story1_2TrollsLeftNumber0_3;
CCSprite *story1_2TrollsLeftNumber1_1;
CCSprite *story1_2TrollsLeftNumber1_2;
CCSprite *story1_2TrollsLeftNumber2_1;
CCSprite *story1_2TrollsLeftNumber2_2;
CCSprite *story1_2TrollsLeftNumber3_1;
CCSprite *story1_2TrollsLeftNumber3_2;
CCSprite *story1_2TrollsLeftNumber4_1;
CCSprite *story1_2TrollsLeftNumber4_2;
CCSprite *story1_2TrollsLeftNumber5_1;
CCSprite *story1_2TrollsLeftNumber5_2;
CCSprite *story1_2TrollsLeftNumber6_1;
CCSprite *story1_2TrollsLeftNumber6_2;
CCSprite *story1_2TrollsLeftNumber7_1;
CCSprite *story1_2TrollsLeftNumber7_2;
CCSprite *story1_2TrollsLeftNumber8_1;
CCSprite *story1_2TrollsLeftNumber9_1;

CCSprite *story1_2TrollTopLeftChat;
CCSprite *story1_2TrollTopMidChat;
CCSprite *story1_2TrollTopRightChat;
CCSprite *story1_2TrollMidLeftChat;
CCSprite *story1_2TrollMidMidChat;
CCSprite *story1_2TrollMidRightChat;
CCSprite *story1_2TrollBotLeftChat;
CCSprite *story1_2TrollBotMidChat;
CCSprite *story1_2TrollBotRightChat;

CCSprite *story1_2TapToContinue;

CCSprite *story1_2TimeUpSprite;
BOOL story1_2TimeUpDrawn = FALSE;

CCSprite *story1_2AllTrollsSprite;
BOOL story1_2AllTrollsDrawn = FALSE;

int story1_2CurrentScore = 0;
int story1_2PrevScore = 0;
int story1_2ScoreInt = 0;
int story1_2LivesRemaining = 0;
int story1_2TrollsRemaining = 70;
int story1_2TrollsRemInt = 0;
int story1_2TrollsPrevRem = 70;

float story1_2TrollRespawnInterval = 0.0f;

float story1_2TrollTLResetTimer = 0.5f;
float story1_2TrollTMResetTimer = 0.8f;
float story1_2TrollTRResetTimer = 0.2f;
float story1_2TrollMLResetTimer = 0.4f;
float story1_2TrollMMResetTimer = 0.1f;
float story1_2TrollMRResetTimer = 0.9f;
float story1_2TrollBLResetTimer = 0.3f;
float story1_2TrollBMResetTimer = 0.7f;
float story1_2TrollBRResetTimer = 0.0f;

float story1_2TrollTLTimeInPlay = 0.0f;
float story1_2TrollTMTimeInPlay = 0.0f;
float story1_2TrollTRTimeInPlay = 0.0f;
float story1_2TrollMLTimeInPlay = 0.0f;
float story1_2TrollMMTimeInPlay = 0.0f;
float story1_2TrollMRTimeInPlay = 0.0f;
float story1_2TrollBLTimeInPlay = 0.0f;
float story1_2TrollBMTimeInPlay = 0.0f;
float story1_2TrollBRTimeInPlay = 0.0f;

float story1_2TrollTLFadingOutTimer = 0.0f;
float story1_2TrollTMFadingOutTimer = 0.0f;
float story1_2TrollTRFadingOutTimer = 0.0f;
float story1_2TrollMLFadingOutTimer = 0.0f;
float story1_2TrollMMFadingOutTimer = 0.0f;
float story1_2TrollMRFadingOutTimer = 0.0f;
float story1_2TrollBLFadingOutTimer = 0.0f;
float story1_2TrollBMFadingOutTimer = 0.0f;
float story1_2TrollBRFadingOutTimer = 0.0f;

BOOL story1_2TrollTLTouched = FALSE;
BOOL story1_2TrollTMTouched = FALSE;
BOOL story1_2TrollTRTouched = FALSE;
BOOL story1_2TrollMLTouched = FALSE;
BOOL story1_2TrollMMTouched = FALSE;
BOOL story1_2TrollMRTouched = FALSE;
BOOL story1_2TrollBLTouched = FALSE;
BOOL story1_2TrollBMTouched = FALSE;
BOOL story1_2TrollBRTouched = FALSE;

BOOL story1_2TrollTLInPlay = FALSE;
BOOL story1_2TrollTMInPlay = FALSE;
BOOL story1_2TrollTRInPlay = FALSE;
BOOL story1_2TrollMLInPlay = FALSE;
BOOL story1_2TrollMMInPlay = FALSE;
BOOL story1_2TrollMRInPlay = FALSE;
BOOL story1_2TrollBLInPlay = FALSE;
BOOL story1_2TrollBMInPlay = FALSE;
BOOL story1_2TrollBRInPlay = FALSE;

BOOL story1_2StartTrollTLDeathAnim = FALSE;
BOOL story1_2StartTrollTMDeathAnim = FALSE;
BOOL story1_2StartTrollTRDeathAnim = FALSE;
BOOL story1_2StartTrollMLDeathAnim = FALSE;
BOOL story1_2StartTrollMMDeathAnim = FALSE;
BOOL story1_2StartTrollMRDeathAnim = FALSE;
BOOL story1_2StartTrollBLDeathAnim = FALSE;
BOOL story1_2StartTrollBMDeathAnim = FALSE;
BOOL story1_2StartTrollBRDeathAnim = FALSE;

BOOL story1_2StartTrollTLMissed = FALSE;
BOOL story1_2StartTrollTMMissed = FALSE;
BOOL story1_2StartTrollTRMissed = FALSE;
BOOL story1_2StartTrollMLMissed = FALSE;
BOOL story1_2StartTrollMMMissed = FALSE;
BOOL story1_2StartTrollMRMissed = FALSE;
BOOL story1_2StartTrollBLMissed = FALSE;
BOOL story1_2StartTrollBMMissed = FALSE;
BOOL story1_2StartTrollBRMissed = FALSE;

BOOL story1_2StartRound = FALSE;
BOOL story1_2DialogueTouched = FALSE;

ccTime story1_2GameTime = 0.0f;
int story1_2Tick = 0;
BOOL story1_2IntroFinished = FALSE;
BOOL story1_2AllChange = FALSE;

@implementation StoryMode1_2

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode1_2 *layer = [StoryMode1_2 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story1_2StatsLayer = [CCLayer node];
        story1_2SpriteFrontLayer = [CCLayer node];
        story1_2SpriteMidLayer = [CCLayer node];
        story1_2SpriteBackLayer = [CCLayer node];
        
        story1_2Background = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        story1_2Background.position = ccp(240, 160);
        
        [self addChild: story1_2Background];
        [self addChild: story1_2StatsLayer];
        [self addChild: story1_2SpriteBackLayer];
        [self addChild: story1_2SpriteFrontLayer];
        [self addChild: story1_2SpriteMidLayer];
        
        [self loadstory1_2Sprites];
        [self loadstory1_2Text];
        [self loadstory1_2Dialogue];
    }
    
    story1_2TrollTLColour = -1;
    story1_2TrollTMColour = -1;
    story1_2TrollTRColour = -1;
    story1_2TrollMLColour = -1;
    story1_2TrollMMColour = -1;
    story1_2TrollMRColour = -1;
    story1_2TrollBLColour = -1;
    story1_2TrollBMColour = -1;
    story1_2TrollBRColour = -1;
    story1_2TimeUpDrawn = FALSE;
    story1_2AllTrollsDrawn = FALSE;
    story1_2ScoreInt = 0;
    story1_2TrollsRemaining = 70;
    story1_2TrollsRemInt = 0;
    story1_2TrollsPrevRem = 70;
    story1_2TrollRespawnInterval = 0.0f;
    story1_2TrollTLResetTimer = 0.5f;
    story1_2TrollTMResetTimer = 0.8f;
    story1_2TrollTRResetTimer = 0.2f;
    story1_2TrollMLResetTimer = 0.4f;
    story1_2TrollMMResetTimer = 0.1f;
    story1_2TrollMRResetTimer = 0.9f;
    story1_2TrollBLResetTimer = 0.3f;
    story1_2TrollBMResetTimer = 0.7f;
    story1_2TrollBRResetTimer = 0.0f;
    story1_2TrollTLTimeInPlay = 0.0f;
    story1_2TrollTMTimeInPlay = 0.0f;
    story1_2TrollTRTimeInPlay = 0.0f;
    story1_2TrollMLTimeInPlay = 0.0f;
    story1_2TrollMMTimeInPlay = 0.0f;
    story1_2TrollMRTimeInPlay = 0.0f;
    story1_2TrollBLTimeInPlay = 0.0f;
    story1_2TrollBMTimeInPlay = 0.0f;
    story1_2TrollBRTimeInPlay = 0.0f;
    story1_2TrollTLFadingOutTimer = 0.0f;
    story1_2TrollTMFadingOutTimer = 0.0f;
    story1_2TrollTRFadingOutTimer = 0.0f;
    story1_2TrollMLFadingOutTimer = 0.0f;
    story1_2TrollMMFadingOutTimer = 0.0f;
    story1_2TrollMRFadingOutTimer = 0.0f;
    story1_2TrollBLFadingOutTimer = 0.0f;
    story1_2TrollBMFadingOutTimer = 0.0f;
    story1_2TrollBRFadingOutTimer = 0.0f;
    story1_2TrollTLTouched = FALSE;
    story1_2TrollTMTouched = FALSE;
    story1_2TrollTRTouched = FALSE;
    story1_2TrollMLTouched = FALSE;
    story1_2TrollMMTouched = FALSE;
    story1_2TrollMRTouched = FALSE;
    story1_2TrollBLTouched = FALSE;
    story1_2TrollBMTouched = FALSE;
    story1_2TrollBRTouched = FALSE;
    story1_2TrollTLInPlay = FALSE;
    story1_2TrollTMInPlay = FALSE;
    story1_2TrollTRInPlay = FALSE;
    story1_2TrollMLInPlay = FALSE;
    story1_2TrollMMInPlay = FALSE;
    story1_2TrollMRInPlay = FALSE;
    story1_2TrollBLInPlay = FALSE;
    story1_2TrollBMInPlay = FALSE;
    story1_2TrollBRInPlay = FALSE;
    story1_2StartTrollTLDeathAnim = FALSE;
    story1_2StartTrollTMDeathAnim = FALSE;
    story1_2StartTrollTRDeathAnim = FALSE;
    story1_2StartTrollMLDeathAnim = FALSE;
    story1_2StartTrollMMDeathAnim = FALSE;
    story1_2StartTrollMRDeathAnim = FALSE;
    story1_2StartTrollBLDeathAnim = FALSE;
    story1_2StartTrollBMDeathAnim = FALSE;
    story1_2StartTrollBRDeathAnim = FALSE;
    story1_2StartTrollTLMissed = FALSE;
    story1_2StartTrollTMMissed = FALSE;
    story1_2StartTrollTRMissed = FALSE;
    story1_2StartTrollMLMissed = FALSE;
    story1_2StartTrollMMMissed = FALSE;
    story1_2StartTrollMRMissed = FALSE;
    story1_2StartTrollBLMissed = FALSE;
    story1_2StartTrollBMMissed = FALSE;
    story1_2StartTrollBRMissed = FALSE;
    story1_2StartRound = FALSE;
    story1_2DialogueTouched = FALSE;
    story1_2Tick = 0;
    story1_2IntroFinished = FALSE;
    story1_2AllChange = FALSE;
    story1_2GameTime = 0.0f;
    
    story1_2CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story1_2PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story1_2LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story1_2StartRound){
        if(story1_2DialogueTouched){
            story1_2DialogueSprite.position = ccp(-1000, -1000);
            story1_2CharacterSprite.position = ccp(-1000, -1000);
            story1_2CharacterName.position = ccp(-1000, -1000);
            story1_2TapToContinue.position = ccp(-1000, -1000);
            story1_2DialogueTouched = FALSE;
            story1_2StartRound = TRUE;
        }
    }
    else{
        story1_2GameTime += dt;
        
        if (story1_2GameTime < 5 && story1_2IntroFinished == NO){
            if(story1_2GameTime > 0 && story1_2GameTime < 1.5){
                if(story1_2Tick == 0){
                    story1_2Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story1_2Intro3.position = ccp(240, 160);
                    [self addChild: story1_2Intro3];
                    story1_2Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story1_2GameTime > 1.5 && story1_2GameTime < 2.5){
                if(story1_2Tick == 1) {
                    story1_2Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story1_2Intro2.position = ccp(240, 160);
                    [self addChild: story1_2Intro2];
                    story1_2Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story1_2Tick == 2){
                    [self removeChild: story1_2Intro3 cleanup:YES];
                    story1_2Tick = 3;
                }
            }
            else if(story1_2GameTime > 2.5 && story1_2GameTime < 3.5){
                if(story1_2Tick == 3){
                    story1_2Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story1_2Intro1.position = ccp(240, 160);
                    [self addChild: story1_2Intro1];
                    story1_2Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story1_2Tick == 4) {
                    [self removeChild: story1_2Intro2 cleanup:YES];
                    story1_2Tick = 5;
                }
            }
            else if(story1_2GameTime > 3.5 && story1_2GameTime < 4.5){
                if(story1_2Tick == 5){
                    story1_2Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story1_2Intro0.position = ccp(240, 160);
                    [self addChild: story1_2Intro0];
                    story1_2Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story1_2Tick == 6) {
                    [self removeChild: story1_2Intro1 cleanup:YES];
                    story1_2Tick = 7;
                }
            }
            else{
                if(story1_2Tick == 7){
                    story1_2IntroFinished = YES;
                    [self removeChild: story1_2Intro0 cleanup:YES];
                    story1_2Tick = 8;
                    story1_2AllChange = TRUE;
                }
            }
        }
        else if(story1_2Tick == 8){
            if(story1_2AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_1.mp3"];
                [self drawstory1_2Elements];
                story1_2AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story1_2TrollTLInPlay){
                if(story1_2TrollTLTimeInPlay >= 5.0f){
                    story1_2StartTrollTLMissed = TRUE;
                    story1_2TrollTopLeftChat.position = ccp(-1000, -1000);
                    story1_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollTLTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollTLResetTimer -= dt;
                if(story1_2TrollTLResetTimer <= 0){
                    story1_2SpriteTopLeftMenu.position = ccp(80, 250);
                    story1_2TrollTopLeftChat.position = ccp(112, 260);
                    story1_2TrollTLInPlay = TRUE;
                    story1_2TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollTMInPlay){
                if(story1_2TrollTMTimeInPlay >= 5.0f){
                    story1_2StartTrollTMMissed = TRUE;
                    story1_2TrollTopMidChat.position = ccp(-1000, -1000);
                    story1_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollTMTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollTMResetTimer -= dt;
                if(story1_2TrollTMResetTimer <= 0){
                    story1_2SpriteTopMidMenu.position = ccp(240, 250);
                    story1_2TrollTopMidChat.position = ccp(272, 260);
                    story1_2TrollTMInPlay = TRUE;
                    story1_2TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollTRInPlay){
                if(story1_2TrollTRTimeInPlay >= 5.0f){
                    story1_2StartTrollTRMissed = TRUE;
                    story1_2TrollTopRightChat.position = ccp(-1000, -1000);
                    story1_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollTRTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollTRResetTimer -= dt;
                if(story1_2TrollTRResetTimer <= 0){
                    story1_2SpriteTopRightMenu.position = ccp(400, 250);
                    story1_2TrollTopRightChat.position = ccp(432, 260);
                    story1_2TrollTRInPlay = TRUE;
                    story1_2TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollMLInPlay){
                if(story1_2TrollMLTimeInPlay >= 5.0f){
                    story1_2StartTrollMLMissed = TRUE;
                    story1_2TrollMidLeftChat.position = ccp(-1000, -1000);
                    story1_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollMLTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollMLResetTimer -= dt;
                if(story1_2TrollMLResetTimer <= 0){
                    story1_2SpriteMidLeftMenu.position = ccp(80, 170);
                    story1_2TrollMidLeftChat.position = ccp(112, 180);
                    story1_2TrollMLInPlay = TRUE;
                    story1_2TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollMMInPlay){
                if(story1_2TrollMMTimeInPlay >= 5.0f){
                    story1_2StartTrollMMMissed = TRUE;
                    story1_2TrollMidMidChat.position = ccp(-1000, -1000);
                    story1_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollMMTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollMMResetTimer -= dt;
                if(story1_2TrollMMResetTimer <= 0){
                    story1_2SpriteMidMidMenu.position = ccp(240, 170);
                    story1_2TrollMidMidChat.position = ccp(272, 180);
                    story1_2TrollMMInPlay = TRUE;
                    story1_2TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollMRInPlay){
                if(story1_2TrollMRTimeInPlay >= 5.0f){
                    story1_2StartTrollMRMissed = TRUE;
                    story1_2TrollMidRightChat.position = ccp(-1000, -1000);
                    story1_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story1_2TrollMRTimeInPlay += dt;
            }
            else{
                story1_2TrollMRResetTimer -= dt;
                if(story1_2TrollMRResetTimer <= 0){
                    story1_2SpriteMidRightMenu.position = ccp(400, 170);
                    story1_2TrollMidRightChat.position = ccp(432, 180);
                    story1_2TrollMRInPlay = TRUE;
                    story1_2TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollBLInPlay){
                if(story1_2TrollBLTimeInPlay >= 5.0f){
                    story1_2StartTrollBLMissed = TRUE;
                    story1_2TrollBotLeftChat.position = ccp(-1000, -1000);
                    story1_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollBLTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollBLResetTimer -= dt;
                if(story1_2TrollBLResetTimer <= 0){
                    story1_2SpriteBotLeftMenu.position = ccp(80, 90);
                    story1_2TrollBotLeftChat.position = ccp(112, 100);
                    story1_2TrollBLInPlay = TRUE;
                    story1_2TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollBMInPlay){
                if(story1_2TrollBMTimeInPlay >= 5.0f){
                    story1_2StartTrollBMMissed = TRUE;
                    story1_2TrollBotMidChat.position = ccp(-1000, -1000);
                    story1_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollBMTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollBMResetTimer -= dt;
                if(story1_2TrollBMResetTimer <= 0){
                    story1_2SpriteBotMidMenu.position = ccp(240, 90);
                    story1_2TrollBotMidChat.position = ccp(272, 100);
                    story1_2TrollBMInPlay = TRUE;
                    story1_2TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_2TrollBRInPlay){
                if(story1_2TrollBRTimeInPlay >= 5.0f){
                    story1_2StartTrollBRMissed = TRUE;
                    story1_2TrollBotRightChat.position = ccp(-1000, -1000);
                    story1_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_2TrollBRTimeInPlay += dt;
                }
            }
            else{
                story1_2TrollBRResetTimer -= dt;
                if(story1_2TrollBRResetTimer <= 0){
                    story1_2SpriteBotRightMenu.position = ccp(400, 90);
                    story1_2TrollBotRightChat.position = ccp(432, 100);
                    story1_2TrollBRInPlay = TRUE;
                    story1_2TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story1_2TrollTLTouched){
                story1_2StartTrollTLDeathAnim = TRUE;
                story1_2TrollTLTouched = FALSE;
                if(story1_2TrollTLColour == 0){
                    [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLDeadGreen];
                }
                else if(story1_2TrollTLColour == 1){
                    [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLDeadGrey];
                }
                else if(story1_2TrollTLColour == 2){
                    [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLDeadPurple];
                }
                
                story1_2TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story1_2TrollTMTouched){
                story1_2StartTrollTMDeathAnim = TRUE;
                story1_2TrollTMTouched = FALSE;
                if(story1_2TrollTMColour == 0){
                    [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMDeadGreen];
                }
                else if(story1_2TrollTMColour == 1){
                    [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMDeadGrey];
                }
                else if(story1_2TrollTMColour == 2){
                    [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMDeadPurple];
                }
                
                story1_2TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story1_2TrollTRTouched){
                story1_2StartTrollTRDeathAnim = TRUE;
                story1_2TrollTRTouched = FALSE;
                if(story1_2TrollTRColour == 0){
                    [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRDeadGreen];
                }
                else if(story1_2TrollTRColour == 1){
                    [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRDeadGrey];
                }
                else if(story1_2TrollTRColour == 2){
                    [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRDeadPurple];
                }
                
                story1_2TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story1_2TrollMLTouched){
                story1_2StartTrollMLDeathAnim = TRUE;
                story1_2TrollMLTouched = FALSE;
                if(story1_2TrollMLColour == 0){
                    [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLDeadGreen];
                }
                else if(story1_2TrollMLColour == 1){
                    [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLDeadGrey];
                }
                else if(story1_2TrollMLColour == 2){
                    [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLDeadPurple];
                }
                
                story1_2TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story1_2TrollMMTouched){
                story1_2StartTrollMMDeathAnim = TRUE;
                story1_2TrollMMTouched = FALSE;
                if(story1_2TrollMMColour == 0){
                    [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMDeadGreen];
                }
                else if(story1_2TrollMMColour == 1){
                    [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMDeadGrey];
                }
                else if(story1_2TrollMMColour == 2){
                    [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMDeadPurple];
                }
                
                story1_2TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story1_2TrollMRTouched){
                story1_2StartTrollMRDeathAnim = TRUE;
                story1_2TrollMRTouched = FALSE;
                if(story1_2TrollMRColour == 0){
                    [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRDeadGreen];
                }
                else if(story1_2TrollMRColour == 1){
                    [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRDeadGrey];
                }
                else if(story1_2TrollMRColour == 2){
                    [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRDeadPurple];
                }
                
                story1_2TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story1_2TrollBLTouched){
                story1_2StartTrollBLDeathAnim = TRUE;
                story1_2TrollBLTouched = FALSE;
                if(story1_2TrollBLColour == 0){
                    [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLDeadGreen];
                }
                else if(story1_2TrollBLColour == 1){
                    [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLDeadGrey];
                }
                else if(story1_2TrollBLColour == 2){
                    [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLDeadPurple];
                }
                
                story1_2TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story1_2TrollBMTouched){
                story1_2StartTrollBMDeathAnim = TRUE;
                story1_2TrollBMTouched = FALSE;
                if(story1_2TrollBMColour == 0){
                    [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMDeadGreen];
                }
                else if(story1_2TrollBMColour == 1){
                    [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMDeadGrey];
                }
                else if(story1_2TrollBMColour == 2){
                    [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMDeadPurple];
                }
                
                story1_2TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story1_2TrollBRTouched){
                story1_2StartTrollBRDeathAnim = TRUE;
                story1_2TrollBRTouched = FALSE;
                if(story1_2TrollBRColour == 0){
                    [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRDeadGreen];
                }
                else if(story1_2TrollBRColour == 1){
                    [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRDeadGrey];
                }
                else if(story1_2TrollBRColour == 2){
                    [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRDeadPurple];
                }
                
                story1_2TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story1_2TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story1_2StartTrollTLDeathAnim){
                if(story1_2TrollTLFadingOutTimer < 0.25f){
                    story1_2TrollTLFadingOutTimer += dt;
                    story1_2SpriteTopLeftMenu.position = ccp(story1_2SpriteTopLeftMenu.position.x, story1_2SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollTLDeathAnim = FALSE;
                    story1_2TrollTLTimeInPlay = 0.0f;
                    story1_2TrollTLFadingOutTimer = 0.0f;
                    story1_2TrollTLInPlay = FALSE;
                    story1_2TrollTLResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story1_2TrollTLColour == 0){
                        [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLGreen];
                    }
                    else if(story1_2TrollTLColour == 1){
                        [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLGrey];
                    }
                    else if(story1_2TrollTLColour == 2){
                        [story1_2TrollSpriteTopLeft setNormalImage:story1_2TrollSpriteTLPurple];
                    }
                    
                    story1_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollTMDeathAnim){
                if(story1_2TrollTMFadingOutTimer < 0.25f){
                    story1_2TrollTMFadingOutTimer += dt;
                    story1_2SpriteTopMidMenu.position = ccp(story1_2SpriteTopMidMenu.position.x, story1_2SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollTMDeathAnim = FALSE;
                    story1_2TrollTMTimeInPlay = 0.0f;
                    story1_2TrollTMFadingOutTimer = 0.0f;
                    story1_2TrollTMInPlay = FALSE;
                    story1_2TrollTMResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story1_2TrollTMColour == 0){
                        [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMGreen];
                    }
                    else if(story1_2TrollTMColour == 1){
                        [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMGrey];
                    }
                    else if(story1_2TrollTMColour == 2){
                        [story1_2TrollSpriteTopMid setNormalImage:story1_2TrollSpriteTMPurple];
                    }
                    
                    story1_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollTRDeathAnim){
                if(story1_2TrollTRFadingOutTimer < 0.25f){
                    story1_2TrollTRFadingOutTimer += dt;
                    story1_2SpriteTopRightMenu.position = ccp(story1_2SpriteTopRightMenu.position.x, story1_2SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollTRDeathAnim = FALSE;
                    story1_2TrollTRTimeInPlay = 0.0f;
                    story1_2TrollTRFadingOutTimer = 0.0f;
                    story1_2TrollTRInPlay = FALSE;
                    story1_2TrollTRResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story1_2TrollTRColour == 0){
                        [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRGreen];
                    }
                    else if(story1_2TrollTRColour == 1){
                        [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRGrey];
                    }
                    else if(story1_2TrollTRColour == 2){
                        [story1_2TrollSpriteTopRight setNormalImage:story1_2TrollSpriteTRPurple];
                    }
                    
                    story1_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollMLDeathAnim){
                if(story1_2TrollMLFadingOutTimer < 0.25f){
                    story1_2TrollMLFadingOutTimer += dt;
                    story1_2SpriteMidLeftMenu.position = ccp(story1_2SpriteMidLeftMenu.position.x, story1_2SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollMLDeathAnim = FALSE;
                    story1_2TrollMLTimeInPlay = 0.0f;
                    story1_2TrollMLFadingOutTimer = 0.0f;
                    story1_2TrollMLInPlay = FALSE;
                    story1_2TrollMLResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story1_2TrollMLColour == 0){
                        [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLGreen];
                    }
                    else if(story1_2TrollMLColour == 1){
                        [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLGrey];
                    }
                    else if(story1_2TrollMLColour == 2){
                        [story1_2TrollSpriteMidLeft setNormalImage:story1_2TrollSpriteMLPurple];
                    }
                    
                    story1_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollMMDeathAnim){
                if(story1_2TrollMMFadingOutTimer < 0.25f){
                    story1_2TrollMMFadingOutTimer += dt;
                    story1_2SpriteMidMidMenu.position = ccp(story1_2SpriteMidMidMenu.position.x, story1_2SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollMMDeathAnim = FALSE;
                    story1_2TrollMMTimeInPlay = 0.0f;
                    story1_2TrollMMFadingOutTimer = 0.0f;
                    story1_2TrollMMInPlay = FALSE;
                    story1_2TrollMMResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story1_2TrollMMColour == 0){
                        [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMGreen];
                    }
                    else if(story1_2TrollMMColour == 1){
                        [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMGrey];
                    }
                    else if(story1_2TrollMMColour == 2){
                        [story1_2TrollSpriteMidMid setNormalImage:story1_2TrollSpriteMMPurple];
                    }
                    
                    story1_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollMRDeathAnim){
                if(story1_2TrollMRFadingOutTimer < 0.25f){
                    story1_2TrollMRFadingOutTimer += dt;
                    story1_2SpriteMidRightMenu.position = ccp(story1_2SpriteMidRightMenu.position.x, story1_2SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollMRDeathAnim = FALSE;
                    story1_2TrollMRTimeInPlay = 0.0f;
                    story1_2TrollMRFadingOutTimer = 0.0f;
                    story1_2TrollMRInPlay = FALSE;
                    story1_2TrollMRResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story1_2TrollMRColour == 0){
                        [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRGreen];
                    }
                    else if(story1_2TrollMRColour == 1){
                        [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRGrey];
                    }
                    else if(story1_2TrollMRColour == 2){
                        [story1_2TrollSpriteMidRight setNormalImage:story1_2TrollSpriteMRPurple];
                    }
                    
                    story1_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollBLDeathAnim){
                if(story1_2TrollBLFadingOutTimer < 0.25f){
                    story1_2TrollBLFadingOutTimer += dt;
                    story1_2SpriteBotLeftMenu.position = ccp(story1_2SpriteBotLeftMenu.position.x, story1_2SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollBLDeathAnim = FALSE;
                    story1_2TrollBLTimeInPlay = 0.0f;
                    story1_2TrollBLFadingOutTimer = 0.0f;
                    story1_2TrollBLInPlay = FALSE;
                    story1_2TrollBLResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story1_2TrollBLColour == 0){
                        [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLGreen];
                    }
                    else if(story1_2TrollBLColour == 1){
                        [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLGrey];
                    }
                    else if(story1_2TrollBLColour == 2){
                        [story1_2TrollSpriteBotLeft setNormalImage:story1_2TrollSpriteBLPurple];
                    }
                    
                    story1_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollBMDeathAnim){
                if(story1_2TrollBMFadingOutTimer < 0.25f){
                    story1_2TrollBMFadingOutTimer += dt;
                    story1_2SpriteBotMidMenu.position = ccp(story1_2SpriteBotMidMenu.position.x, story1_2SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollBMDeathAnim = FALSE;
                    story1_2TrollBMTimeInPlay = 0.0f;
                    story1_2TrollBMFadingOutTimer = 0.0f;
                    story1_2TrollBMInPlay = FALSE;
                    story1_2TrollBMResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story1_2TrollBMColour == 0){
                        [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMGreen];
                    }
                    else if(story1_2TrollBMColour == 1){
                        [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMGrey];
                    }
                    else if(story1_2TrollBMColour == 2){
                        [story1_2TrollSpriteBotMid setNormalImage:story1_2TrollSpriteBMPurple];
                    }
                    
                    story1_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_2StartTrollBRDeathAnim){
                if(story1_2TrollBRFadingOutTimer < 0.25f){
                    story1_2TrollBRFadingOutTimer += dt;
                    story1_2SpriteBotRightMenu.position = ccp(story1_2SpriteBotRightMenu.position.x, story1_2SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_2StartTrollBRDeathAnim = FALSE;
                    story1_2TrollBRTimeInPlay = 0.0f;
                    story1_2TrollBRFadingOutTimer = 0.0f;
                    story1_2TrollBRInPlay = FALSE;
                    story1_2TrollBRResetTimer = story1_2TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_2TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story1_2TrollBRColour == 0){
                        [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRGreen];
                    }
                    else if(story1_2TrollBRColour == 1){
                        [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRGrey];
                    }
                    else if(story1_2TrollBRColour == 2){
                        [story1_2TrollSpriteBotRight setNormalImage:story1_2TrollSpriteBRPurple];
                    }
                    
                    story1_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story1_2StartTrollTLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollTLMissed = FALSE;
                story1_2TrollTLTimeInPlay = 0.0f;
                story1_2TrollTLInPlay = FALSE;
                story1_2TrollTLResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollTMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollTMMissed = FALSE;
                story1_2TrollTMTimeInPlay = 0.0f;
                story1_2TrollTMInPlay = FALSE;
                story1_2TrollTMResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollTRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollTRMissed = FALSE;
                story1_2TrollTRTimeInPlay = 0.0f;
                story1_2TrollTRInPlay = FALSE;
                story1_2TrollTRResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollMLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollMLMissed = FALSE;
                story1_2TrollMLTimeInPlay = 0.0f;
                story1_2TrollMLInPlay = FALSE;
                story1_2TrollMLResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollMMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollMMMissed = FALSE;
                story1_2TrollMMTimeInPlay = 0.0f;
                story1_2TrollMMInPlay = FALSE;
                story1_2TrollMMResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollMRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollMRMissed = FALSE;
                story1_2TrollMRTimeInPlay = 0.0f;
                story1_2TrollMRInPlay = FALSE;
                story1_2TrollMRResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollBLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollBLMissed = FALSE;
                story1_2TrollBLTimeInPlay = 0.0f;
                story1_2TrollBLInPlay = FALSE;
                story1_2TrollBLResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollBMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollBMMissed = FALSE;
                story1_2TrollBMTimeInPlay = 0.0f;
                story1_2TrollBMInPlay = FALSE;
                story1_2TrollBMResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            if(story1_2StartTrollBRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_2TrollRespawnInterval = (float)i / 100.0f;
                story1_2StartTrollBRMissed = FALSE;
                story1_2TrollBRTimeInPlay = 0.0f;
                story1_2TrollBRInPlay = FALSE;
                story1_2TrollBRResetTimer = story1_2TrollRespawnInterval;
                story1_2LivesRemaining--;
                
                if(story1_2LivesRemaining == 2){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 1){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_2LivesRemaining == 0){
                    story1_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_2Tick = 9;
                }
            }
            
            story1_2ScoreInt = story1_2CurrentScore;
            
            //SCORE CALCULATIONS
            if(story1_2LivesRemaining >= 0) {
                if(story1_2CurrentScore != story1_2PrevScore){
                    if(story1_2CurrentScore >= 0 && story1_2CurrentScore < 10){
                        if(story1_2CurrentScore == 0){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                        }
                        else if(story1_2CurrentScore == 1){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                        }
                        else if(story1_2CurrentScore == 2){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                        }
                        else if(story1_2CurrentScore == 3){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                        }
                        else if(story1_2CurrentScore == 4){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                        }
                        else if(story1_2CurrentScore == 5){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                        }
                        else if(story1_2CurrentScore == 6){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                        }
                        else if(story1_2CurrentScore == 7){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                        }
                        else if(story1_2CurrentScore == 8){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                        }
                        else if(story1_2CurrentScore == 9){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                    }
                    
                    else if(story1_2CurrentScore >= 10 && story1_2CurrentScore <= 99){
                        int lSDS = story1_2ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                        }
                        
                        if(story1_2CurrentScore >= 10 && story1_2CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
                        }
                        else if(story1_2CurrentScore >= 20 && story1_2CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
                        }
                        else if(story1_2CurrentScore >= 30 && story1_2CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
                        }
                        else if(story1_2CurrentScore >= 40 && story1_2CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
                        }
                        else if(story1_2CurrentScore >= 50 && story1_2CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
                        }
                        else if(story1_2CurrentScore >= 60 && story1_2CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
                        }
                        else if(story1_2CurrentScore >= 70 && story1_2CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
                        }
                        else if(story1_2CurrentScore >= 80 && story1_2CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
                        }
                        else if(story1_2CurrentScore >= 90 && story1_2CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
                    }
                    
                    else if(story1_2CurrentScore >= 100 && story1_2CurrentScore <= 999){
                        int story1_2Count = 0;
                        while(story1_2Count < 2){
                            int lSDSs = story1_2ScoreInt % 10;
                            if(story1_2Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                                }
                            }
                            else if(story1_2Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
                                }
                            }
                            story1_2ScoreInt /= 10;
                            story1_2Count++;
                        }
                        
                        if(story1_2CurrentScore >= 100 && story1_2CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber1_2];
                        }
                        else if(story1_2CurrentScore >= 200 && story1_2CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber2_2];
                        }
                        else if(story1_2CurrentScore >= 300 && story1_2CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber3_2];
                        }
                        else if(story1_2CurrentScore >= 400 && story1_2CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber4_2];
                        }
                        else if(story1_2CurrentScore >= 500 && story1_2CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber5_2];
                        }
                        else if(story1_2CurrentScore >= 600 && story1_2CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber6_2];
                        }
                        else if(story1_2CurrentScore >= 700 && story1_2CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber7_2];
                        }
                        else if(story1_2CurrentScore >= 800 && story1_2CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber8_2];
                        }
                        else if(story1_2CurrentScore >= 900 && story1_2CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
                    }
                    
                    else if(story1_2CurrentScore >= 1000 && story1_2CurrentScore <= 9999){
                        int story1_2Count = 0;
                        while(story1_2Count < 3){
                            int lSDSsS = story1_2ScoreInt % 10;
                            if(story1_2Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                                }
                            }
                            else if(story1_2Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
                                }
                            }
                            else if(story1_2Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber9_2];
                                }
                            }
                            story1_2ScoreInt /= 10;
                            story1_2Count++;
                            
                            if(story1_2CurrentScore >= 1000 && story1_2CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber1_1];
                            }
                            else if(story1_2CurrentScore >= 2000 && story1_2CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber2_1];
                            }
                            else if(story1_2CurrentScore >= 3000 && story1_2CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber3_1];
                            }
                            else if(story1_2CurrentScore >= 4000 && story1_2CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber4_1];
                            }
                            else if(story1_2CurrentScore >= 5000 && story1_2CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber5_1];
                            }
                            else if(story1_2CurrentScore >= 6000 && story1_2CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber6_1];
                            }
                            else if(story1_2CurrentScore >= 7000 && story1_2CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber7_1];
                            }
                            else if(story1_2CurrentScore >= 8000 && story1_2CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber8_1];
                            }
                            else if(story1_2CurrentScore >= 9000 && story1_2CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story1_2CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story1_2TrollsRemInt = story1_2TrollsRemaining;
            
            if(story1_2TrollsRemaining > 0){
                if(story1_2TrollsRemaining != story1_2TrollsPrevRem){
                    if(story1_2TrollsRemaining >= 0 && story1_2TrollsRemaining < 10){
                        if(story1_2TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber0_3];
                        }
                        else if(story1_2TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber1_2];
                        }
                        else if(story1_2TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber2_2];
                        }
                        else if(story1_2TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber3_2];
                        }
                        else if(story1_2TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber4_2];
                        }
                        else if(story1_2TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber5_2];
                        }
                        else if(story1_2TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber6_1];
                        }
                        else if(story1_2TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber7_1];
                        }
                        else if(story1_2TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber8_1];
                        }
                        else if(story1_2TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_2TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber0_2];
                    }
                    
                    else if(story1_2TrollsRemaining >= 10 && story1_2TrollsRemaining <= 99){
                        int lSDS = story1_2TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber1_2];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber8_1];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber9_1];
                        }
                        
                        if(story1_2TrollsRemaining >= 10 && story1_2TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber1_1];
                        }
                        else if(story1_2TrollsRemaining >= 20 && story1_2TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber2_1];
                        }
                        else if(story1_2TrollsRemaining >= 30 && story1_2TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber3_1];
                        }
                        else if(story1_2TrollsRemaining >= 40 && story1_2TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber4_1];
                        }
                        else if(story1_2TrollsRemaining >= 50 && story1_2TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber5_1];
                        }
                        else if(story1_2TrollsRemaining >= 60 && story1_2TrollsRemaining <= 69){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber6_1];
                        }
                        else if(story1_2TrollsRemaining >= 70 && story1_2TrollsRemaining <= 79){
                            [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber7_1];
                        }
                        
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_2TrollsLeftNumber0_1];
                    }
                    
                    else if(story1_2TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_2TrollsLeftNumber0_1];
                    }
                    
                    story1_2TrollsPrevRem = story1_2TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_2TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_2TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story1_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_2TrollsLeftNumber0_1];
                story1_2Tick = 10;
            }
            
        }
        else if(story1_2Tick == 9){
            if(!story1_2TimeUpDrawn){
                story1_2TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story1_2TimeUpSprite.position = ccp(240, 836);
                [self addChild: story1_2TimeUpSprite];
                [self scheduleOnce:@selector(story1_2GameOver:) delay:2];
                story1_2TimeUpDrawn = TRUE;
            }
            else{
                if(story1_2TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story1_2TimeUpSprite.position = ccp(story1_2TimeUpSprite.position.x, story1_2TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story1_2Tick == 10){
            //LEVEL COMPLETE
            if(!story1_2AllTrollsDrawn){
                story1_2AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/boss_incoming_screen_640.png"];
                story1_2AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story1_2AllTrollsSprite];
                [self scheduleOnce:@selector(story1_2LevelComplete:) delay:5];
                story1_2AllTrollsDrawn = TRUE;
                story1_2SpriteBackLayer.position = ccp(-1000, -1000);
                story1_2SpriteMidLayer.position = ccp(-1000, -1000);
                story1_2SpriteFrontLayer.position = ccp(-1000, -1000);
            }
            else{
                if(story1_2AllTrollsSprite.position.x >= 240){
                    //DO NOTHING
                }
                else{
                    story1_2AllTrollsSprite.position = ccp(story1_2AllTrollsSprite.position.x +10, story1_2AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadstory1_2Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"database"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"granquier"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"kappa"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"kreytos"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"mantin"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"orksome"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"salty"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"wooferz"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charTwo"] isEqualToString:@"zeke"]){
        story1_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story1_2CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        story1_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_2.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story1_2TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story1_2DialogueMenu = [CCMenu menuWithItems: story1_2DialogueSprite, nil];
    
    story1_2CharacterSprite.position = ccp(25, 100);
    story1_2CharacterName.position = ccp(120, 86);
    story1_2DialogueSprite.position = ccp(0, -120);
    story1_2TapToContinue.position = ccp(300, 95);
    
    [self addChild: story1_2CharacterSprite];
    [self addChild: story1_2CharacterName];
    [self addChild: story1_2TapToContinue];
    [self addChild: story1_2DialogueMenu];
}

-(void) loadstory1_2Sprites{
    story1_2VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_2VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story1_2VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    story1_2VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    story1_2VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(topRightExtraTouched:)];
    
    story1_2VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midLeftExtraTouched:)];
    
    story1_2VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    story1_2VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midRightExtraTouched:)];
    
    story1_2VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botLeftExtraTouched:)];
    
    story1_2VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    story1_2VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(botRightExtraTouched:)];
    
    story1_2VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story1_2VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story1_2VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story1_2VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story1_2VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story1_2VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story1_2VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story1_2VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story1_2VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story1_2VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story1_2VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story1_2VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story1_2VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story1_2VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story1_2VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story1_2VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story1_2VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story1_2VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story1_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story1_2TrollTLColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story1_2TrollTLColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story1_2TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story1_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story1_2TrollTMColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story1_2TrollTMColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story1_2TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story1_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story1_2TrollTRColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story1_2TrollTRColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story1_2TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story1_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story1_2TrollMLColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story1_2TrollMLColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story1_2TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story1_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story1_2TrollMMColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story1_2TrollMMColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story1_2TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story1_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                story1_2TrollMRColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story1_2TrollMRColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story1_2TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story1_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story1_2TrollBLColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story1_2TrollBLColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story1_2TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story1_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                story1_2TrollBMColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story1_2TrollBMColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story1_2TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story1_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                story1_2TrollBRColour = 0;
            }
            else if(i == 1){
                story1_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story1_2TrollBRColour = 1;
            }
            else if(i == 2){
                story1_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story1_2TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story1_2TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_2TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_2TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_2TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story1_2TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_2TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_2TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_2TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story1_2SpriteTopLeftMenu = [CCMenu menuWithItems: story1_2TrollSpriteTopLeft, nil];
    story1_2SpriteTopMidMenu = [CCMenu menuWithItems: story1_2TrollSpriteTopMid, nil];
    story1_2SpriteTopRightMenu = [CCMenu menuWithItems: story1_2TrollSpriteTopRight, nil];
    story1_2SpriteMidLeftMenu = [CCMenu menuWithItems: story1_2TrollSpriteMidLeft, nil];
    story1_2SpriteMidMidMenu = [CCMenu menuWithItems: story1_2TrollSpriteMidMid, nil];
    story1_2SpriteMidRightMenu = [CCMenu menuWithItems: story1_2TrollSpriteMidRight, nil];
    story1_2SpriteBotLeftMenu = [CCMenu menuWithItems: story1_2TrollSpriteBotLeft, nil];
    story1_2SpriteBotMidMenu = [CCMenu menuWithItems: story1_2TrollSpriteBotMid, nil];
    story1_2SpriteBotRightMenu = [CCMenu menuWithItems: story1_2TrollSpriteBotRight, nil];
    
    story1_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story1_2SpriteTopMidMenu.position = ccp(-1000, -1000);
    story1_2SpriteTopRightMenu.position = ccp(-1000, -1000);
    story1_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story1_2SpriteMidMidMenu.position = ccp(-1000, -1000);
    story1_2SpriteMidRightMenu.position = ccp(-1000, -1000);
    story1_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story1_2SpriteBotMidMenu.position = ccp(-1000, -1000);
    story1_2SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story1_2TrollTopLeftChat.position = ccp(-1000, -1000);
    story1_2TrollTopMidChat.position = ccp(-1000, -1000);
    story1_2TrollTopRightChat.position = ccp(-1000, -1000);
    story1_2TrollMidLeftChat.position = ccp(-1000, -1000);
    story1_2TrollMidMidChat.position = ccp(-1000, -1000);
    story1_2TrollMidRightChat.position = ccp(-1000, -1000);
    story1_2TrollBotLeftChat.position = ccp(-1000, -1000);
    story1_2TrollBotMidChat.position = ccp(-1000, -1000);
    story1_2TrollBotRightChat.position = ccp(-1000, -1000);
    
    story1_2VolcanoMenu = [CCMenu menuWithItems: story1_2VolcanoBackSpriteTopLeft, story1_2VolcanoBackSpriteTopMid, story1_2VolcanoBackSpriteTopRight,
                           story1_2VolcanoBackSpriteMidLeft, story1_2VolcanoBackSpriteMidMid, story1_2VolcanoBackSpriteMidRight,
                           story1_2VolcanoBackSpriteBotLeft, story1_2VolcanoBackSpriteBotMid, story1_2VolcanoBackSpriteBotRight, nil];
    
    [story1_2SpriteMidLayer addChild: story1_2SpriteTopLeftMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteTopMidMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteTopRightMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteMidLeftMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteMidMidMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteMidRightMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteBotLeftMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteBotMidMenu];
    [story1_2SpriteMidLayer addChild: story1_2SpriteBotRightMenu];
    
    [story1_2SpriteMidLayer addChild: story1_2TrollTopLeftChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollTopMidChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollTopRightChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollMidLeftChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollMidMidChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollMidRightChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollBotLeftChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollBotMidChat];
    [story1_2SpriteMidLayer addChild: story1_2TrollBotRightChat];
    
    [story1_2SpriteBackLayer addChild: story1_2VolcanoMenu];
    
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteTopLeft];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteTopMid];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteTopRight];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteMidLeft];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteMidMid];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteMidRight];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteBotLeft];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteBotMid];
    [story1_2SpriteFrontLayer addChild: story1_2VolcanoFrontSpriteBotRight];
    
    story1_2SpriteBackLayer.position = ccp(-1000, -1000);
    story1_2SpriteMidLayer.position = ccp(-1000, -1000);
    story1_2SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadstory1_2Text{
    story1_2ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_2ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_2ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_2ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_2ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_2ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_2ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_2ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    story1_2TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_2TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_2TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_2TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_2TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_2TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_2TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2TrollsLeftNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_2TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2TrollsLeftNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_2TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_2TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    story1_2ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text.png"
                                               selectedImage:NULL];
    
    story1_2ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    story1_2ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    story1_2ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                            selectedSprite:NULL];
    
    story1_2ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                           selectedSprite:NULL];
    
    story1_2TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text.png"
                                                    selectedImage:NULL];
    
    story1_2TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                               selectedSprite:NULL];
    
    story1_2TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_32.png"]
                                                               selectedSprite:NULL];
    
    story1_2TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                                 selectedSprite:NULL];
    
    story1_2LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story1_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story1_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story1_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story1_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    story1_2ScoreMenu = [CCMenu menuWithItems:story1_2ScoreText, story1_2ScoreSpriteDigitOne, story1_2ScoreSpriteDigitTwo,
                         story1_2ScoreSpriteDigitThree, story1_2ScoreSpriteDigitFour, nil];
    
    [story1_2ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story1_2TrollsLeftMenu = [CCMenu menuWithItems: story1_2TrollsLeftText, story1_2TrollsLeftSpriteDigitOne, story1_2TrollsLeftSpriteDigitTwo, story1_2TrollsLeftSpriteDigitThree, nil];
    [story1_2TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story1_2LivesMenu = [CCMenu menuWithItems: story1_2LivesText, story1_2LivesSpriteOne, story1_2LivesSpriteTwo, story1_2LivesSpriteThree, nil];
    [story1_2LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story1_2ScoreMenu.position = ccp(72, 308);
    story1_2TrollsLeftMenu.position = ccp(100, 286);
    story1_2LivesMenu.position = ccp(400, 308);
    
    [story1_2ScoreSpriteDigitOne setTag: 101];
    [story1_2ScoreSpriteDigitTwo setTag: 102];
    [story1_2ScoreSpriteDigitThree setTag: 103];
    [story1_2ScoreSpriteDigitFour setTag: 104];
    
    [story1_2TrollsLeftSpriteDigitOne setTag: 201];
    [story1_2TrollsLeftSpriteDigitTwo setTag: 202];
    [story1_2TrollsLeftSpriteDigitThree setTag: 203];
    
    [story1_2StatsLayer addChild: story1_2ScoreMenu];
    [story1_2StatsLayer addChild: story1_2TrollsLeftMenu];
    [story1_2StatsLayer addChild: story1_2LivesMenu];
    
    story1_2StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawstory1_2Elements{
    story1_2SpriteBackLayer.position = ccp(0, 0);
    story1_2SpriteMidLayer.position = ccp(0, 0);
    story1_2SpriteFrontLayer.position = ccp(0, 0);
    story1_2StatsLayer.position = ccp(0, 0);
    
    story1_2ScoreInt = story1_2CurrentScore;
    
    if(story1_2CurrentScore >= 0 && story1_2CurrentScore < 10){
        if(story1_2CurrentScore == 0){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
        }
        else if(story1_2CurrentScore == 1){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
        }
        else if(story1_2CurrentScore == 2){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
        }
        else if(story1_2CurrentScore == 3){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
        }
        else if(story1_2CurrentScore == 4){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
        }
        else if(story1_2CurrentScore == 5){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
        }
        else if(story1_2CurrentScore == 6){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
        }
        else if(story1_2CurrentScore == 7){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
        }
        else if(story1_2CurrentScore == 8){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
        }
        else if(story1_2CurrentScore == 9){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
    }
    
    else if(story1_2CurrentScore >= 10 && story1_2CurrentScore <= 99){
        int lSDS = story1_2ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
        }
        
        if(story1_2CurrentScore >= 10 && story1_2CurrentScore <= 19){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
        }
        else if(story1_2CurrentScore >= 20 && story1_2CurrentScore <= 29){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
        }
        else if(story1_2CurrentScore >= 30 && story1_2CurrentScore <= 39){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
        }
        else if(story1_2CurrentScore >= 40 && story1_2CurrentScore <= 49){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
        }
        else if(story1_2CurrentScore >= 50 && story1_2CurrentScore <= 59){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
        }
        else if(story1_2CurrentScore >= 60 && story1_2CurrentScore <= 69){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
        }
        else if(story1_2CurrentScore >= 70 && story1_2CurrentScore <= 79){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
        }
        else if(story1_2CurrentScore >= 80 && story1_2CurrentScore <= 89){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
        }
        else if(story1_2CurrentScore >= 90 && story1_2CurrentScore <= 99){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
    }
    
    else if(story1_2CurrentScore >= 100 && story1_2CurrentScore <= 999){
        int story1_2Count = 0;
        while(story1_2Count < 2){
            int lSDSs = story1_2ScoreInt % 10;
            if(story1_2Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                }
            }
            else if(story1_2Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
                }
            }
            story1_2ScoreInt /= 10;
            story1_2Count++;
        }
        
        if(story1_2CurrentScore >= 100 && story1_2CurrentScore <= 199){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber1_2];
        }
        else if(story1_2CurrentScore >= 200 && story1_2CurrentScore <= 299){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber2_2];
        }
        else if(story1_2CurrentScore >= 300 && story1_2CurrentScore <= 399){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber3_2];
        }
        else if(story1_2CurrentScore >= 400 && story1_2CurrentScore <= 499){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber4_2];
        }
        else if(story1_2CurrentScore >= 500 && story1_2CurrentScore <= 599){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber5_2];
        }
        else if(story1_2CurrentScore >= 600 && story1_2CurrentScore <= 699){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber6_2];
        }
        else if(story1_2CurrentScore >= 700 && story1_2CurrentScore <= 799){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber7_2];
        }
        else if(story1_2CurrentScore >= 800 && story1_2CurrentScore <= 899){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber8_2];
        }
        else if(story1_2CurrentScore >= 900 && story1_2CurrentScore <= 999){
            [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
    }
    
    else if(story1_2CurrentScore >= 1000 && story1_2CurrentScore <= 9999){
        int story1_2Count = 0;
        while(story1_2Count < 3){
            int lSDSsS = story1_2ScoreInt % 10;
            if(story1_2Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber9_4];
                }
            }
            else if(story1_2Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber9_3];
                }
            }
            else if(story1_2Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber9_2];
                }
            }
            story1_2ScoreInt /= 10;
            story1_2Count++;
            
            if(story1_2CurrentScore >= 1000 && story1_2CurrentScore <= 1999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber1_1];
            }
            else if(story1_2CurrentScore >= 2000 && story1_2CurrentScore <= 2999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber2_1];
            }
            else if(story1_2CurrentScore >= 3000 && story1_2CurrentScore <= 3999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber3_1];
            }
            else if(story1_2CurrentScore >= 4000 && story1_2CurrentScore <= 4999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber4_1];
            }
            else if(story1_2CurrentScore >= 5000 && story1_2CurrentScore <= 5999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber5_1];
            }
            else if(story1_2CurrentScore >= 6000 && story1_2CurrentScore <= 6999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber6_1];
            }
            else if(story1_2CurrentScore >= 7000 && story1_2CurrentScore <= 7999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber7_1];
            }
            else if(story1_2CurrentScore >= 8000 && story1_2CurrentScore <= 8999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber8_1];
            }
            else if(story1_2CurrentScore >= 9000 && story1_2CurrentScore <= 9999){
                [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber9_1];
            }
        }
    }
    
    else if(story1_2CurrentScore <= 0){
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 104] setNormalImage:story1_2ScoreNumber0_4];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 103] setNormalImage:story1_2ScoreNumber0_3];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 102] setNormalImage:story1_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story1_2ScoreMenu getChildByTag: 101] setNormalImage:story1_2ScoreNumber0_1];
    }
    
    if(story1_2LivesRemaining == 2){
        story1_2LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(story1_2LivesRemaining == 1){
        story1_2LivesSpriteThree.position = ccp(-1000, -1000);
        story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(story1_2LivesRemaining == 0){
        story1_2LivesSpriteThree.position = ccp(-1000, -1000);
        story1_2LivesSpriteTwo.position = ccp(-1000, -1000);
        story1_2LivesSpriteOne.position = ccp(-1000, -1000);
    }
}

-(void) dialogueTouched:(id)sender{
    id fadeAction = [CCFadeOut actionWithDuration:0.5f];
    [story1_2DialogueSprite runAction: fadeAction];
    story1_2DialogueTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story1_2StartTrollTLDeathAnim || story1_2StartTrollTLMissed || story1_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story1_2TrollTLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story1_2StartTrollTMDeathAnim || story1_2StartTrollTMMissed || story1_2TrollTMResetTimer > 0){
        
    }
    else{
        story1_2TrollTMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story1_2StartTrollTRDeathAnim || story1_2StartTrollTRMissed || story1_2TrollTRResetTimer > 0){
        
    }
    else{
        story1_2TrollTRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story1_2StartTrollMLDeathAnim || story1_2StartTrollMLMissed || story1_2TrollMLResetTimer > 0){
        
    }
    else{
        story1_2TrollMLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story1_2StartTrollMMDeathAnim || story1_2StartTrollMMMissed || story1_2TrollMMResetTimer > 0){
        
    }
    else{
        story1_2TrollMMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story1_2StartTrollMRDeathAnim || story1_2StartTrollMRMissed || story1_2TrollMRResetTimer > 0){
        
    }
    else{
        story1_2TrollMRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story1_2StartTrollBLDeathAnim || story1_2StartTrollBLMissed || story1_2TrollBLResetTimer > 0){
        
    }
    else{
        story1_2TrollBLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story1_2StartTrollBMDeathAnim || story1_2StartTrollBMMissed || story1_2TrollBMResetTimer > 0){
        
    }
    else{
        story1_2TrollBMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story1_2StartTrollBRDeathAnim || story1_2StartTrollBRMissed || story1_2TrollBRResetTimer > 0){
        
    }
    else{
        story1_2TrollBRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story1_2StartTrollTLDeathAnim || story1_2StartTrollTLMissed || story1_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story1_2TrollTLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story1_2StartTrollTMDeathAnim || story1_2StartTrollTMMissed || story1_2TrollTMResetTimer > 0){
        
    }
    else{
        story1_2TrollTMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story1_2StartTrollTRDeathAnim || story1_2StartTrollTRMissed || story1_2TrollTRResetTimer > 0){
        
    }
    else{
        story1_2TrollTRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story1_2StartTrollMLDeathAnim || story1_2StartTrollMLMissed || story1_2TrollMLResetTimer > 0){
        
    }
    else{
        story1_2TrollMLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story1_2StartTrollMMDeathAnim || story1_2StartTrollMMMissed || story1_2TrollMMResetTimer > 0){
        
    }
    else{
        story1_2TrollMMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story1_2StartTrollMRDeathAnim || story1_2StartTrollMRMissed || story1_2TrollMRResetTimer > 0){
        
    }
    else{
        story1_2TrollMRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story1_2StartTrollBLDeathAnim || story1_2StartTrollBLMissed || story1_2TrollBLResetTimer > 0){
        
    }
    else{
        story1_2TrollBLTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story1_2StartTrollBMDeathAnim || story1_2StartTrollBMMissed || story1_2TrollBMResetTimer > 0){
        
    }
    else{
        story1_2TrollBMTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story1_2StartTrollBRDeathAnim || story1_2StartTrollBRMissed || story1_2TrollBRResetTimer > 0){
        
    }
    else{
        story1_2TrollBRTouched = TRUE;
        story1_2CurrentScore += 3;
        story1_2TrollsRemaining--;
    }
}

-(void) story1_2GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story1_2CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story1_2LevelComplete:(id)sender{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [[NSUserDefaults standardUserDefaults] setInteger:story1_2CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story1_2LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:2 scene: [BossScene_1 node] withColor:ccBLACK]];
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_boss_theme.mp3"];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story1_2TrollTopLeftChat release];
    [story1_2TrollTopMidChat release];
    [story1_2TrollTopRightChat release];
    [story1_2TrollMidLeftChat release];
    [story1_2TrollMidMidChat release];
    [story1_2TrollMidRightChat release];
    [story1_2TrollBotLeftChat release];
    [story1_2TrollBotMidChat release];
    [story1_2TrollBotRightChat release];
    [story1_2TrollSpriteTLGreen release];
    [story1_2TrollSpriteTLGrey release];
    [story1_2TrollSpriteTLPurple release];
    [story1_2TrollSpriteTMGreen release];
    [story1_2TrollSpriteTMGrey release];
    [story1_2TrollSpriteTMPurple release];
    [story1_2TrollSpriteTRGreen release];
    [story1_2TrollSpriteTRGrey release];
    [story1_2TrollSpriteTRPurple release];
    [story1_2TrollSpriteMLGreen release];
    [story1_2TrollSpriteMLGrey release];
    [story1_2TrollSpriteMLPurple release];
    [story1_2TrollSpriteMMGreen release];
    [story1_2TrollSpriteMMGrey release];
    [story1_2TrollSpriteMMPurple release];
    [story1_2TrollSpriteMRGreen release];
    [story1_2TrollSpriteMRGrey release];
    [story1_2TrollSpriteMRPurple release];
    [story1_2TrollSpriteBLGreen release];
    [story1_2TrollSpriteBLGrey release];
    [story1_2TrollSpriteBLPurple release];
    [story1_2TrollSpriteBMGreen release];
    [story1_2TrollSpriteBMGrey release];
    [story1_2TrollSpriteBMPurple release];
    [story1_2TrollSpriteBRGreen release];
    [story1_2TrollSpriteBRGrey release];
    [story1_2TrollSpriteBRPurple release];
    [story1_2TrollSpriteTLDeadGreen release];
    [story1_2TrollSpriteTLDeadGrey release];
    [story1_2TrollSpriteTLDeadPurple release];
    [story1_2TrollSpriteTMDeadGreen release];
    [story1_2TrollSpriteTMDeadGrey release];
    [story1_2TrollSpriteTMDeadPurple release];
    [story1_2TrollSpriteTRDeadGreen release];
    [story1_2TrollSpriteTRDeadGrey release];
    [story1_2TrollSpriteTRDeadPurple release];
    [story1_2TrollSpriteMLDeadGreen release];
    [story1_2TrollSpriteMLDeadGrey release];
    [story1_2TrollSpriteMLDeadPurple release];
    [story1_2TrollSpriteMMDeadGreen release];
    [story1_2TrollSpriteMMDeadGrey release];
    [story1_2TrollSpriteMMDeadPurple release];
    [story1_2TrollSpriteMRDeadGreen release];
    [story1_2TrollSpriteMRDeadGrey release];
    [story1_2TrollSpriteMRDeadPurple release];
    [story1_2TrollSpriteBLDeadGreen release];
    [story1_2TrollSpriteBLDeadGrey release];
    [story1_2TrollSpriteBLDeadPurple release];
    [story1_2TrollSpriteBMDeadGreen release];
    [story1_2TrollSpriteBMDeadGrey release];
    [story1_2TrollSpriteBMDeadPurple release];
    [story1_2TrollSpriteBRDeadGreen release];
    [story1_2TrollSpriteBRDeadGrey release];
    [story1_2TrollSpriteBRDeadPurple release];
    [story1_2ScoreNumber0_1 release];
    [story1_2ScoreNumber0_2 release];
    [story1_2ScoreNumber0_3 release];
    [story1_2ScoreNumber0_4 release];
    [story1_2ScoreNumber1_1 release];
    [story1_2ScoreNumber1_2 release];
    [story1_2ScoreNumber1_3 release];
    [story1_2ScoreNumber1_4 release];
    [story1_2ScoreNumber2_1 release];
    [story1_2ScoreNumber2_2 release];
    [story1_2ScoreNumber2_3 release];
    [story1_2ScoreNumber2_4 release];
    [story1_2ScoreNumber3_1 release];
    [story1_2ScoreNumber3_2 release];
    [story1_2ScoreNumber3_3 release];
    [story1_2ScoreNumber3_4 release];
    [story1_2ScoreNumber4_1 release];
    [story1_2ScoreNumber4_2 release];
    [story1_2ScoreNumber4_3 release];
    [story1_2ScoreNumber4_4 release];
    [story1_2ScoreNumber5_1 release];
    [story1_2ScoreNumber5_2 release];
    [story1_2ScoreNumber5_3 release];
    [story1_2ScoreNumber5_4 release];
    [story1_2ScoreNumber6_1 release];
    [story1_2ScoreNumber6_2 release];
    [story1_2ScoreNumber6_3 release];
    [story1_2ScoreNumber6_4 release];
    [story1_2ScoreNumber7_1 release];
    [story1_2ScoreNumber7_2 release];
    [story1_2ScoreNumber7_3 release];
    [story1_2ScoreNumber7_4 release];
    [story1_2ScoreNumber8_1 release];
    [story1_2ScoreNumber8_2 release];
    [story1_2ScoreNumber8_3 release];
    [story1_2ScoreNumber8_4 release];
    [story1_2ScoreNumber9_1 release];
    [story1_2ScoreNumber9_2 release];
    [story1_2ScoreNumber9_3 release];
    [story1_2ScoreNumber9_4 release];
    [story1_2TrollsLeftNumber0_1 release];
    [story1_2TrollsLeftNumber0_2 release];
    [story1_2TrollsLeftNumber0_3 release];
    [story1_2TrollsLeftNumber1_1 release];
    [story1_2TrollsLeftNumber1_2 release];
    [story1_2TrollsLeftNumber2_1 release];
    [story1_2TrollsLeftNumber2_2 release];
    [story1_2TrollsLeftNumber3_1 release];
    [story1_2TrollsLeftNumber3_2 release];
    [story1_2TrollsLeftNumber4_1 release];
    [story1_2TrollsLeftNumber4_2 release];
    [story1_2TrollsLeftNumber5_1 release];
    [story1_2TrollsLeftNumber5_2 release];
    [story1_2TrollsLeftNumber6_1 release];
    [story1_2TrollsLeftNumber6_2 release];
    [story1_2TrollsLeftNumber7_1 release];
    [story1_2TrollsLeftNumber7_2 release];
    [story1_2TrollsLeftNumber8_1 release];
    [story1_2TrollsLeftNumber9_1 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end