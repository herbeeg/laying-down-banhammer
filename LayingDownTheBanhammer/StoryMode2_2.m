//
//  StoryMode2_2.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode2_2.h"
#import "GameOver.h"
#import "BossScene_2.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode2_2

CCSprite *story2_2Background;
CCSprite *story2_2Intro3;
CCSprite *story2_2Intro2;
CCSprite *story2_2Intro1;
CCSprite *story2_2Intro0;

CCLayer *story2_2StatsLayer;
CCLayer *story2_2SpriteFrontLayer;
CCLayer *story2_2SpriteMidLayer;
CCLayer *story2_2SpriteBackLayer;

CCMenu *story2_2DialogueMenu;

CCSprite *story2_2CharacterSprite;
CCSprite *story2_2CharacterName;
CCMenuItemImage *story2_2DialogueSprite;

CCMenu *story2_2ScoreMenu;
CCMenu *story2_2LivesMenu;
CCMenu *story2_2TrollsLeftMenu;

CCMenu *story2_2SpriteTopLeftMenu;
CCMenu *story2_2SpriteTopMidMenu;
CCMenu *story2_2SpriteTopRightMenu;
CCMenu *story2_2SpriteMidLeftMenu;
CCMenu *story2_2SpriteMidMidMenu;
CCMenu *story2_2SpriteMidRightMenu;
CCMenu *story2_2SpriteBotLeftMenu;
CCMenu *story2_2SpriteBotMidMenu;
CCMenu *story2_2SpriteBotRightMenu;

CCMenuItemImage *story2_2ScoreText;
CCMenuItemSprite *story2_2ScoreSpriteDigitOne;
CCMenuItemSprite *story2_2ScoreSpriteDigitTwo;
CCMenuItemSprite *story2_2ScoreSpriteDigitThree;
CCMenuItemSprite *story2_2ScoreSpriteDigitFour;

CCMenuItemImage *story2_2LivesText;
CCMenuItemSprite *story2_2LivesSpriteOne;
CCMenuItemSprite *story2_2LivesSpriteTwo;
CCMenuItemSprite *story2_2LivesSpriteThree;

CCMenuItemImage *story2_2TrollsLeftText;
CCMenuItemSprite *story2_2TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story2_2TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story2_2TrollsLeftSpriteDigitThree;

CCSprite *story2_2VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story2_2VolcanoBackSpriteTopLeft;
CCSprite *story2_2VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story2_2VolcanoBackSpriteTopMid;
CCSprite *story2_2VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story2_2VolcanoBackSpriteTopRight;
CCSprite *story2_2VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story2_2VolcanoBackSpriteMidLeft;
CCSprite *story2_2VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story2_2VolcanoBackSpriteMidMid;
CCSprite *story2_2VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story2_2VolcanoBackSpriteMidRight;
CCSprite *story2_2VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story2_2VolcanoBackSpriteBotLeft;
CCSprite *story2_2VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story2_2VolcanoBackSpriteBotMid;
CCSprite *story2_2VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story2_2VolcanoBackSpriteBotRight;

CCMenu *story2_2VolcanoMenu;

int story2_2TrollTLColour = -1;
int story2_2TrollTMColour = -1;
int story2_2TrollTRColour = -1;
int story2_2TrollMLColour = -1;
int story2_2TrollMMColour = -1;
int story2_2TrollMRColour = -1;
int story2_2TrollBLColour = -1;
int story2_2TrollBMColour = -1;
int story2_2TrollBRColour = -1;

CCMenuItemSprite *story2_2TrollSpriteTopLeft;
CCMenuItemSprite *story2_2TrollSpriteTopMid;
CCMenuItemSprite *story2_2TrollSpriteTopRight;
CCMenuItemSprite *story2_2TrollSpriteMidLeft;
CCMenuItemSprite *story2_2TrollSpriteMidMid;
CCMenuItemSprite *story2_2TrollSpriteMidRight;
CCMenuItemSprite *story2_2TrollSpriteBotLeft;
CCMenuItemSprite *story2_2TrollSpriteBotMid;
CCMenuItemSprite *story2_2TrollSpriteBotRight;

CCSprite *story2_2TrollSpriteTLGreen;
CCSprite *story2_2TrollSpriteTLGrey;
CCSprite *story2_2TrollSpriteTLPurple;
CCSprite *story2_2TrollSpriteTMGreen;
CCSprite *story2_2TrollSpriteTMGrey;
CCSprite *story2_2TrollSpriteTMPurple;
CCSprite *story2_2TrollSpriteTRGreen;
CCSprite *story2_2TrollSpriteTRGrey;
CCSprite *story2_2TrollSpriteTRPurple;
CCSprite *story2_2TrollSpriteMLGreen;
CCSprite *story2_2TrollSpriteMLGrey;
CCSprite *story2_2TrollSpriteMLPurple;
CCSprite *story2_2TrollSpriteMMGreen;
CCSprite *story2_2TrollSpriteMMGrey;
CCSprite *story2_2TrollSpriteMMPurple;
CCSprite *story2_2TrollSpriteMRGreen;
CCSprite *story2_2TrollSpriteMRGrey;
CCSprite *story2_2TrollSpriteMRPurple;
CCSprite *story2_2TrollSpriteBLGreen;
CCSprite *story2_2TrollSpriteBLGrey;
CCSprite *story2_2TrollSpriteBLPurple;
CCSprite *story2_2TrollSpriteBMGreen;
CCSprite *story2_2TrollSpriteBMGrey;
CCSprite *story2_2TrollSpriteBMPurple;
CCSprite *story2_2TrollSpriteBRGreen;
CCSprite *story2_2TrollSpriteBRGrey;
CCSprite *story2_2TrollSpriteBRPurple;

CCSprite *story2_2TrollSpriteTLDeadGreen;
CCSprite *story2_2TrollSpriteTLDeadGrey;
CCSprite *story2_2TrollSpriteTLDeadPurple;
CCSprite *story2_2TrollSpriteTMDeadGreen;
CCSprite *story2_2TrollSpriteTMDeadGrey;
CCSprite *story2_2TrollSpriteTMDeadPurple;
CCSprite *story2_2TrollSpriteTRDeadGreen;
CCSprite *story2_2TrollSpriteTRDeadGrey;
CCSprite *story2_2TrollSpriteTRDeadPurple;
CCSprite *story2_2TrollSpriteMLDeadGreen;
CCSprite *story2_2TrollSpriteMLDeadGrey;
CCSprite *story2_2TrollSpriteMLDeadPurple;
CCSprite *story2_2TrollSpriteMMDeadGreen;
CCSprite *story2_2TrollSpriteMMDeadGrey;
CCSprite *story2_2TrollSpriteMMDeadPurple;
CCSprite *story2_2TrollSpriteMRDeadGreen;
CCSprite *story2_2TrollSpriteMRDeadGrey;
CCSprite *story2_2TrollSpriteMRDeadPurple;
CCSprite *story2_2TrollSpriteBLDeadGreen;
CCSprite *story2_2TrollSpriteBLDeadGrey;
CCSprite *story2_2TrollSpriteBLDeadPurple;
CCSprite *story2_2TrollSpriteBMDeadGreen;
CCSprite *story2_2TrollSpriteBMDeadGrey;
CCSprite *story2_2TrollSpriteBMDeadPurple;
CCSprite *story2_2TrollSpriteBRDeadGreen;
CCSprite *story2_2TrollSpriteBRDeadGrey;
CCSprite *story2_2TrollSpriteBRDeadPurple;

CCSprite *story2_2ScoreNumber0_1;
CCSprite *story2_2ScoreNumber0_2;
CCSprite *story2_2ScoreNumber0_3;
CCSprite *story2_2ScoreNumber0_4;
CCSprite *story2_2ScoreNumber1_1;
CCSprite *story2_2ScoreNumber1_2;
CCSprite *story2_2ScoreNumber1_3;
CCSprite *story2_2ScoreNumber1_4;
CCSprite *story2_2ScoreNumber2_1;
CCSprite *story2_2ScoreNumber2_2;
CCSprite *story2_2ScoreNumber2_3;
CCSprite *story2_2ScoreNumber2_4;
CCSprite *story2_2ScoreNumber3_1;
CCSprite *story2_2ScoreNumber3_2;
CCSprite *story2_2ScoreNumber3_3;
CCSprite *story2_2ScoreNumber3_4;
CCSprite *story2_2ScoreNumber4_1;
CCSprite *story2_2ScoreNumber4_2;
CCSprite *story2_2ScoreNumber4_3;
CCSprite *story2_2ScoreNumber4_4;
CCSprite *story2_2ScoreNumber5_1;
CCSprite *story2_2ScoreNumber5_2;
CCSprite *story2_2ScoreNumber5_3;
CCSprite *story2_2ScoreNumber5_4;
CCSprite *story2_2ScoreNumber6_1;
CCSprite *story2_2ScoreNumber6_2;
CCSprite *story2_2ScoreNumber6_3;
CCSprite *story2_2ScoreNumber6_4;
CCSprite *story2_2ScoreNumber7_1;
CCSprite *story2_2ScoreNumber7_2;
CCSprite *story2_2ScoreNumber7_3;
CCSprite *story2_2ScoreNumber7_4;
CCSprite *story2_2ScoreNumber8_1;
CCSprite *story2_2ScoreNumber8_2;
CCSprite *story2_2ScoreNumber8_3;
CCSprite *story2_2ScoreNumber8_4;
CCSprite *story2_2ScoreNumber9_1;
CCSprite *story2_2ScoreNumber9_2;
CCSprite *story2_2ScoreNumber9_3;
CCSprite *story2_2ScoreNumber9_4;

CCSprite *story2_2TrollsLeftNumber0_1;
CCSprite *story2_2TrollsLeftNumber0_2;
CCSprite *story2_2TrollsLeftNumber0_3;
CCSprite *story2_2TrollsLeftNumber1_1;
CCSprite *story2_2TrollsLeftNumber1_2;
CCSprite *story2_2TrollsLeftNumber1_3;
CCSprite *story2_2TrollsLeftNumber2_1;
CCSprite *story2_2TrollsLeftNumber2_2;
CCSprite *story2_2TrollsLeftNumber3_1;
CCSprite *story2_2TrollsLeftNumber3_2;
CCSprite *story2_2TrollsLeftNumber4_1;
CCSprite *story2_2TrollsLeftNumber4_2;
CCSprite *story2_2TrollsLeftNumber5_1;
CCSprite *story2_2TrollsLeftNumber5_2;
CCSprite *story2_2TrollsLeftNumber6_1;
CCSprite *story2_2TrollsLeftNumber6_2;
CCSprite *story2_2TrollsLeftNumber7_1;
CCSprite *story2_2TrollsLeftNumber7_2;
CCSprite *story2_2TrollsLeftNumber8_1;
CCSprite *story2_2TrollsLeftNumber8_2;
CCSprite *story2_2TrollsLeftNumber9_1;
CCSprite *story2_2TrollsLeftNumber9_2;

CCSprite *story2_2TrollTopLeftChat;
CCSprite *story2_2TrollTopMidChat;
CCSprite *story2_2TrollTopRightChat;
CCSprite *story2_2TrollMidLeftChat;
CCSprite *story2_2TrollMidMidChat;
CCSprite *story2_2TrollMidRightChat;
CCSprite *story2_2TrollBotLeftChat;
CCSprite *story2_2TrollBotMidChat;
CCSprite *story2_2TrollBotRightChat;

CCSprite *story2_2TapToContinue;

CCSprite *story2_2TimeUpSprite;
BOOL story2_2TimeUpDrawn = FALSE;

CCSprite *story2_2AllTrollsSprite;
BOOL story2_2AllTrollsDrawn = FALSE;

int story2_2CurrentScore = 0;
int story2_2PrevScore = 0;
int story2_2ScoreInt = 0;
int story2_2LivesRemaining = 0;
int story2_2TrollsRemaining = 110;
int story2_2TrollsRemInt = 0;
int story2_2TrollsPrevRem = 110;

float story2_2TrollRespawnInterval = 0.0f;

float story2_2TrollTLResetTimer = 0.5f;
float story2_2TrollTMResetTimer = 0.8f;
float story2_2TrollTRResetTimer = 0.2f;
float story2_2TrollMLResetTimer = 0.4f;
float story2_2TrollMMResetTimer = 0.1f;
float story2_2TrollMRResetTimer = 0.9f;
float story2_2TrollBLResetTimer = 0.3f;
float story2_2TrollBMResetTimer = 0.7f;
float story2_2TrollBRResetTimer = 0.0f;

float story2_2TrollTLTimeInPlay = 0.0f;
float story2_2TrollTMTimeInPlay = 0.0f;
float story2_2TrollTRTimeInPlay = 0.0f;
float story2_2TrollMLTimeInPlay = 0.0f;
float story2_2TrollMMTimeInPlay = 0.0f;
float story2_2TrollMRTimeInPlay = 0.0f;
float story2_2TrollBLTimeInPlay = 0.0f;
float story2_2TrollBMTimeInPlay = 0.0f;
float story2_2TrollBRTimeInPlay = 0.0f;

float story2_2TrollTLFadingOutTimer = 0.0f;
float story2_2TrollTMFadingOutTimer = 0.0f;
float story2_2TrollTRFadingOutTimer = 0.0f;
float story2_2TrollMLFadingOutTimer = 0.0f;
float story2_2TrollMMFadingOutTimer = 0.0f;
float story2_2TrollMRFadingOutTimer = 0.0f;
float story2_2TrollBLFadingOutTimer = 0.0f;
float story2_2TrollBMFadingOutTimer = 0.0f;
float story2_2TrollBRFadingOutTimer = 0.0f;

BOOL story2_2TrollTLTouched = FALSE;
BOOL story2_2TrollTMTouched = FALSE;
BOOL story2_2TrollTRTouched = FALSE;
BOOL story2_2TrollMLTouched = FALSE;
BOOL story2_2TrollMMTouched = FALSE;
BOOL story2_2TrollMRTouched = FALSE;
BOOL story2_2TrollBLTouched = FALSE;
BOOL story2_2TrollBMTouched = FALSE;
BOOL story2_2TrollBRTouched = FALSE;

BOOL story2_2TrollTLInPlay = FALSE;
BOOL story2_2TrollTMInPlay = FALSE;
BOOL story2_2TrollTRInPlay = FALSE;
BOOL story2_2TrollMLInPlay = FALSE;
BOOL story2_2TrollMMInPlay = FALSE;
BOOL story2_2TrollMRInPlay = FALSE;
BOOL story2_2TrollBLInPlay = FALSE;
BOOL story2_2TrollBMInPlay = FALSE;
BOOL story2_2TrollBRInPlay = FALSE;

BOOL story2_2StartTrollTLDeathAnim = FALSE;
BOOL story2_2StartTrollTMDeathAnim = FALSE;
BOOL story2_2StartTrollTRDeathAnim = FALSE;
BOOL story2_2StartTrollMLDeathAnim = FALSE;
BOOL story2_2StartTrollMMDeathAnim = FALSE;
BOOL story2_2StartTrollMRDeathAnim = FALSE;
BOOL story2_2StartTrollBLDeathAnim = FALSE;
BOOL story2_2StartTrollBMDeathAnim = FALSE;
BOOL story2_2StartTrollBRDeathAnim = FALSE;

BOOL story2_2StartTrollTLMissed = FALSE;
BOOL story2_2StartTrollTMMissed = FALSE;
BOOL story2_2StartTrollTRMissed = FALSE;
BOOL story2_2StartTrollMLMissed = FALSE;
BOOL story2_2StartTrollMMMissed = FALSE;
BOOL story2_2StartTrollMRMissed = FALSE;
BOOL story2_2StartTrollBLMissed = FALSE;
BOOL story2_2StartTrollBMMissed = FALSE;
BOOL story2_2StartTrollBRMissed = FALSE;

BOOL story2_2StartRound = FALSE;
BOOL story2_2DialogueTouched = FALSE;

ccTime story2_2GameTime = 0.0f;
int story2_2Tick = 0;
BOOL story2_2IntroFinished = FALSE;
BOOL story2_2AllChange = FALSE;

@implementation StoryMode2_2

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode2_2 *layer = [StoryMode2_2 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story2_2StatsLayer = [CCLayer node];
        story2_2SpriteFrontLayer = [CCLayer node];
        story2_2SpriteMidLayer = [CCLayer node];
        story2_2SpriteBackLayer = [CCLayer node];
        
        story2_2Background = [CCSprite spriteWithFile:@"BackgroundImages/level_2_background_640.png"];
        story2_2Background.position = ccp(240, 160);
        
        [self addChild: story2_2Background];
        [self addChild: story2_2StatsLayer];
        [self addChild: story2_2SpriteBackLayer];
        [self addChild: story2_2SpriteFrontLayer];
        [self addChild: story2_2SpriteMidLayer];
        
        [self loadstory2_2Sprites];
        [self loadstory2_2Text];
        [self loadstory2_2Dialogue];
    }
    
    story2_2TrollTLColour = -1;
    story2_2TrollTMColour = -1;
    story2_2TrollTRColour = -1;
    story2_2TrollMLColour = -1;
    story2_2TrollMMColour = -1;
    story2_2TrollMRColour = -1;
    story2_2TrollBLColour = -1;
    story2_2TrollBMColour = -1;
    story2_2TrollBRColour = -1;
    story2_2TimeUpDrawn = FALSE;
    story2_2AllTrollsDrawn = FALSE;
    story2_2ScoreInt = 0;
    story2_2TrollsRemaining = 110;
    story2_2TrollsRemInt = 0;
    story2_2TrollsPrevRem = 110;
    story2_2TrollRespawnInterval = 0.0f;
    story2_2TrollTLResetTimer = 0.5f;
    story2_2TrollTMResetTimer = 0.8f;
    story2_2TrollTRResetTimer = 0.2f;
    story2_2TrollMLResetTimer = 0.4f;
    story2_2TrollMMResetTimer = 0.1f;
    story2_2TrollMRResetTimer = 0.9f;
    story2_2TrollBLResetTimer = 0.3f;
    story2_2TrollBMResetTimer = 0.7f;
    story2_2TrollBRResetTimer = 0.0f;
    story2_2TrollTLTimeInPlay = 0.0f;
    story2_2TrollTMTimeInPlay = 0.0f;
    story2_2TrollTRTimeInPlay = 0.0f;
    story2_2TrollMLTimeInPlay = 0.0f;
    story2_2TrollMMTimeInPlay = 0.0f;
    story2_2TrollMRTimeInPlay = 0.0f;
    story2_2TrollBLTimeInPlay = 0.0f;
    story2_2TrollBMTimeInPlay = 0.0f;
    story2_2TrollBRTimeInPlay = 0.0f;
    story2_2TrollTLFadingOutTimer = 0.0f;
    story2_2TrollTMFadingOutTimer = 0.0f;
    story2_2TrollTRFadingOutTimer = 0.0f;
    story2_2TrollMLFadingOutTimer = 0.0f;
    story2_2TrollMMFadingOutTimer = 0.0f;
    story2_2TrollMRFadingOutTimer = 0.0f;
    story2_2TrollBLFadingOutTimer = 0.0f;
    story2_2TrollBMFadingOutTimer = 0.0f;
    story2_2TrollBRFadingOutTimer = 0.0f;
    story2_2TrollTLTouched = FALSE;
    story2_2TrollTMTouched = FALSE;
    story2_2TrollTRTouched = FALSE;
    story2_2TrollMLTouched = FALSE;
    story2_2TrollMMTouched = FALSE;
    story2_2TrollMRTouched = FALSE;
    story2_2TrollBLTouched = FALSE;
    story2_2TrollBMTouched = FALSE;
    story2_2TrollBRTouched = FALSE;
    story2_2TrollTLInPlay = FALSE;
    story2_2TrollTMInPlay = FALSE;
    story2_2TrollTRInPlay = FALSE;
    story2_2TrollMLInPlay = FALSE;
    story2_2TrollMMInPlay = FALSE;
    story2_2TrollMRInPlay = FALSE;
    story2_2TrollBLInPlay = FALSE;
    story2_2TrollBMInPlay = FALSE;
    story2_2TrollBRInPlay = FALSE;
    story2_2StartTrollTLDeathAnim = FALSE;
    story2_2StartTrollTMDeathAnim = FALSE;
    story2_2StartTrollTRDeathAnim = FALSE;
    story2_2StartTrollMLDeathAnim = FALSE;
    story2_2StartTrollMMDeathAnim = FALSE;
    story2_2StartTrollMRDeathAnim = FALSE;
    story2_2StartTrollBLDeathAnim = FALSE;
    story2_2StartTrollBMDeathAnim = FALSE;
    story2_2StartTrollBRDeathAnim = FALSE;
    story2_2StartTrollTLMissed = FALSE;
    story2_2StartTrollTMMissed = FALSE;
    story2_2StartTrollTRMissed = FALSE;
    story2_2StartTrollMLMissed = FALSE;
    story2_2StartTrollMMMissed = FALSE;
    story2_2StartTrollMRMissed = FALSE;
    story2_2StartTrollBLMissed = FALSE;
    story2_2StartTrollBMMissed = FALSE;
    story2_2StartTrollBRMissed = FALSE;
    story2_2StartRound = FALSE;
    story2_2DialogueTouched = FALSE;
    story2_2Tick = 0;
    story2_2IntroFinished = FALSE;
    story2_2AllChange = FALSE;
    story2_2GameTime = 0.0f;
    
    story2_2CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story2_2PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story2_2LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story2_2StartRound){
        if(story2_2DialogueTouched){
            story2_2DialogueSprite.position = ccp(-1000, -1000);
            story2_2CharacterSprite.position = ccp(-1000, -1000);
            story2_2CharacterName.position = ccp(-1000, -1000);
            story2_2TapToContinue.position = ccp(-1000, -1000);
            story2_2DialogueTouched = FALSE;
            story2_2StartRound = TRUE;
        }
    }
    else{
        story2_2GameTime += dt;
        
        if (story2_2GameTime < 5 && story2_2IntroFinished == NO){
            if(story2_2GameTime > 0 && story2_2GameTime < 1.5){
                if(story2_2Tick == 0){
                    story2_2Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story2_2Intro3.position = ccp(240, 160);
                    [self addChild: story2_2Intro3];
                    story2_2Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story2_2GameTime > 1.5 && story2_2GameTime < 2.5){
                if(story2_2Tick == 1) {
                    story2_2Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story2_2Intro2.position = ccp(240, 160);
                    [self addChild: story2_2Intro2];
                    story2_2Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story2_2Tick == 2){
                    [self removeChild: story2_2Intro3 cleanup:YES];
                    story2_2Tick = 3;
                }
            }
            else if(story2_2GameTime > 2.5 && story2_2GameTime < 3.5){
                if(story2_2Tick == 3){
                    story2_2Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story2_2Intro1.position = ccp(240, 160);
                    [self addChild: story2_2Intro1];
                    story2_2Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story2_2Tick == 4) {
                    [self removeChild: story2_2Intro2 cleanup:YES];
                    story2_2Tick = 5;
                }
            }
            else if(story2_2GameTime > 3.5 && story2_2GameTime < 4.5){
                if(story2_2Tick == 5){
                    story2_2Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story2_2Intro0.position = ccp(240, 160);
                    [self addChild: story2_2Intro0];
                    story2_2Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story2_2Tick == 6) {
                    [self removeChild: story2_2Intro1 cleanup:YES];
                    story2_2Tick = 7;
                }
            }
            else{
                if(story2_2Tick == 7){
                    story2_2IntroFinished = YES;
                    [self removeChild: story2_2Intro0 cleanup:YES];
                    story2_2Tick = 8;
                    story2_2AllChange = TRUE;
                }
            }
        }
        else if(story2_2Tick == 8){
            if(story2_2AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_2.mp3"];
                [self drawstory2_2Elements];
                story2_2AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story2_2TrollTLInPlay){
                if(story2_2TrollTLTimeInPlay >= 3.5f){
                    story2_2StartTrollTLMissed = TRUE;
                    story2_2TrollTopLeftChat.position = ccp(-1000, -1000);
                    story2_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollTLTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollTLResetTimer -= dt;
                if(story2_2TrollTLResetTimer <= 0){
                    story2_2SpriteTopLeftMenu.position = ccp(80, 250);
                    story2_2TrollTopLeftChat.position = ccp(112, 260);
                    story2_2TrollTLInPlay = TRUE;
                    story2_2TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollTMInPlay){
                if(story2_2TrollTMTimeInPlay >= 3.5f){
                    story2_2StartTrollTMMissed = TRUE;
                    story2_2TrollTopMidChat.position = ccp(-1000, -1000);
                    story2_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollTMTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollTMResetTimer -= dt;
                if(story2_2TrollTMResetTimer <= 0){
                    story2_2SpriteTopMidMenu.position = ccp(240, 250);
                    story2_2TrollTopMidChat.position = ccp(272, 260);
                    story2_2TrollTMInPlay = TRUE;
                    story2_2TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollTRInPlay){
                if(story2_2TrollTRTimeInPlay >= 3.5f){
                    story2_2StartTrollTRMissed = TRUE;
                    story2_2TrollTopRightChat.position = ccp(-1000, -1000);
                    story2_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollTRTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollTRResetTimer -= dt;
                if(story2_2TrollTRResetTimer <= 0){
                    story2_2SpriteTopRightMenu.position = ccp(400, 250);
                    story2_2TrollTopRightChat.position = ccp(432, 260);
                    story2_2TrollTRInPlay = TRUE;
                    story2_2TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollMLInPlay){
                if(story2_2TrollMLTimeInPlay >= 3.5f){
                    story2_2StartTrollMLMissed = TRUE;
                    story2_2TrollMidLeftChat.position = ccp(-1000, -1000);
                    story2_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollMLTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollMLResetTimer -= dt;
                if(story2_2TrollMLResetTimer <= 0){
                    story2_2SpriteMidLeftMenu.position = ccp(80, 170);
                    story2_2TrollMidLeftChat.position = ccp(112, 180);
                    story2_2TrollMLInPlay = TRUE;
                    story2_2TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollMMInPlay){
                if(story2_2TrollMMTimeInPlay >= 3.5f){
                    story2_2StartTrollMMMissed = TRUE;
                    story2_2TrollMidMidChat.position = ccp(-1000, -1000);
                    story2_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollMMTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollMMResetTimer -= dt;
                if(story2_2TrollMMResetTimer <= 0){
                    story2_2SpriteMidMidMenu.position = ccp(240, 170);
                    story2_2TrollMidMidChat.position = ccp(272, 180);
                    story2_2TrollMMInPlay = TRUE;
                    story2_2TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollMRInPlay){
                if(story2_2TrollMRTimeInPlay >= 3.5f){
                    story2_2StartTrollMRMissed = TRUE;
                    story2_2TrollMidRightChat.position = ccp(-1000, -1000);
                    story2_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story2_2TrollMRTimeInPlay += dt;
            }
            else{
                story2_2TrollMRResetTimer -= dt;
                if(story2_2TrollMRResetTimer <= 0){
                    story2_2SpriteMidRightMenu.position = ccp(400, 170);
                    story2_2TrollMidRightChat.position = ccp(432, 180);
                    story2_2TrollMRInPlay = TRUE;
                    story2_2TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollBLInPlay){
                if(story2_2TrollBLTimeInPlay >= 3.5f){
                    story2_2StartTrollBLMissed = TRUE;
                    story2_2TrollBotLeftChat.position = ccp(-1000, -1000);
                    story2_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollBLTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollBLResetTimer -= dt;
                if(story2_2TrollBLResetTimer <= 0){
                    story2_2SpriteBotLeftMenu.position = ccp(80, 90);
                    story2_2TrollBotLeftChat.position = ccp(112, 100);
                    story2_2TrollBLInPlay = TRUE;
                    story2_2TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollBMInPlay){
                if(story2_2TrollBMTimeInPlay >= 3.5f){
                    story2_2StartTrollBMMissed = TRUE;
                    story2_2TrollBotMidChat.position = ccp(-1000, -1000);
                    story2_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollBMTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollBMResetTimer -= dt;
                if(story2_2TrollBMResetTimer <= 0){
                    story2_2SpriteBotMidMenu.position = ccp(240, 90);
                    story2_2TrollBotMidChat.position = ccp(272, 100);
                    story2_2TrollBMInPlay = TRUE;
                    story2_2TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_2TrollBRInPlay){
                if(story2_2TrollBRTimeInPlay >= 3.5f){
                    story2_2StartTrollBRMissed = TRUE;
                    story2_2TrollBotRightChat.position = ccp(-1000, -1000);
                    story2_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_2TrollBRTimeInPlay += dt;
                }
            }
            else{
                story2_2TrollBRResetTimer -= dt;
                if(story2_2TrollBRResetTimer <= 0){
                    story2_2SpriteBotRightMenu.position = ccp(400, 90);
                    story2_2TrollBotRightChat.position = ccp(432, 100);
                    story2_2TrollBRInPlay = TRUE;
                    story2_2TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story2_2TrollTLTouched){
                story2_2StartTrollTLDeathAnim = TRUE;
                story2_2TrollTLTouched = FALSE;
                if(story2_2TrollTLColour == 0){
                    [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLDeadGreen];
                }
                else if(story2_2TrollTLColour == 1){
                    [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLDeadGrey];
                }
                else if(story2_2TrollTLColour == 2){
                    [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLDeadPurple];
                }
                
                story2_2TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story2_2TrollTMTouched){
                story2_2StartTrollTMDeathAnim = TRUE;
                story2_2TrollTMTouched = FALSE;
                if(story2_2TrollTMColour == 0){
                    [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMDeadGreen];
                }
                else if(story2_2TrollTMColour == 1){
                    [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMDeadGrey];
                }
                else if(story2_2TrollTMColour == 2){
                    [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMDeadPurple];
                }
                
                story2_2TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story2_2TrollTRTouched){
                story2_2StartTrollTRDeathAnim = TRUE;
                story2_2TrollTRTouched = FALSE;
                if(story2_2TrollTRColour == 0){
                    [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRDeadGreen];
                }
                else if(story2_2TrollTRColour == 1){
                    [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRDeadGrey];
                }
                else if(story2_2TrollTRColour == 2){
                    [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRDeadPurple];
                }
                
                story2_2TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story2_2TrollMLTouched){
                story2_2StartTrollMLDeathAnim = TRUE;
                story2_2TrollMLTouched = FALSE;
                if(story2_2TrollMLColour == 0){
                    [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLDeadGreen];
                }
                else if(story2_2TrollMLColour == 1){
                    [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLDeadGrey];
                }
                else if(story2_2TrollMLColour == 2){
                    [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLDeadPurple];
                }
                
                story2_2TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story2_2TrollMMTouched){
                story2_2StartTrollMMDeathAnim = TRUE;
                story2_2TrollMMTouched = FALSE;
                if(story2_2TrollMMColour == 0){
                    [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMDeadGreen];
                }
                else if(story2_2TrollMMColour == 1){
                    [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMDeadGrey];
                }
                else if(story2_2TrollMMColour == 2){
                    [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMDeadPurple];
                }
                
                story2_2TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story2_2TrollMRTouched){
                story2_2StartTrollMRDeathAnim = TRUE;
                story2_2TrollMRTouched = FALSE;
                if(story2_2TrollMRColour == 0){
                    [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRDeadGreen];
                }
                else if(story2_2TrollMRColour == 1){
                    [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRDeadGrey];
                }
                else if(story2_2TrollMRColour == 2){
                    [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRDeadPurple];
                }
                
                story2_2TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story2_2TrollBLTouched){
                story2_2StartTrollBLDeathAnim = TRUE;
                story2_2TrollBLTouched = FALSE;
                if(story2_2TrollBLColour == 0){
                    [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLDeadGreen];
                }
                else if(story2_2TrollBLColour == 1){
                    [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLDeadGrey];
                }
                else if(story2_2TrollBLColour == 2){
                    [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLDeadPurple];
                }
                
                story2_2TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story2_2TrollBMTouched){
                story2_2StartTrollBMDeathAnim = TRUE;
                story2_2TrollBMTouched = FALSE;
                if(story2_2TrollBMColour == 0){
                    [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMDeadGreen];
                }
                else if(story2_2TrollBMColour == 1){
                    [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMDeadGrey];
                }
                else if(story2_2TrollBMColour == 2){
                    [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMDeadPurple];
                }
                
                story2_2TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story2_2TrollBRTouched){
                story2_2StartTrollBRDeathAnim = TRUE;
                story2_2TrollBRTouched = FALSE;
                if(story2_2TrollBRColour == 0){
                    [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRDeadGreen];
                }
                else if(story2_2TrollBRColour == 1){
                    [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRDeadGrey];
                }
                else if(story2_2TrollBRColour == 2){
                    [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRDeadPurple];
                }
                
                story2_2TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story2_2TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story2_2StartTrollTLDeathAnim){
                if(story2_2TrollTLFadingOutTimer < 0.25f){
                    story2_2TrollTLFadingOutTimer += dt;
                    story2_2SpriteTopLeftMenu.position = ccp(story2_2SpriteTopLeftMenu.position.x, story2_2SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollTLDeathAnim = FALSE;
                    story2_2TrollTLTimeInPlay = 0.0f;
                    story2_2TrollTLFadingOutTimer = 0.0f;
                    story2_2TrollTLInPlay = FALSE;
                    story2_2TrollTLResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story2_2TrollTLColour == 0){
                        [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLGreen];
                    }
                    else if(story2_2TrollTLColour == 1){
                        [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLGrey];
                    }
                    else if(story2_2TrollTLColour == 2){
                        [story2_2TrollSpriteTopLeft setNormalImage:story2_2TrollSpriteTLPurple];
                    }
                    
                    story2_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollTMDeathAnim){
                if(story2_2TrollTMFadingOutTimer < 0.25f){
                    story2_2TrollTMFadingOutTimer += dt;
                    story2_2SpriteTopMidMenu.position = ccp(story2_2SpriteTopMidMenu.position.x, story2_2SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollTMDeathAnim = FALSE;
                    story2_2TrollTMTimeInPlay = 0.0f;
                    story2_2TrollTMFadingOutTimer = 0.0f;
                    story2_2TrollTMInPlay = FALSE;
                    story2_2TrollTMResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story2_2TrollTMColour == 0){
                        [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMGreen];
                    }
                    else if(story2_2TrollTMColour == 1){
                        [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMGrey];
                    }
                    else if(story2_2TrollTMColour == 2){
                        [story2_2TrollSpriteTopMid setNormalImage:story2_2TrollSpriteTMPurple];
                    }
                    
                    story2_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollTRDeathAnim){
                if(story2_2TrollTRFadingOutTimer < 0.25f){
                    story2_2TrollTRFadingOutTimer += dt;
                    story2_2SpriteTopRightMenu.position = ccp(story2_2SpriteTopRightMenu.position.x, story2_2SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollTRDeathAnim = FALSE;
                    story2_2TrollTRTimeInPlay = 0.0f;
                    story2_2TrollTRFadingOutTimer = 0.0f;
                    story2_2TrollTRInPlay = FALSE;
                    story2_2TrollTRResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story2_2TrollTRColour == 0){
                        [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRGreen];
                    }
                    else if(story2_2TrollTRColour == 1){
                        [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRGrey];
                    }
                    else if(story2_2TrollTRColour == 2){
                        [story2_2TrollSpriteTopRight setNormalImage:story2_2TrollSpriteTRPurple];
                    }
                    
                    story2_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollMLDeathAnim){
                if(story2_2TrollMLFadingOutTimer < 0.25f){
                    story2_2TrollMLFadingOutTimer += dt;
                    story2_2SpriteMidLeftMenu.position = ccp(story2_2SpriteMidLeftMenu.position.x, story2_2SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollMLDeathAnim = FALSE;
                    story2_2TrollMLTimeInPlay = 0.0f;
                    story2_2TrollMLFadingOutTimer = 0.0f;
                    story2_2TrollMLInPlay = FALSE;
                    story2_2TrollMLResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story2_2TrollMLColour == 0){
                        [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLGreen];
                    }
                    else if(story2_2TrollMLColour == 1){
                        [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLGrey];
                    }
                    else if(story2_2TrollMLColour == 2){
                        [story2_2TrollSpriteMidLeft setNormalImage:story2_2TrollSpriteMLPurple];
                    }
                    
                    story2_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollMMDeathAnim){
                if(story2_2TrollMMFadingOutTimer < 0.25f){
                    story2_2TrollMMFadingOutTimer += dt;
                    story2_2SpriteMidMidMenu.position = ccp(story2_2SpriteMidMidMenu.position.x, story2_2SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollMMDeathAnim = FALSE;
                    story2_2TrollMMTimeInPlay = 0.0f;
                    story2_2TrollMMFadingOutTimer = 0.0f;
                    story2_2TrollMMInPlay = FALSE;
                    story2_2TrollMMResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story2_2TrollMMColour == 0){
                        [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMGreen];
                    }
                    else if(story2_2TrollMMColour == 1){
                        [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMGrey];
                    }
                    else if(story2_2TrollMMColour == 2){
                        [story2_2TrollSpriteMidMid setNormalImage:story2_2TrollSpriteMMPurple];
                    }
                    
                    story2_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollMRDeathAnim){
                if(story2_2TrollMRFadingOutTimer < 0.25f){
                    story2_2TrollMRFadingOutTimer += dt;
                    story2_2SpriteMidRightMenu.position = ccp(story2_2SpriteMidRightMenu.position.x, story2_2SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollMRDeathAnim = FALSE;
                    story2_2TrollMRTimeInPlay = 0.0f;
                    story2_2TrollMRFadingOutTimer = 0.0f;
                    story2_2TrollMRInPlay = FALSE;
                    story2_2TrollMRResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story2_2TrollMRColour == 0){
                        [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRGreen];
                    }
                    else if(story2_2TrollMRColour == 1){
                        [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRGrey];
                    }
                    else if(story2_2TrollMRColour == 2){
                        [story2_2TrollSpriteMidRight setNormalImage:story2_2TrollSpriteMRPurple];
                    }
                    
                    story2_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollBLDeathAnim){
                if(story2_2TrollBLFadingOutTimer < 0.25f){
                    story2_2TrollBLFadingOutTimer += dt;
                    story2_2SpriteBotLeftMenu.position = ccp(story2_2SpriteBotLeftMenu.position.x, story2_2SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollBLDeathAnim = FALSE;
                    story2_2TrollBLTimeInPlay = 0.0f;
                    story2_2TrollBLFadingOutTimer = 0.0f;
                    story2_2TrollBLInPlay = FALSE;
                    story2_2TrollBLResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story2_2TrollBLColour == 0){
                        [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLGreen];
                    }
                    else if(story2_2TrollBLColour == 1){
                        [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLGrey];
                    }
                    else if(story2_2TrollBLColour == 2){
                        [story2_2TrollSpriteBotLeft setNormalImage:story2_2TrollSpriteBLPurple];
                    }
                    
                    story2_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollBMDeathAnim){
                if(story2_2TrollBMFadingOutTimer < 0.25f){
                    story2_2TrollBMFadingOutTimer += dt;
                    story2_2SpriteBotMidMenu.position = ccp(story2_2SpriteBotMidMenu.position.x, story2_2SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollBMDeathAnim = FALSE;
                    story2_2TrollBMTimeInPlay = 0.0f;
                    story2_2TrollBMFadingOutTimer = 0.0f;
                    story2_2TrollBMInPlay = FALSE;
                    story2_2TrollBMResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story2_2TrollBMColour == 0){
                        [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMGreen];
                    }
                    else if(story2_2TrollBMColour == 1){
                        [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMGrey];
                    }
                    else if(story2_2TrollBMColour == 2){
                        [story2_2TrollSpriteBotMid setNormalImage:story2_2TrollSpriteBMPurple];
                    }
                    
                    story2_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_2StartTrollBRDeathAnim){
                if(story2_2TrollBRFadingOutTimer < 0.25f){
                    story2_2TrollBRFadingOutTimer += dt;
                    story2_2SpriteBotRightMenu.position = ccp(story2_2SpriteBotRightMenu.position.x, story2_2SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_2StartTrollBRDeathAnim = FALSE;
                    story2_2TrollBRTimeInPlay = 0.0f;
                    story2_2TrollBRFadingOutTimer = 0.0f;
                    story2_2TrollBRInPlay = FALSE;
                    story2_2TrollBRResetTimer = story2_2TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_2TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story2_2TrollBRColour == 0){
                        [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRGreen];
                    }
                    else if(story2_2TrollBRColour == 1){
                        [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRGrey];
                    }
                    else if(story2_2TrollBRColour == 2){
                        [story2_2TrollSpriteBotRight setNormalImage:story2_2TrollSpriteBRPurple];
                    }
                    
                    story2_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story2_2StartTrollTLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollTLMissed = FALSE;
                story2_2TrollTLTimeInPlay = 0.0f;
                story2_2TrollTLInPlay = FALSE;
                story2_2TrollTLResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollTMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollTMMissed = FALSE;
                story2_2TrollTMTimeInPlay = 0.0f;
                story2_2TrollTMInPlay = FALSE;
                story2_2TrollTMResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollTRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollTRMissed = FALSE;
                story2_2TrollTRTimeInPlay = 0.0f;
                story2_2TrollTRInPlay = FALSE;
                story2_2TrollTRResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollMLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollMLMissed = FALSE;
                story2_2TrollMLTimeInPlay = 0.0f;
                story2_2TrollMLInPlay = FALSE;
                story2_2TrollMLResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollMMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollMMMissed = FALSE;
                story2_2TrollMMTimeInPlay = 0.0f;
                story2_2TrollMMInPlay = FALSE;
                story2_2TrollMMResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollMRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollMRMissed = FALSE;
                story2_2TrollMRTimeInPlay = 0.0f;
                story2_2TrollMRInPlay = FALSE;
                story2_2TrollMRResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollBLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollBLMissed = FALSE;
                story2_2TrollBLTimeInPlay = 0.0f;
                story2_2TrollBLInPlay = FALSE;
                story2_2TrollBLResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollBMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollBMMissed = FALSE;
                story2_2TrollBMTimeInPlay = 0.0f;
                story2_2TrollBMInPlay = FALSE;
                story2_2TrollBMResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            if(story2_2StartTrollBRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_2TrollRespawnInterval = (float)i / 100.0f;
                story2_2StartTrollBRMissed = FALSE;
                story2_2TrollBRTimeInPlay = 0.0f;
                story2_2TrollBRInPlay = FALSE;
                story2_2TrollBRResetTimer = story2_2TrollRespawnInterval;
                story2_2LivesRemaining--;
                
                if(story2_2LivesRemaining == 2){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 1){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_2LivesRemaining == 0){
                    story2_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_2Tick = 9;
                }
            }
            
            story2_2ScoreInt = story2_2CurrentScore;
            
            //SCORE CALCULATIONS
            if(story2_2LivesRemaining >= 0) {
                if(story2_2CurrentScore != story2_2PrevScore){
                    if(story2_2CurrentScore >= 0 && story2_2CurrentScore < 10){
                        if(story2_2CurrentScore == 0){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                        }
                        else if(story2_2CurrentScore == 1){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                        }
                        else if(story2_2CurrentScore == 2){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                        }
                        else if(story2_2CurrentScore == 3){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                        }
                        else if(story2_2CurrentScore == 4){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                        }
                        else if(story2_2CurrentScore == 5){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                        }
                        else if(story2_2CurrentScore == 6){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                        }
                        else if(story2_2CurrentScore == 7){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                        }
                        else if(story2_2CurrentScore == 8){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                        }
                        else if(story2_2CurrentScore == 9){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                    }
                    
                    else if(story2_2CurrentScore >= 10 && story2_2CurrentScore <= 99){
                        int lSDS = story2_2ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                        }
                        
                        if(story2_2CurrentScore >= 10 && story2_2CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
                        }
                        else if(story2_2CurrentScore >= 20 && story2_2CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
                        }
                        else if(story2_2CurrentScore >= 30 && story2_2CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
                        }
                        else if(story2_2CurrentScore >= 40 && story2_2CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
                        }
                        else if(story2_2CurrentScore >= 50 && story2_2CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
                        }
                        else if(story2_2CurrentScore >= 60 && story2_2CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
                        }
                        else if(story2_2CurrentScore >= 70 && story2_2CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
                        }
                        else if(story2_2CurrentScore >= 80 && story2_2CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
                        }
                        else if(story2_2CurrentScore >= 90 && story2_2CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
                    }
                    
                    else if(story2_2CurrentScore >= 100 && story2_2CurrentScore <= 999){
                        int story2_2Count = 0;
                        while(story2_2Count < 2){
                            int lSDSs = story2_2ScoreInt % 10;
                            if(story2_2Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                                }
                            }
                            else if(story2_2Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
                                }
                            }
                            story2_2ScoreInt /= 10;
                            story2_2Count++;
                        }
                        
                        if(story2_2CurrentScore >= 100 && story2_2CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber1_2];
                        }
                        else if(story2_2CurrentScore >= 200 && story2_2CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber2_2];
                        }
                        else if(story2_2CurrentScore >= 300 && story2_2CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber3_2];
                        }
                        else if(story2_2CurrentScore >= 400 && story2_2CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber4_2];
                        }
                        else if(story2_2CurrentScore >= 500 && story2_2CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber5_2];
                        }
                        else if(story2_2CurrentScore >= 600 && story2_2CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber6_2];
                        }
                        else if(story2_2CurrentScore >= 700 && story2_2CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber7_2];
                        }
                        else if(story2_2CurrentScore >= 800 && story2_2CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber8_2];
                        }
                        else if(story2_2CurrentScore >= 900 && story2_2CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
                    }
                    
                    else if(story2_2CurrentScore >= 1000 && story2_2CurrentScore <= 9999){
                        int story2_2Count = 0;
                        while(story2_2Count < 3){
                            int lSDSsS = story2_2ScoreInt % 10;
                            if(story2_2Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                                }
                            }
                            else if(story2_2Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
                                }
                            }
                            else if(story2_2Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber9_2];
                                }
                            }
                            story2_2ScoreInt /= 10;
                            story2_2Count++;
                            
                            if(story2_2CurrentScore >= 1000 && story2_2CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber1_1];
                            }
                            else if(story2_2CurrentScore >= 2000 && story2_2CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber2_1];
                            }
                            else if(story2_2CurrentScore >= 3000 && story2_2CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber3_1];
                            }
                            else if(story2_2CurrentScore >= 4000 && story2_2CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber4_1];
                            }
                            else if(story2_2CurrentScore >= 5000 && story2_2CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber5_1];
                            }
                            else if(story2_2CurrentScore >= 6000 && story2_2CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber6_1];
                            }
                            else if(story2_2CurrentScore >= 7000 && story2_2CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber7_1];
                            }
                            else if(story2_2CurrentScore >= 8000 && story2_2CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber8_1];
                            }
                            else if(story2_2CurrentScore >= 9000 && story2_2CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story2_2CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story2_2TrollsRemInt = story2_2TrollsRemaining;
            
            if(story2_2TrollsRemaining > 0){
                if(story2_2TrollsRemaining != story2_2TrollsPrevRem){
                    if(story2_2TrollsRemaining >= 0 && story2_2TrollsRemaining < 10){
                        if(story2_2TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                        }
                        else if(story2_2TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber1_3];
                        }
                        else if(story2_2TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber2_2];
                        }
                        else if(story2_2TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber3_2];
                        }
                        else if(story2_2TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber4_2];
                        }
                        else if(story2_2TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber5_2];
                        }
                        else if(story2_2TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber6_2];
                        }
                        else if(story2_2TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber7_2];
                        }
                        else if(story2_2TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber8_2];
                        }
                        else if(story2_2TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber9_2];
                        }
                        
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                    }
                    
                    else if(story2_2TrollsRemaining >= 10 && story2_2TrollsRemaining <= 99){
                        int lSDS = story2_2TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber9_2];
                        }
                        
                        if(story2_2TrollsRemaining >= 10 && story2_2TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber1_2];
                        }
                        else if(story2_2TrollsRemaining >= 20 && story2_2TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber2_1];
                        }
                        else if(story2_2TrollsRemaining >= 30 && story2_2TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber3_1];
                        }
                        else if(story2_2TrollsRemaining >= 40 && story2_2TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber4_1];
                        }
                        else if(story2_2TrollsRemaining >= 50 && story2_2TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber5_1];
                        }
                        else if(story2_2TrollsRemaining >= 60 && story2_2TrollsRemaining <= 69){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber6_1];
                        }
                        else if(story2_2TrollsRemaining >= 70 && story2_2TrollsRemaining <= 79){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber7_1];
                        }
                        else if(story2_2TrollsRemaining >= 80 && story2_2TrollsRemaining <= 89){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber8_1];
                        }
                        else if(story2_2TrollsRemaining >= 90 && story2_2TrollsRemaining <= 99){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber0_1];
                    }
                    
                    else if(story2_2TrollsRemaining >= 100){
                        if(story2_2TrollsRemaining == 110){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber1_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 109){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber9_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 108){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber8_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 107){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber7_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 106){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber6_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 105){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber5_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 104){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber4_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 103){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber3_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 102){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber2_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 101){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber1_3];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                        else if(story2_2TrollsRemaining == 100){
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                            [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber1_1];
                        }
                    }
                    
                    else if(story2_2TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber0_1];
                    }
                    
                    story2_2TrollsPrevRem = story2_2TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_2TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_2TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story2_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_2TrollsLeftNumber0_1];
                story2_2Tick = 10;
            }
            
        }
        else if(story2_2Tick == 9){
            if(!story2_2TimeUpDrawn){
                story2_2TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story2_2TimeUpSprite.position = ccp(240, 836);
                [self addChild: story2_2TimeUpSprite];
                [self scheduleOnce:@selector(story2_2GameOver:) delay:2];
                story2_2TimeUpDrawn = TRUE;
            }
            else{
                if(story2_2TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story2_2TimeUpSprite.position = ccp(story2_2TimeUpSprite.position.x, story2_2TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story2_2Tick == 10){
            //LEVEL COMPLETE
            if(!story2_2AllTrollsDrawn){
                story2_2AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/boss_incoming_screen_640.png"];
                story2_2AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story2_2AllTrollsSprite];
                [self scheduleOnce:@selector(story2_2LevelComplete:) delay:5];
                story2_2AllTrollsDrawn = TRUE;
                story2_2SpriteBackLayer.position = ccp(-1000, -1000);
                story2_2SpriteMidLayer.position = ccp(-1000, -1000);
                story2_2SpriteFrontLayer.position = ccp(-1000, -1000);
            }
            else{
                if(story2_2AllTrollsSprite.position.x >= 240){
                    //DO NOTHING
                }
                else{
                    story2_2AllTrollsSprite.position = ccp(story2_2AllTrollsSprite.position.x +10, story2_2AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadstory2_2Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"database"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"granquier"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"kappa"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"kreytos"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"mantin"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"orksome"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"salty"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"wooferz"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFive"] isEqualToString:@"zeke"]){
        story2_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story2_2CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        story2_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_5.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story2_2TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story2_2DialogueMenu = [CCMenu menuWithItems: story2_2DialogueSprite, nil];
    
    story2_2CharacterSprite.position = ccp(25, 100);
    story2_2CharacterName.position = ccp(120, 86);
    story2_2DialogueSprite.position = ccp(0, -120);
    story2_2TapToContinue.position = ccp(300, 95);
    
    [self addChild: story2_2CharacterSprite];
    [self addChild: story2_2CharacterName];
    [self addChild: story2_2TapToContinue];
    [self addChild: story2_2DialogueMenu];
}

-(void) loadstory2_2Sprites{
    story2_2VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_2VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story2_2VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    story2_2VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    story2_2VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(topRightExtraTouched:)];
    
    story2_2VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midLeftExtraTouched:)];
    
    story2_2VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    story2_2VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midRightExtraTouched:)];
    
    story2_2VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botLeftExtraTouched:)];
    
    story2_2VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    story2_2VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(botRightExtraTouched:)];
    
    story2_2VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story2_2VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story2_2VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story2_2VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story2_2VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story2_2VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story2_2VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story2_2VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story2_2VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story2_2VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story2_2VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story2_2VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story2_2VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story2_2VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story2_2VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story2_2VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story2_2VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story2_2VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story2_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_2TrollTLColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_2TrollTLColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_2TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story2_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_2TrollTMColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_2TrollTMColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_2TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story2_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_2TrollTRColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_2TrollTRColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_2TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story2_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_2TrollMLColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_2TrollMLColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_2TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story2_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_2TrollMMColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_2TrollMMColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_2TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story2_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                story2_2TrollMRColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story2_2TrollMRColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story2_2TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story2_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_2TrollBLColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_2TrollBLColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_2TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story2_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                story2_2TrollBMColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story2_2TrollBMColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story2_2TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story2_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                story2_2TrollBRColour = 0;
            }
            else if(i == 1){
                story2_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story2_2TrollBRColour = 1;
            }
            else if(i == 2){
                story2_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story2_2TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story2_2TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_2TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_2TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_2TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story2_2TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_2TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_2TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_2TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story2_2SpriteTopLeftMenu = [CCMenu menuWithItems: story2_2TrollSpriteTopLeft, nil];
    story2_2SpriteTopMidMenu = [CCMenu menuWithItems: story2_2TrollSpriteTopMid, nil];
    story2_2SpriteTopRightMenu = [CCMenu menuWithItems: story2_2TrollSpriteTopRight, nil];
    story2_2SpriteMidLeftMenu = [CCMenu menuWithItems: story2_2TrollSpriteMidLeft, nil];
    story2_2SpriteMidMidMenu = [CCMenu menuWithItems: story2_2TrollSpriteMidMid, nil];
    story2_2SpriteMidRightMenu = [CCMenu menuWithItems: story2_2TrollSpriteMidRight, nil];
    story2_2SpriteBotLeftMenu = [CCMenu menuWithItems: story2_2TrollSpriteBotLeft, nil];
    story2_2SpriteBotMidMenu = [CCMenu menuWithItems: story2_2TrollSpriteBotMid, nil];
    story2_2SpriteBotRightMenu = [CCMenu menuWithItems: story2_2TrollSpriteBotRight, nil];
    
    story2_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story2_2SpriteTopMidMenu.position = ccp(-1000, -1000);
    story2_2SpriteTopRightMenu.position = ccp(-1000, -1000);
    story2_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story2_2SpriteMidMidMenu.position = ccp(-1000, -1000);
    story2_2SpriteMidRightMenu.position = ccp(-1000, -1000);
    story2_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story2_2SpriteBotMidMenu.position = ccp(-1000, -1000);
    story2_2SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story2_2TrollTopLeftChat.position = ccp(-1000, -1000);
    story2_2TrollTopMidChat.position = ccp(-1000, -1000);
    story2_2TrollTopRightChat.position = ccp(-1000, -1000);
    story2_2TrollMidLeftChat.position = ccp(-1000, -1000);
    story2_2TrollMidMidChat.position = ccp(-1000, -1000);
    story2_2TrollMidRightChat.position = ccp(-1000, -1000);
    story2_2TrollBotLeftChat.position = ccp(-1000, -1000);
    story2_2TrollBotMidChat.position = ccp(-1000, -1000);
    story2_2TrollBotRightChat.position = ccp(-1000, -1000);
    
    story2_2VolcanoMenu = [CCMenu menuWithItems: story2_2VolcanoBackSpriteTopLeft, story2_2VolcanoBackSpriteTopMid, story2_2VolcanoBackSpriteTopRight,
                           story2_2VolcanoBackSpriteMidLeft, story2_2VolcanoBackSpriteMidMid, story2_2VolcanoBackSpriteMidRight,
                           story2_2VolcanoBackSpriteBotLeft, story2_2VolcanoBackSpriteBotMid, story2_2VolcanoBackSpriteBotRight, nil];
    
    [story2_2SpriteMidLayer addChild: story2_2SpriteTopLeftMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteTopMidMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteTopRightMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteMidLeftMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteMidMidMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteMidRightMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteBotLeftMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteBotMidMenu];
    [story2_2SpriteMidLayer addChild: story2_2SpriteBotRightMenu];
    
    [story2_2SpriteMidLayer addChild: story2_2TrollTopLeftChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollTopMidChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollTopRightChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollMidLeftChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollMidMidChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollMidRightChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollBotLeftChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollBotMidChat];
    [story2_2SpriteMidLayer addChild: story2_2TrollBotRightChat];
    
    [story2_2SpriteBackLayer addChild: story2_2VolcanoMenu];
    
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteTopLeft];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteTopMid];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteTopRight];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteMidLeft];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteMidMid];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteMidRight];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteBotLeft];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteBotMid];
    [story2_2SpriteFrontLayer addChild: story2_2VolcanoFrontSpriteBotRight];
    
    story2_2SpriteBackLayer.position = ccp(-1000, -1000);
    story2_2SpriteMidLayer.position = ccp(-1000, -1000);
    story2_2SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadstory2_2Text{
    story2_2ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_2ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_2ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_2ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story2_2TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_2TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2TrollsLeftNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_2TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_2TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_2TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_2TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_2TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2TrollsLeftNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_2TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2TrollsLeftNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_2TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2TrollsLeftNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_2TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_2TrollsLeftNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story2_2ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                               selectedImage:NULL];
    
    story2_2ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story2_2ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story2_2ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                            selectedSprite:NULL];
    
    story2_2ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    story2_2TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text_white.png"
                                                    selectedImage:NULL];
    
    story2_2TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]
                                                               selectedSprite:NULL];
    
    story2_2TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]
                                                               selectedSprite:NULL];
    
    story2_2TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                                 selectedSprite:NULL];
    
    story2_2LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story2_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story2_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story2_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    story2_2ScoreMenu = [CCMenu menuWithItems:story2_2ScoreText, story2_2ScoreSpriteDigitOne, story2_2ScoreSpriteDigitTwo,
                         story2_2ScoreSpriteDigitThree, story2_2ScoreSpriteDigitFour, nil];
    
    [story2_2ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story2_2TrollsLeftMenu = [CCMenu menuWithItems: story2_2TrollsLeftText, story2_2TrollsLeftSpriteDigitOne, story2_2TrollsLeftSpriteDigitTwo, story2_2TrollsLeftSpriteDigitThree, nil];
    [story2_2TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story2_2LivesMenu = [CCMenu menuWithItems: story2_2LivesText, story2_2LivesSpriteOne, story2_2LivesSpriteTwo, story2_2LivesSpriteThree, nil];
    [story2_2LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story2_2ScoreMenu.position = ccp(72, 308);
    story2_2TrollsLeftMenu.position = ccp(100, 286);
    story2_2LivesMenu.position = ccp(400, 308);
    
    [story2_2ScoreSpriteDigitOne setTag: 101];
    [story2_2ScoreSpriteDigitTwo setTag: 102];
    [story2_2ScoreSpriteDigitThree setTag: 103];
    [story2_2ScoreSpriteDigitFour setTag: 104];
    
    [story2_2TrollsLeftSpriteDigitOne setTag: 201];
    [story2_2TrollsLeftSpriteDigitTwo setTag: 202];
    [story2_2TrollsLeftSpriteDigitThree setTag: 203];
    
    [story2_2StatsLayer addChild: story2_2ScoreMenu];
    [story2_2StatsLayer addChild: story2_2TrollsLeftMenu];
    [story2_2StatsLayer addChild: story2_2LivesMenu];
    
    story2_2StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawstory2_2Elements{
    story2_2SpriteBackLayer.position = ccp(0, 0);
    story2_2SpriteMidLayer.position = ccp(0, 0);
    story2_2SpriteFrontLayer.position = ccp(0, 0);
    story2_2StatsLayer.position = ccp(0, 0);
    
    story2_2ScoreInt = story2_2CurrentScore;
    
    if(story2_2CurrentScore >= 0 && story2_2CurrentScore < 10){
        if(story2_2CurrentScore == 0){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
        }
        else if(story2_2CurrentScore == 1){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
        }
        else if(story2_2CurrentScore == 2){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
        }
        else if(story2_2CurrentScore == 3){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
        }
        else if(story2_2CurrentScore == 4){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
        }
        else if(story2_2CurrentScore == 5){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
        }
        else if(story2_2CurrentScore == 6){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
        }
        else if(story2_2CurrentScore == 7){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
        }
        else if(story2_2CurrentScore == 8){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
        }
        else if(story2_2CurrentScore == 9){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
    }
    
    else if(story2_2CurrentScore >= 10 && story2_2CurrentScore <= 99){
        int lSDS = story2_2ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
        }
        
        if(story2_2CurrentScore >= 10 && story2_2CurrentScore <= 19){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
        }
        else if(story2_2CurrentScore >= 20 && story2_2CurrentScore <= 29){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
        }
        else if(story2_2CurrentScore >= 30 && story2_2CurrentScore <= 39){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
        }
        else if(story2_2CurrentScore >= 40 && story2_2CurrentScore <= 49){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
        }
        else if(story2_2CurrentScore >= 50 && story2_2CurrentScore <= 59){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
        }
        else if(story2_2CurrentScore >= 60 && story2_2CurrentScore <= 69){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
        }
        else if(story2_2CurrentScore >= 70 && story2_2CurrentScore <= 79){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
        }
        else if(story2_2CurrentScore >= 80 && story2_2CurrentScore <= 89){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
        }
        else if(story2_2CurrentScore >= 90 && story2_2CurrentScore <= 99){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
    }
    
    else if(story2_2CurrentScore >= 100 && story2_2CurrentScore <= 999){
        int story2_2Count = 0;
        while(story2_2Count < 2){
            int lSDSs = story2_2ScoreInt % 10;
            if(story2_2Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                }
            }
            else if(story2_2Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
                }
            }
            story2_2ScoreInt /= 10;
            story2_2Count++;
        }
        
        if(story2_2CurrentScore >= 100 && story2_2CurrentScore <= 199){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber1_2];
        }
        else if(story2_2CurrentScore >= 200 && story2_2CurrentScore <= 299){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber2_2];
        }
        else if(story2_2CurrentScore >= 300 && story2_2CurrentScore <= 399){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber3_2];
        }
        else if(story2_2CurrentScore >= 400 && story2_2CurrentScore <= 499){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber4_2];
        }
        else if(story2_2CurrentScore >= 500 && story2_2CurrentScore <= 599){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber5_2];
        }
        else if(story2_2CurrentScore >= 600 && story2_2CurrentScore <= 699){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber6_2];
        }
        else if(story2_2CurrentScore >= 700 && story2_2CurrentScore <= 799){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber7_2];
        }
        else if(story2_2CurrentScore >= 800 && story2_2CurrentScore <= 899){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber8_2];
        }
        else if(story2_2CurrentScore >= 900 && story2_2CurrentScore <= 999){
            [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
    }
    
    else if(story2_2CurrentScore >= 1000 && story2_2CurrentScore <= 9999){
        int story2_2Count = 0;
        while(story2_2Count < 3){
            int lSDSsS = story2_2ScoreInt % 10;
            if(story2_2Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber9_4];
                }
            }
            else if(story2_2Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber9_3];
                }
            }
            else if(story2_2Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber9_2];
                }
            }
            story2_2ScoreInt /= 10;
            story2_2Count++;
            
            if(story2_2CurrentScore >= 1000 && story2_2CurrentScore <= 1999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber1_1];
            }
            else if(story2_2CurrentScore >= 2000 && story2_2CurrentScore <= 2999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber2_1];
            }
            else if(story2_2CurrentScore >= 3000 && story2_2CurrentScore <= 3999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber3_1];
            }
            else if(story2_2CurrentScore >= 4000 && story2_2CurrentScore <= 4999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber4_1];
            }
            else if(story2_2CurrentScore >= 5000 && story2_2CurrentScore <= 5999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber5_1];
            }
            else if(story2_2CurrentScore >= 6000 && story2_2CurrentScore <= 6999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber6_1];
            }
            else if(story2_2CurrentScore >= 7000 && story2_2CurrentScore <= 7999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber7_1];
            }
            else if(story2_2CurrentScore >= 8000 && story2_2CurrentScore <= 8999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber8_1];
            }
            else if(story2_2CurrentScore >= 9000 && story2_2CurrentScore <= 9999){
                [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber9_1];
            }
        }
    }
    
    else if(story2_2CurrentScore <= 0){
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 104] setNormalImage:story2_2ScoreNumber0_4];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 103] setNormalImage:story2_2ScoreNumber0_3];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 102] setNormalImage:story2_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_2ScoreMenu getChildByTag: 101] setNormalImage:story2_2ScoreNumber0_1];
    }
    
    if(story2_2LivesRemaining == 2){
        story2_2LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(story2_2LivesRemaining == 1){
        story2_2LivesSpriteThree.position = ccp(-1000, -1000);
        story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(story2_2LivesRemaining == 0){
        story2_2LivesSpriteThree.position = ccp(-1000, -1000);
        story2_2LivesSpriteTwo.position = ccp(-1000, -1000);
        story2_2LivesSpriteOne.position = ccp(-1000, -1000);
    }
}

-(void) dialogueTouched:(id)sender{
    id fadeAction = [CCFadeOut actionWithDuration:0.5f];
    [story2_2DialogueSprite runAction: fadeAction];
    story2_2DialogueTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story2_2StartTrollTLDeathAnim || story2_2StartTrollTLMissed || story2_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story2_2TrollTLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story2_2StartTrollTMDeathAnim || story2_2StartTrollTMMissed || story2_2TrollTMResetTimer > 0){
        
    }
    else{
        story2_2TrollTMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story2_2StartTrollTRDeathAnim || story2_2StartTrollTRMissed || story2_2TrollTRResetTimer > 0){
        
    }
    else{
        story2_2TrollTRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story2_2StartTrollMLDeathAnim || story2_2StartTrollMLMissed || story2_2TrollMLResetTimer > 0){
        
    }
    else{
        story2_2TrollMLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story2_2StartTrollMMDeathAnim || story2_2StartTrollMMMissed || story2_2TrollMMResetTimer > 0){
        
    }
    else{
        story2_2TrollMMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story2_2StartTrollMRDeathAnim || story2_2StartTrollMRMissed || story2_2TrollMRResetTimer > 0){
        
    }
    else{
        story2_2TrollMRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story2_2StartTrollBLDeathAnim || story2_2StartTrollBLMissed || story2_2TrollBLResetTimer > 0){
        
    }
    else{
        story2_2TrollBLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story2_2StartTrollBMDeathAnim || story2_2StartTrollBMMissed || story2_2TrollBMResetTimer > 0){
        
    }
    else{
        story2_2TrollBMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story2_2StartTrollBRDeathAnim || story2_2StartTrollBRMissed || story2_2TrollBRResetTimer > 0){
        
    }
    else{
        story2_2TrollBRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story2_2StartTrollTLDeathAnim || story2_2StartTrollTLMissed || story2_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story2_2TrollTLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story2_2StartTrollTMDeathAnim || story2_2StartTrollTMMissed || story2_2TrollTMResetTimer > 0){
        
    }
    else{
        story2_2TrollTMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story2_2StartTrollTRDeathAnim || story2_2StartTrollTRMissed || story2_2TrollTRResetTimer > 0){
        
    }
    else{
        story2_2TrollTRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story2_2StartTrollMLDeathAnim || story2_2StartTrollMLMissed || story2_2TrollMLResetTimer > 0){
        
    }
    else{
        story2_2TrollMLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story2_2StartTrollMMDeathAnim || story2_2StartTrollMMMissed || story2_2TrollMMResetTimer > 0){
        
    }
    else{
        story2_2TrollMMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story2_2StartTrollMRDeathAnim || story2_2StartTrollMRMissed || story2_2TrollMRResetTimer > 0){
        
    }
    else{
        story2_2TrollMRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story2_2StartTrollBLDeathAnim || story2_2StartTrollBLMissed || story2_2TrollBLResetTimer > 0){
        
    }
    else{
        story2_2TrollBLTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story2_2StartTrollBMDeathAnim || story2_2StartTrollBMMissed || story2_2TrollBMResetTimer > 0){
        
    }
    else{
        story2_2TrollBMTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story2_2StartTrollBRDeathAnim || story2_2StartTrollBRMissed || story2_2TrollBRResetTimer > 0){
        
    }
    else{
        story2_2TrollBRTouched = TRUE;
        story2_2CurrentScore += 5;
        story2_2TrollsRemaining--;
    }
}

-(void) story2_2GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story2_2CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story2_2LevelComplete:(id)sender{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [[NSUserDefaults standardUserDefaults] setInteger:story2_2CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story2_2LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:5 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:2 scene: [BossScene_2 node] withColor:ccBLACK]];
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_boss_theme.mp3"];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story2_2TrollTopLeftChat release];
    [story2_2TrollTopMidChat release];
    [story2_2TrollTopRightChat release];
    [story2_2TrollMidLeftChat release];
    [story2_2TrollMidMidChat release];
    [story2_2TrollMidRightChat release];
    [story2_2TrollBotLeftChat release];
    [story2_2TrollBotMidChat release];
    [story2_2TrollBotRightChat release];
    [story2_2TrollSpriteTLGreen release];
    [story2_2TrollSpriteTLGrey release];
    [story2_2TrollSpriteTLPurple release];
    [story2_2TrollSpriteTMGreen release];
    [story2_2TrollSpriteTMGrey release];
    [story2_2TrollSpriteTMPurple release];
    [story2_2TrollSpriteTRGreen release];
    [story2_2TrollSpriteTRGrey release];
    [story2_2TrollSpriteTRPurple release];
    [story2_2TrollSpriteMLGreen release];
    [story2_2TrollSpriteMLGrey release];
    [story2_2TrollSpriteMLPurple release];
    [story2_2TrollSpriteMMGreen release];
    [story2_2TrollSpriteMMGrey release];
    [story2_2TrollSpriteMMPurple release];
    [story2_2TrollSpriteMRGreen release];
    [story2_2TrollSpriteMRGrey release];
    [story2_2TrollSpriteMRPurple release];
    [story2_2TrollSpriteBLGreen release];
    [story2_2TrollSpriteBLGrey release];
    [story2_2TrollSpriteBLPurple release];
    [story2_2TrollSpriteBMGreen release];
    [story2_2TrollSpriteBMGrey release];
    [story2_2TrollSpriteBMPurple release];
    [story2_2TrollSpriteBRGreen release];
    [story2_2TrollSpriteBRGrey release];
    [story2_2TrollSpriteBRPurple release];
    [story2_2TrollSpriteTLDeadGreen release];
    [story2_2TrollSpriteTLDeadGrey release];
    [story2_2TrollSpriteTLDeadPurple release];
    [story2_2TrollSpriteTMDeadGreen release];
    [story2_2TrollSpriteTMDeadGrey release];
    [story2_2TrollSpriteTMDeadPurple release];
    [story2_2TrollSpriteTRDeadGreen release];
    [story2_2TrollSpriteTRDeadGrey release];
    [story2_2TrollSpriteTRDeadPurple release];
    [story2_2TrollSpriteMLDeadGreen release];
    [story2_2TrollSpriteMLDeadGrey release];
    [story2_2TrollSpriteMLDeadPurple release];
    [story2_2TrollSpriteMMDeadGreen release];
    [story2_2TrollSpriteMMDeadGrey release];
    [story2_2TrollSpriteMMDeadPurple release];
    [story2_2TrollSpriteMRDeadGreen release];
    [story2_2TrollSpriteMRDeadGrey release];
    [story2_2TrollSpriteMRDeadPurple release];
    [story2_2TrollSpriteBLDeadGreen release];
    [story2_2TrollSpriteBLDeadGrey release];
    [story2_2TrollSpriteBLDeadPurple release];
    [story2_2TrollSpriteBMDeadGreen release];
    [story2_2TrollSpriteBMDeadGrey release];
    [story2_2TrollSpriteBMDeadPurple release];
    [story2_2TrollSpriteBRDeadGreen release];
    [story2_2TrollSpriteBRDeadGrey release];
    [story2_2TrollSpriteBRDeadPurple release];
    [story2_2ScoreNumber0_1 release];
    [story2_2ScoreNumber0_2 release];
    [story2_2ScoreNumber0_3 release];
    [story2_2ScoreNumber0_4 release];
    [story2_2ScoreNumber1_1 release];
    [story2_2ScoreNumber1_2 release];
    [story2_2ScoreNumber1_3 release];
    [story2_2ScoreNumber1_4 release];
    [story2_2ScoreNumber2_1 release];
    [story2_2ScoreNumber2_2 release];
    [story2_2ScoreNumber2_3 release];
    [story2_2ScoreNumber2_4 release];
    [story2_2ScoreNumber3_1 release];
    [story2_2ScoreNumber3_2 release];
    [story2_2ScoreNumber3_3 release];
    [story2_2ScoreNumber3_4 release];
    [story2_2ScoreNumber4_1 release];
    [story2_2ScoreNumber4_2 release];
    [story2_2ScoreNumber4_3 release];
    [story2_2ScoreNumber4_4 release];
    [story2_2ScoreNumber5_1 release];
    [story2_2ScoreNumber5_2 release];
    [story2_2ScoreNumber5_3 release];
    [story2_2ScoreNumber5_4 release];
    [story2_2ScoreNumber6_1 release];
    [story2_2ScoreNumber6_2 release];
    [story2_2ScoreNumber6_3 release];
    [story2_2ScoreNumber6_4 release];
    [story2_2ScoreNumber7_1 release];
    [story2_2ScoreNumber7_2 release];
    [story2_2ScoreNumber7_3 release];
    [story2_2ScoreNumber7_4 release];
    [story2_2ScoreNumber8_1 release];
    [story2_2ScoreNumber8_2 release];
    [story2_2ScoreNumber8_3 release];
    [story2_2ScoreNumber8_4 release];
    [story2_2ScoreNumber9_1 release];
    [story2_2ScoreNumber9_2 release];
    [story2_2ScoreNumber9_3 release];
    [story2_2ScoreNumber9_4 release];
    [story2_2TrollsLeftNumber0_1 release];
    [story2_2TrollsLeftNumber0_2 release];
    [story2_2TrollsLeftNumber0_3 release];
    [story2_2TrollsLeftNumber1_1 release];
    [story2_2TrollsLeftNumber1_2 release];
    [story2_2TrollsLeftNumber1_3 release];
    [story2_2TrollsLeftNumber2_1 release];
    [story2_2TrollsLeftNumber2_2 release];
    [story2_2TrollsLeftNumber3_1 release];
    [story2_2TrollsLeftNumber3_2 release];
    [story2_2TrollsLeftNumber4_1 release];
    [story2_2TrollsLeftNumber4_2 release];
    [story2_2TrollsLeftNumber5_1 release];
    [story2_2TrollsLeftNumber5_2 release];
    [story2_2TrollsLeftNumber6_1 release];
    [story2_2TrollsLeftNumber6_2 release];
    [story2_2TrollsLeftNumber7_1 release];
    [story2_2TrollsLeftNumber7_2 release];
    [story2_2TrollsLeftNumber8_1 release];
    [story2_2TrollsLeftNumber8_2 release];
    [story2_2TrollsLeftNumber9_1 release];
    [story2_2TrollsLeftNumber9_2 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
