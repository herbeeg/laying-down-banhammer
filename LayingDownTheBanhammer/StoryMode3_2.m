//
//  StoryMode3_2.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode3_2.h"
#import "GameOver.h"
#import "BossSceneFinal.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode3_2

CCSprite *story3_2Background;
CCSprite *story3_2Intro3;
CCSprite *story3_2Intro2;
CCSprite *story3_2Intro1;
CCSprite *story3_2Intro0;

CCLayer *story3_2StatsLayer;
CCLayer *story3_2SpriteFrontLayer;
CCLayer *story3_2SpriteMidLayer;
CCLayer *story3_2SpriteBackLayer;

CCMenu *story3_2DialogueMenu;

CCSprite *story3_2CharacterSprite;
CCSprite *story3_2CharacterName;
CCMenuItemImage *story3_2DialogueSprite;

CCMenu *story3_2ScoreMenu;
CCMenu *story3_2LivesMenu;
CCMenu *story3_2TrollsLeftMenu;

CCMenu *story3_2SpriteTopLeftMenu;
CCMenu *story3_2SpriteTopMidMenu;
CCMenu *story3_2SpriteTopRightMenu;
CCMenu *story3_2SpriteMidLeftMenu;
CCMenu *story3_2SpriteMidMidMenu;
CCMenu *story3_2SpriteMidRightMenu;
CCMenu *story3_2SpriteBotLeftMenu;
CCMenu *story3_2SpriteBotMidMenu;
CCMenu *story3_2SpriteBotRightMenu;

CCMenuItemImage *story3_2ScoreText;
CCMenuItemSprite *story3_2ScoreSpriteDigitOne;
CCMenuItemSprite *story3_2ScoreSpriteDigitTwo;
CCMenuItemSprite *story3_2ScoreSpriteDigitThree;
CCMenuItemSprite *story3_2ScoreSpriteDigitFour;

CCMenuItemImage *story3_2LivesText;
CCMenuItemSprite *story3_2LivesSpriteOne;
CCMenuItemSprite *story3_2LivesSpriteTwo;
CCMenuItemSprite *story3_2LivesSpriteThree;

CCMenuItemImage *story3_2TrollsLeftText;
CCMenuItemSprite *story3_2TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story3_2TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story3_2TrollsLeftSpriteDigitThree;

CCSprite *story3_2VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story3_2VolcanoBackSpriteTopLeft;
CCSprite *story3_2VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story3_2VolcanoBackSpriteTopMid;
CCSprite *story3_2VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story3_2VolcanoBackSpriteTopRight;
CCSprite *story3_2VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story3_2VolcanoBackSpriteMidLeft;
CCSprite *story3_2VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story3_2VolcanoBackSpriteMidMid;
CCSprite *story3_2VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story3_2VolcanoBackSpriteMidRight;
CCSprite *story3_2VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story3_2VolcanoBackSpriteBotLeft;
CCSprite *story3_2VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story3_2VolcanoBackSpriteBotMid;
CCSprite *story3_2VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story3_2VolcanoBackSpriteBotRight;

CCMenu *story3_2VolcanoMenu;

int story3_2TrollTLColour = -1;
int story3_2TrollTMColour = -1;
int story3_2TrollTRColour = -1;
int story3_2TrollMLColour = -1;
int story3_2TrollMMColour = -1;
int story3_2TrollMRColour = -1;
int story3_2TrollBLColour = -1;
int story3_2TrollBMColour = -1;
int story3_2TrollBRColour = -1;

CCMenuItemSprite *story3_2TrollSpriteTopLeft;
CCMenuItemSprite *story3_2TrollSpriteTopMid;
CCMenuItemSprite *story3_2TrollSpriteTopRight;
CCMenuItemSprite *story3_2TrollSpriteMidLeft;
CCMenuItemSprite *story3_2TrollSpriteMidMid;
CCMenuItemSprite *story3_2TrollSpriteMidRight;
CCMenuItemSprite *story3_2TrollSpriteBotLeft;
CCMenuItemSprite *story3_2TrollSpriteBotMid;
CCMenuItemSprite *story3_2TrollSpriteBotRight;

CCSprite *story3_2TrollSpriteTLGreen;
CCSprite *story3_2TrollSpriteTLGrey;
CCSprite *story3_2TrollSpriteTLPurple;
CCSprite *story3_2TrollSpriteTMGreen;
CCSprite *story3_2TrollSpriteTMGrey;
CCSprite *story3_2TrollSpriteTMPurple;
CCSprite *story3_2TrollSpriteTRGreen;
CCSprite *story3_2TrollSpriteTRGrey;
CCSprite *story3_2TrollSpriteTRPurple;
CCSprite *story3_2TrollSpriteMLGreen;
CCSprite *story3_2TrollSpriteMLGrey;
CCSprite *story3_2TrollSpriteMLPurple;
CCSprite *story3_2TrollSpriteMMGreen;
CCSprite *story3_2TrollSpriteMMGrey;
CCSprite *story3_2TrollSpriteMMPurple;
CCSprite *story3_2TrollSpriteMRGreen;
CCSprite *story3_2TrollSpriteMRGrey;
CCSprite *story3_2TrollSpriteMRPurple;
CCSprite *story3_2TrollSpriteBLGreen;
CCSprite *story3_2TrollSpriteBLGrey;
CCSprite *story3_2TrollSpriteBLPurple;
CCSprite *story3_2TrollSpriteBMGreen;
CCSprite *story3_2TrollSpriteBMGrey;
CCSprite *story3_2TrollSpriteBMPurple;
CCSprite *story3_2TrollSpriteBRGreen;
CCSprite *story3_2TrollSpriteBRGrey;
CCSprite *story3_2TrollSpriteBRPurple;

CCSprite *story3_2TrollSpriteTLDeadGreen;
CCSprite *story3_2TrollSpriteTLDeadGrey;
CCSprite *story3_2TrollSpriteTLDeadPurple;
CCSprite *story3_2TrollSpriteTMDeadGreen;
CCSprite *story3_2TrollSpriteTMDeadGrey;
CCSprite *story3_2TrollSpriteTMDeadPurple;
CCSprite *story3_2TrollSpriteTRDeadGreen;
CCSprite *story3_2TrollSpriteTRDeadGrey;
CCSprite *story3_2TrollSpriteTRDeadPurple;
CCSprite *story3_2TrollSpriteMLDeadGreen;
CCSprite *story3_2TrollSpriteMLDeadGrey;
CCSprite *story3_2TrollSpriteMLDeadPurple;
CCSprite *story3_2TrollSpriteMMDeadGreen;
CCSprite *story3_2TrollSpriteMMDeadGrey;
CCSprite *story3_2TrollSpriteMMDeadPurple;
CCSprite *story3_2TrollSpriteMRDeadGreen;
CCSprite *story3_2TrollSpriteMRDeadGrey;
CCSprite *story3_2TrollSpriteMRDeadPurple;
CCSprite *story3_2TrollSpriteBLDeadGreen;
CCSprite *story3_2TrollSpriteBLDeadGrey;
CCSprite *story3_2TrollSpriteBLDeadPurple;
CCSprite *story3_2TrollSpriteBMDeadGreen;
CCSprite *story3_2TrollSpriteBMDeadGrey;
CCSprite *story3_2TrollSpriteBMDeadPurple;
CCSprite *story3_2TrollSpriteBRDeadGreen;
CCSprite *story3_2TrollSpriteBRDeadGrey;
CCSprite *story3_2TrollSpriteBRDeadPurple;

CCSprite *story3_2ScoreNumber0_1;
CCSprite *story3_2ScoreNumber0_2;
CCSprite *story3_2ScoreNumber0_3;
CCSprite *story3_2ScoreNumber0_4;
CCSprite *story3_2ScoreNumber1_1;
CCSprite *story3_2ScoreNumber1_2;
CCSprite *story3_2ScoreNumber1_3;
CCSprite *story3_2ScoreNumber1_4;
CCSprite *story3_2ScoreNumber2_1;
CCSprite *story3_2ScoreNumber2_2;
CCSprite *story3_2ScoreNumber2_3;
CCSprite *story3_2ScoreNumber2_4;
CCSprite *story3_2ScoreNumber3_1;
CCSprite *story3_2ScoreNumber3_2;
CCSprite *story3_2ScoreNumber3_3;
CCSprite *story3_2ScoreNumber3_4;
CCSprite *story3_2ScoreNumber4_1;
CCSprite *story3_2ScoreNumber4_2;
CCSprite *story3_2ScoreNumber4_3;
CCSprite *story3_2ScoreNumber4_4;
CCSprite *story3_2ScoreNumber5_1;
CCSprite *story3_2ScoreNumber5_2;
CCSprite *story3_2ScoreNumber5_3;
CCSprite *story3_2ScoreNumber5_4;
CCSprite *story3_2ScoreNumber6_1;
CCSprite *story3_2ScoreNumber6_2;
CCSprite *story3_2ScoreNumber6_3;
CCSprite *story3_2ScoreNumber6_4;
CCSprite *story3_2ScoreNumber7_1;
CCSprite *story3_2ScoreNumber7_2;
CCSprite *story3_2ScoreNumber7_3;
CCSprite *story3_2ScoreNumber7_4;
CCSprite *story3_2ScoreNumber8_1;
CCSprite *story3_2ScoreNumber8_2;
CCSprite *story3_2ScoreNumber8_3;
CCSprite *story3_2ScoreNumber8_4;
CCSprite *story3_2ScoreNumber9_1;
CCSprite *story3_2ScoreNumber9_2;
CCSprite *story3_2ScoreNumber9_3;
CCSprite *story3_2ScoreNumber9_4;

CCSprite *story3_2TrollsLeftNumber0_1;
CCSprite *story3_2TrollsLeftNumber0_2;
CCSprite *story3_2TrollsLeftNumber0_3;
CCSprite *story3_2TrollsLeftNumber1_1;
CCSprite *story3_2TrollsLeftNumber1_2;
CCSprite *story3_2TrollsLeftNumber1_3;
CCSprite *story3_2TrollsLeftNumber2_1;
CCSprite *story3_2TrollsLeftNumber2_2;
CCSprite *story3_2TrollsLeftNumber3_1;
CCSprite *story3_2TrollsLeftNumber3_2;
CCSprite *story3_2TrollsLeftNumber4_1;
CCSprite *story3_2TrollsLeftNumber4_2;
CCSprite *story3_2TrollsLeftNumber5_1;
CCSprite *story3_2TrollsLeftNumber5_2;
CCSprite *story3_2TrollsLeftNumber6_1;
CCSprite *story3_2TrollsLeftNumber6_2;
CCSprite *story3_2TrollsLeftNumber7_1;
CCSprite *story3_2TrollsLeftNumber7_2;
CCSprite *story3_2TrollsLeftNumber8_1;
CCSprite *story3_2TrollsLeftNumber8_2;
CCSprite *story3_2TrollsLeftNumber9_1;
CCSprite *story3_2TrollsLeftNumber9_2;

CCSprite *story3_2TrollTopLeftChat;
CCSprite *story3_2TrollTopMidChat;
CCSprite *story3_2TrollTopRightChat;
CCSprite *story3_2TrollMidLeftChat;
CCSprite *story3_2TrollMidMidChat;
CCSprite *story3_2TrollMidRightChat;
CCSprite *story3_2TrollBotLeftChat;
CCSprite *story3_2TrollBotMidChat;
CCSprite *story3_2TrollBotRightChat;

CCSprite *story3_2TapToContinue;

CCSprite *story3_2TimeUpSprite;
BOOL story3_2TimeUpDrawn = FALSE;

CCSprite *story3_2AllTrollsSprite;
BOOL story3_2AllTrollsDrawn = FALSE;

int story3_2CurrentScore = 0;
int story3_2PrevScore = 0;
int story3_2ScoreInt = 0;
int story3_2LivesRemaining = 0;
int story3_2TrollsRemaining = 150;
int story3_2TrollsRemInt = 0;
int story3_2TrollsPrevRem = 150;

float story3_2TrollRespawnInterval = 0.0f;

float story3_2TrollTLResetTimer = 0.5f;
float story3_2TrollTMResetTimer = 0.8f;
float story3_2TrollTRResetTimer = 0.2f;
float story3_2TrollMLResetTimer = 0.4f;
float story3_2TrollMMResetTimer = 0.1f;
float story3_2TrollMRResetTimer = 0.9f;
float story3_2TrollBLResetTimer = 0.3f;
float story3_2TrollBMResetTimer = 0.7f;
float story3_2TrollBRResetTimer = 0.0f;

float story3_2TrollTLTimeInPlay = 0.0f;
float story3_2TrollTMTimeInPlay = 0.0f;
float story3_2TrollTRTimeInPlay = 0.0f;
float story3_2TrollMLTimeInPlay = 0.0f;
float story3_2TrollMMTimeInPlay = 0.0f;
float story3_2TrollMRTimeInPlay = 0.0f;
float story3_2TrollBLTimeInPlay = 0.0f;
float story3_2TrollBMTimeInPlay = 0.0f;
float story3_2TrollBRTimeInPlay = 0.0f;

float story3_2TrollTLFadingOutTimer = 0.0f;
float story3_2TrollTMFadingOutTimer = 0.0f;
float story3_2TrollTRFadingOutTimer = 0.0f;
float story3_2TrollMLFadingOutTimer = 0.0f;
float story3_2TrollMMFadingOutTimer = 0.0f;
float story3_2TrollMRFadingOutTimer = 0.0f;
float story3_2TrollBLFadingOutTimer = 0.0f;
float story3_2TrollBMFadingOutTimer = 0.0f;
float story3_2TrollBRFadingOutTimer = 0.0f;

BOOL story3_2TrollTLTouched = FALSE;
BOOL story3_2TrollTMTouched = FALSE;
BOOL story3_2TrollTRTouched = FALSE;
BOOL story3_2TrollMLTouched = FALSE;
BOOL story3_2TrollMMTouched = FALSE;
BOOL story3_2TrollMRTouched = FALSE;
BOOL story3_2TrollBLTouched = FALSE;
BOOL story3_2TrollBMTouched = FALSE;
BOOL story3_2TrollBRTouched = FALSE;

BOOL story3_2TrollTLInPlay = FALSE;
BOOL story3_2TrollTMInPlay = FALSE;
BOOL story3_2TrollTRInPlay = FALSE;
BOOL story3_2TrollMLInPlay = FALSE;
BOOL story3_2TrollMMInPlay = FALSE;
BOOL story3_2TrollMRInPlay = FALSE;
BOOL story3_2TrollBLInPlay = FALSE;
BOOL story3_2TrollBMInPlay = FALSE;
BOOL story3_2TrollBRInPlay = FALSE;

BOOL story3_2StartTrollTLDeathAnim = FALSE;
BOOL story3_2StartTrollTMDeathAnim = FALSE;
BOOL story3_2StartTrollTRDeathAnim = FALSE;
BOOL story3_2StartTrollMLDeathAnim = FALSE;
BOOL story3_2StartTrollMMDeathAnim = FALSE;
BOOL story3_2StartTrollMRDeathAnim = FALSE;
BOOL story3_2StartTrollBLDeathAnim = FALSE;
BOOL story3_2StartTrollBMDeathAnim = FALSE;
BOOL story3_2StartTrollBRDeathAnim = FALSE;

BOOL story3_2StartTrollTLMissed = FALSE;
BOOL story3_2StartTrollTMMissed = FALSE;
BOOL story3_2StartTrollTRMissed = FALSE;
BOOL story3_2StartTrollMLMissed = FALSE;
BOOL story3_2StartTrollMMMissed = FALSE;
BOOL story3_2StartTrollMRMissed = FALSE;
BOOL story3_2StartTrollBLMissed = FALSE;
BOOL story3_2StartTrollBMMissed = FALSE;
BOOL story3_2StartTrollBRMissed = FALSE;

BOOL story3_2StartRound = FALSE;
BOOL story3_2DialogueTouched = FALSE;

ccTime story3_2GameTime = 0.0f;
int story3_2Tick = 0;
BOOL story3_2IntroFinished = FALSE;
BOOL story3_2AllChange = FALSE;

@implementation StoryMode3_2

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode3_2 *layer = [StoryMode3_2 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story3_2StatsLayer = [CCLayer node];
        story3_2SpriteFrontLayer = [CCLayer node];
        story3_2SpriteMidLayer = [CCLayer node];
        story3_2SpriteBackLayer = [CCLayer node];
        
        story3_2Background = [CCSprite spriteWithFile:@"BackgroundImages/level_3_background_640.png"];
        story3_2Background.position = ccp(240, 160);
        
        [self addChild: story3_2Background];
        [self addChild: story3_2StatsLayer];
        [self addChild: story3_2SpriteBackLayer];
        [self addChild: story3_2SpriteFrontLayer];
        [self addChild: story3_2SpriteMidLayer];
        
        [self loadstory3_2Sprites];
        [self loadstory3_2Text];
        [self loadstory3_2Dialogue];
    }
    
    story3_2TrollTLColour = -1;
    story3_2TrollTMColour = -1;
    story3_2TrollTRColour = -1;
    story3_2TrollMLColour = -1;
    story3_2TrollMMColour = -1;
    story3_2TrollMRColour = -1;
    story3_2TrollBLColour = -1;
    story3_2TrollBMColour = -1;
    story3_2TrollBRColour = -1;
    story3_2TimeUpDrawn = FALSE;
    story3_2AllTrollsDrawn = FALSE;
    story3_2ScoreInt = 0;
    story3_2TrollsRemaining = 150;
    story3_2TrollsRemInt = 0;
    story3_2TrollsPrevRem = 150;
    story3_2TrollRespawnInterval = 0.0f;
    story3_2TrollTLResetTimer = 0.5f;
    story3_2TrollTMResetTimer = 0.8f;
    story3_2TrollTRResetTimer = 0.2f;
    story3_2TrollMLResetTimer = 0.4f;
    story3_2TrollMMResetTimer = 0.1f;
    story3_2TrollMRResetTimer = 0.9f;
    story3_2TrollBLResetTimer = 0.3f;
    story3_2TrollBMResetTimer = 0.7f;
    story3_2TrollBRResetTimer = 0.0f;
    story3_2TrollTLTimeInPlay = 0.0f;
    story3_2TrollTMTimeInPlay = 0.0f;
    story3_2TrollTRTimeInPlay = 0.0f;
    story3_2TrollMLTimeInPlay = 0.0f;
    story3_2TrollMMTimeInPlay = 0.0f;
    story3_2TrollMRTimeInPlay = 0.0f;
    story3_2TrollBLTimeInPlay = 0.0f;
    story3_2TrollBMTimeInPlay = 0.0f;
    story3_2TrollBRTimeInPlay = 0.0f;
    story3_2TrollTLFadingOutTimer = 0.0f;
    story3_2TrollTMFadingOutTimer = 0.0f;
    story3_2TrollTRFadingOutTimer = 0.0f;
    story3_2TrollMLFadingOutTimer = 0.0f;
    story3_2TrollMMFadingOutTimer = 0.0f;
    story3_2TrollMRFadingOutTimer = 0.0f;
    story3_2TrollBLFadingOutTimer = 0.0f;
    story3_2TrollBMFadingOutTimer = 0.0f;
    story3_2TrollBRFadingOutTimer = 0.0f;
    story3_2TrollTLTouched = FALSE;
    story3_2TrollTMTouched = FALSE;
    story3_2TrollTRTouched = FALSE;
    story3_2TrollMLTouched = FALSE;
    story3_2TrollMMTouched = FALSE;
    story3_2TrollMRTouched = FALSE;
    story3_2TrollBLTouched = FALSE;
    story3_2TrollBMTouched = FALSE;
    story3_2TrollBRTouched = FALSE;
    story3_2TrollTLInPlay = FALSE;
    story3_2TrollTMInPlay = FALSE;
    story3_2TrollTRInPlay = FALSE;
    story3_2TrollMLInPlay = FALSE;
    story3_2TrollMMInPlay = FALSE;
    story3_2TrollMRInPlay = FALSE;
    story3_2TrollBLInPlay = FALSE;
    story3_2TrollBMInPlay = FALSE;
    story3_2TrollBRInPlay = FALSE;
    story3_2StartTrollTLDeathAnim = FALSE;
    story3_2StartTrollTMDeathAnim = FALSE;
    story3_2StartTrollTRDeathAnim = FALSE;
    story3_2StartTrollMLDeathAnim = FALSE;
    story3_2StartTrollMMDeathAnim = FALSE;
    story3_2StartTrollMRDeathAnim = FALSE;
    story3_2StartTrollBLDeathAnim = FALSE;
    story3_2StartTrollBMDeathAnim = FALSE;
    story3_2StartTrollBRDeathAnim = FALSE;
    story3_2StartTrollTLMissed = FALSE;
    story3_2StartTrollTMMissed = FALSE;
    story3_2StartTrollTRMissed = FALSE;
    story3_2StartTrollMLMissed = FALSE;
    story3_2StartTrollMMMissed = FALSE;
    story3_2StartTrollMRMissed = FALSE;
    story3_2StartTrollBLMissed = FALSE;
    story3_2StartTrollBMMissed = FALSE;
    story3_2StartTrollBRMissed = FALSE;
    story3_2StartRound = FALSE;
    story3_2DialogueTouched = FALSE;
    story3_2Tick = 0;
    story3_2IntroFinished = FALSE;
    story3_2AllChange = FALSE;
    story3_2GameTime = 0.0f;
    
    story3_2CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story3_2PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story3_2LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story3_2StartRound){
        if(story3_2DialogueTouched){
            story3_2DialogueSprite.position = ccp(-1000, -1000);
            story3_2CharacterSprite.position = ccp(-1000, -1000);
            story3_2CharacterName.position = ccp(-1000, -1000);
            story3_2TapToContinue.position = ccp(-1000, -1000);
            story3_2DialogueTouched = FALSE;
            story3_2StartRound = TRUE;
        }
    }
    else{
        story3_2GameTime += dt;
        
        if (story3_2GameTime < 5 && story3_2IntroFinished == NO){
            if(story3_2GameTime > 0 && story3_2GameTime < 1.5){
                if(story3_2Tick == 0){
                    story3_2Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story3_2Intro3.position = ccp(240, 160);
                    [self addChild: story3_2Intro3];
                    story3_2Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story3_2GameTime > 1.5 && story3_2GameTime < 2.5){
                if(story3_2Tick == 1) {
                    story3_2Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story3_2Intro2.position = ccp(240, 160);
                    [self addChild: story3_2Intro2];
                    story3_2Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story3_2Tick == 2){
                    [self removeChild: story3_2Intro3 cleanup:YES];
                    story3_2Tick = 3;
                }
            }
            else if(story3_2GameTime > 2.5 && story3_2GameTime < 3.5){
                if(story3_2Tick == 3){
                    story3_2Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story3_2Intro1.position = ccp(240, 160);
                    [self addChild: story3_2Intro1];
                    story3_2Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story3_2Tick == 4) {
                    [self removeChild: story3_2Intro2 cleanup:YES];
                    story3_2Tick = 5;
                }
            }
            else if(story3_2GameTime > 3.5 && story3_2GameTime < 4.5){
                if(story3_2Tick == 5){
                    story3_2Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story3_2Intro0.position = ccp(240, 160);
                    [self addChild: story3_2Intro0];
                    story3_2Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story3_2Tick == 6) {
                    [self removeChild: story3_2Intro1 cleanup:YES];
                    story3_2Tick = 7;
                }
            }
            else{
                if(story3_2Tick == 7){
                    story3_2IntroFinished = YES;
                    [self removeChild: story3_2Intro0 cleanup:YES];
                    story3_2Tick = 8;
                    story3_2AllChange = TRUE;
                }
            }
        }
        else if(story3_2Tick == 8){
            if(story3_2AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_3.mp3"];
                [self drawstory3_2Elements];
                story3_2AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story3_2TrollTLInPlay){
                if(story3_2TrollTLTimeInPlay >= 2.0f){
                    story3_2StartTrollTLMissed = TRUE;
                    story3_2TrollTopLeftChat.position = ccp(-1000, -1000);
                    story3_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollTLTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollTLResetTimer -= dt;
                if(story3_2TrollTLResetTimer <= 0){
                    story3_2SpriteTopLeftMenu.position = ccp(80, 250);
                    story3_2TrollTopLeftChat.position = ccp(112, 260);
                    story3_2TrollTLInPlay = TRUE;
                    story3_2TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollTMInPlay){
                if(story3_2TrollTMTimeInPlay >= 2.0f){
                    story3_2StartTrollTMMissed = TRUE;
                    story3_2TrollTopMidChat.position = ccp(-1000, -1000);
                    story3_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollTMTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollTMResetTimer -= dt;
                if(story3_2TrollTMResetTimer <= 0){
                    story3_2SpriteTopMidMenu.position = ccp(240, 250);
                    story3_2TrollTopMidChat.position = ccp(272, 260);
                    story3_2TrollTMInPlay = TRUE;
                    story3_2TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollTRInPlay){
                if(story3_2TrollTRTimeInPlay >= 2.0f){
                    story3_2StartTrollTRMissed = TRUE;
                    story3_2TrollTopRightChat.position = ccp(-1000, -1000);
                    story3_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollTRTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollTRResetTimer -= dt;
                if(story3_2TrollTRResetTimer <= 0){
                    story3_2SpriteTopRightMenu.position = ccp(400, 250);
                    story3_2TrollTopRightChat.position = ccp(432, 260);
                    story3_2TrollTRInPlay = TRUE;
                    story3_2TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollMLInPlay){
                if(story3_2TrollMLTimeInPlay >= 2.0f){
                    story3_2StartTrollMLMissed = TRUE;
                    story3_2TrollMidLeftChat.position = ccp(-1000, -1000);
                    story3_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollMLTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollMLResetTimer -= dt;
                if(story3_2TrollMLResetTimer <= 0){
                    story3_2SpriteMidLeftMenu.position = ccp(80, 170);
                    story3_2TrollMidLeftChat.position = ccp(112, 180);
                    story3_2TrollMLInPlay = TRUE;
                    story3_2TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollMMInPlay){
                if(story3_2TrollMMTimeInPlay >= 2.0f){
                    story3_2StartTrollMMMissed = TRUE;
                    story3_2TrollMidMidChat.position = ccp(-1000, -1000);
                    story3_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollMMTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollMMResetTimer -= dt;
                if(story3_2TrollMMResetTimer <= 0){
                    story3_2SpriteMidMidMenu.position = ccp(240, 170);
                    story3_2TrollMidMidChat.position = ccp(272, 180);
                    story3_2TrollMMInPlay = TRUE;
                    story3_2TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollMRInPlay){
                if(story3_2TrollMRTimeInPlay >= 2.0f){
                    story3_2StartTrollMRMissed = TRUE;
                    story3_2TrollMidRightChat.position = ccp(-1000, -1000);
                    story3_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story3_2TrollMRTimeInPlay += dt;
            }
            else{
                story3_2TrollMRResetTimer -= dt;
                if(story3_2TrollMRResetTimer <= 0){
                    story3_2SpriteMidRightMenu.position = ccp(400, 170);
                    story3_2TrollMidRightChat.position = ccp(432, 180);
                    story3_2TrollMRInPlay = TRUE;
                    story3_2TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollBLInPlay){
                if(story3_2TrollBLTimeInPlay >= 2.0f){
                    story3_2StartTrollBLMissed = TRUE;
                    story3_2TrollBotLeftChat.position = ccp(-1000, -1000);
                    story3_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollBLTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollBLResetTimer -= dt;
                if(story3_2TrollBLResetTimer <= 0){
                    story3_2SpriteBotLeftMenu.position = ccp(80, 90);
                    story3_2TrollBotLeftChat.position = ccp(112, 100);
                    story3_2TrollBLInPlay = TRUE;
                    story3_2TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollBMInPlay){
                if(story3_2TrollBMTimeInPlay >= 2.0f){
                    story3_2StartTrollBMMissed = TRUE;
                    story3_2TrollBotMidChat.position = ccp(-1000, -1000);
                    story3_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollBMTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollBMResetTimer -= dt;
                if(story3_2TrollBMResetTimer <= 0){
                    story3_2SpriteBotMidMenu.position = ccp(240, 90);
                    story3_2TrollBotMidChat.position = ccp(272, 100);
                    story3_2TrollBMInPlay = TRUE;
                    story3_2TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_2TrollBRInPlay){
                if(story3_2TrollBRTimeInPlay >= 2.0f){
                    story3_2StartTrollBRMissed = TRUE;
                    story3_2TrollBotRightChat.position = ccp(-1000, -1000);
                    story3_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_2TrollBRTimeInPlay += dt;
                }
            }
            else{
                story3_2TrollBRResetTimer -= dt;
                if(story3_2TrollBRResetTimer <= 0){
                    story3_2SpriteBotRightMenu.position = ccp(400, 90);
                    story3_2TrollBotRightChat.position = ccp(432, 100);
                    story3_2TrollBRInPlay = TRUE;
                    story3_2TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story3_2TrollTLTouched){
                story3_2StartTrollTLDeathAnim = TRUE;
                story3_2TrollTLTouched = FALSE;
                if(story3_2TrollTLColour == 0){
                    [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLDeadGreen];
                }
                else if(story3_2TrollTLColour == 1){
                    [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLDeadGrey];
                }
                else if(story3_2TrollTLColour == 2){
                    [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLDeadPurple];
                }
                
                story3_2TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story3_2TrollTMTouched){
                story3_2StartTrollTMDeathAnim = TRUE;
                story3_2TrollTMTouched = FALSE;
                if(story3_2TrollTMColour == 0){
                    [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMDeadGreen];
                }
                else if(story3_2TrollTMColour == 1){
                    [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMDeadGrey];
                }
                else if(story3_2TrollTMColour == 2){
                    [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMDeadPurple];
                }
                
                story3_2TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story3_2TrollTRTouched){
                story3_2StartTrollTRDeathAnim = TRUE;
                story3_2TrollTRTouched = FALSE;
                if(story3_2TrollTRColour == 0){
                    [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRDeadGreen];
                }
                else if(story3_2TrollTRColour == 1){
                    [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRDeadGrey];
                }
                else if(story3_2TrollTRColour == 2){
                    [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRDeadPurple];
                }
                
                story3_2TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story3_2TrollMLTouched){
                story3_2StartTrollMLDeathAnim = TRUE;
                story3_2TrollMLTouched = FALSE;
                if(story3_2TrollMLColour == 0){
                    [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLDeadGreen];
                }
                else if(story3_2TrollMLColour == 1){
                    [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLDeadGrey];
                }
                else if(story3_2TrollMLColour == 2){
                    [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLDeadPurple];
                }
                
                story3_2TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story3_2TrollMMTouched){
                story3_2StartTrollMMDeathAnim = TRUE;
                story3_2TrollMMTouched = FALSE;
                if(story3_2TrollMMColour == 0){
                    [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMDeadGreen];
                }
                else if(story3_2TrollMMColour == 1){
                    [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMDeadGrey];
                }
                else if(story3_2TrollMMColour == 2){
                    [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMDeadPurple];
                }
                
                story3_2TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story3_2TrollMRTouched){
                story3_2StartTrollMRDeathAnim = TRUE;
                story3_2TrollMRTouched = FALSE;
                if(story3_2TrollMRColour == 0){
                    [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRDeadGreen];
                }
                else if(story3_2TrollMRColour == 1){
                    [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRDeadGrey];
                }
                else if(story3_2TrollMRColour == 2){
                    [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRDeadPurple];
                }
                
                story3_2TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story3_2TrollBLTouched){
                story3_2StartTrollBLDeathAnim = TRUE;
                story3_2TrollBLTouched = FALSE;
                if(story3_2TrollBLColour == 0){
                    [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLDeadGreen];
                }
                else if(story3_2TrollBLColour == 1){
                    [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLDeadGrey];
                }
                else if(story3_2TrollBLColour == 2){
                    [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLDeadPurple];
                }
                
                story3_2TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story3_2TrollBMTouched){
                story3_2StartTrollBMDeathAnim = TRUE;
                story3_2TrollBMTouched = FALSE;
                if(story3_2TrollBMColour == 0){
                    [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMDeadGreen];
                }
                else if(story3_2TrollBMColour == 1){
                    [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMDeadGrey];
                }
                else if(story3_2TrollBMColour == 2){
                    [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMDeadPurple];
                }
                
                story3_2TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story3_2TrollBRTouched){
                story3_2StartTrollBRDeathAnim = TRUE;
                story3_2TrollBRTouched = FALSE;
                if(story3_2TrollBRColour == 0){
                    [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRDeadGreen];
                }
                else if(story3_2TrollBRColour == 1){
                    [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRDeadGrey];
                }
                else if(story3_2TrollBRColour == 2){
                    [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRDeadPurple];
                }
                
                story3_2TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story3_2TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story3_2StartTrollTLDeathAnim){
                if(story3_2TrollTLFadingOutTimer < 0.25f){
                    story3_2TrollTLFadingOutTimer += dt;
                    story3_2SpriteTopLeftMenu.position = ccp(story3_2SpriteTopLeftMenu.position.x, story3_2SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollTLDeathAnim = FALSE;
                    story3_2TrollTLTimeInPlay = 0.0f;
                    story3_2TrollTLFadingOutTimer = 0.0f;
                    story3_2TrollTLInPlay = FALSE;
                    story3_2TrollTLResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story3_2TrollTLColour == 0){
                        [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLGreen];
                    }
                    else if(story3_2TrollTLColour == 1){
                        [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLGrey];
                    }
                    else if(story3_2TrollTLColour == 2){
                        [story3_2TrollSpriteTopLeft setNormalImage:story3_2TrollSpriteTLPurple];
                    }
                    
                    story3_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollTMDeathAnim){
                if(story3_2TrollTMFadingOutTimer < 0.25f){
                    story3_2TrollTMFadingOutTimer += dt;
                    story3_2SpriteTopMidMenu.position = ccp(story3_2SpriteTopMidMenu.position.x, story3_2SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollTMDeathAnim = FALSE;
                    story3_2TrollTMTimeInPlay = 0.0f;
                    story3_2TrollTMFadingOutTimer = 0.0f;
                    story3_2TrollTMInPlay = FALSE;
                    story3_2TrollTMResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story3_2TrollTMColour == 0){
                        [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMGreen];
                    }
                    else if(story3_2TrollTMColour == 1){
                        [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMGrey];
                    }
                    else if(story3_2TrollTMColour == 2){
                        [story3_2TrollSpriteTopMid setNormalImage:story3_2TrollSpriteTMPurple];
                    }
                    
                    story3_2SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollTRDeathAnim){
                if(story3_2TrollTRFadingOutTimer < 0.25f){
                    story3_2TrollTRFadingOutTimer += dt;
                    story3_2SpriteTopRightMenu.position = ccp(story3_2SpriteTopRightMenu.position.x, story3_2SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollTRDeathAnim = FALSE;
                    story3_2TrollTRTimeInPlay = 0.0f;
                    story3_2TrollTRFadingOutTimer = 0.0f;
                    story3_2TrollTRInPlay = FALSE;
                    story3_2TrollTRResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story3_2TrollTRColour == 0){
                        [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRGreen];
                    }
                    else if(story3_2TrollTRColour == 1){
                        [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRGrey];
                    }
                    else if(story3_2TrollTRColour == 2){
                        [story3_2TrollSpriteTopRight setNormalImage:story3_2TrollSpriteTRPurple];
                    }
                    
                    story3_2SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollMLDeathAnim){
                if(story3_2TrollMLFadingOutTimer < 0.25f){
                    story3_2TrollMLFadingOutTimer += dt;
                    story3_2SpriteMidLeftMenu.position = ccp(story3_2SpriteMidLeftMenu.position.x, story3_2SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollMLDeathAnim = FALSE;
                    story3_2TrollMLTimeInPlay = 0.0f;
                    story3_2TrollMLFadingOutTimer = 0.0f;
                    story3_2TrollMLInPlay = FALSE;
                    story3_2TrollMLResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story3_2TrollMLColour == 0){
                        [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLGreen];
                    }
                    else if(story3_2TrollMLColour == 1){
                        [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLGrey];
                    }
                    else if(story3_2TrollMLColour == 2){
                        [story3_2TrollSpriteMidLeft setNormalImage:story3_2TrollSpriteMLPurple];
                    }
                    
                    story3_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollMMDeathAnim){
                if(story3_2TrollMMFadingOutTimer < 0.25f){
                    story3_2TrollMMFadingOutTimer += dt;
                    story3_2SpriteMidMidMenu.position = ccp(story3_2SpriteMidMidMenu.position.x, story3_2SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollMMDeathAnim = FALSE;
                    story3_2TrollMMTimeInPlay = 0.0f;
                    story3_2TrollMMFadingOutTimer = 0.0f;
                    story3_2TrollMMInPlay = FALSE;
                    story3_2TrollMMResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story3_2TrollMMColour == 0){
                        [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMGreen];
                    }
                    else if(story3_2TrollMMColour == 1){
                        [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMGrey];
                    }
                    else if(story3_2TrollMMColour == 2){
                        [story3_2TrollSpriteMidMid setNormalImage:story3_2TrollSpriteMMPurple];
                    }
                    
                    story3_2SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollMRDeathAnim){
                if(story3_2TrollMRFadingOutTimer < 0.25f){
                    story3_2TrollMRFadingOutTimer += dt;
                    story3_2SpriteMidRightMenu.position = ccp(story3_2SpriteMidRightMenu.position.x, story3_2SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollMRDeathAnim = FALSE;
                    story3_2TrollMRTimeInPlay = 0.0f;
                    story3_2TrollMRFadingOutTimer = 0.0f;
                    story3_2TrollMRInPlay = FALSE;
                    story3_2TrollMRResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story3_2TrollMRColour == 0){
                        [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRGreen];
                    }
                    else if(story3_2TrollMRColour == 1){
                        [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRGrey];
                    }
                    else if(story3_2TrollMRColour == 2){
                        [story3_2TrollSpriteMidRight setNormalImage:story3_2TrollSpriteMRPurple];
                    }
                    
                    story3_2SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollBLDeathAnim){
                if(story3_2TrollBLFadingOutTimer < 0.25f){
                    story3_2TrollBLFadingOutTimer += dt;
                    story3_2SpriteBotLeftMenu.position = ccp(story3_2SpriteBotLeftMenu.position.x, story3_2SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollBLDeathAnim = FALSE;
                    story3_2TrollBLTimeInPlay = 0.0f;
                    story3_2TrollBLFadingOutTimer = 0.0f;
                    story3_2TrollBLInPlay = FALSE;
                    story3_2TrollBLResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story3_2TrollBLColour == 0){
                        [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLGreen];
                    }
                    else if(story3_2TrollBLColour == 1){
                        [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLGrey];
                    }
                    else if(story3_2TrollBLColour == 2){
                        [story3_2TrollSpriteBotLeft setNormalImage:story3_2TrollSpriteBLPurple];
                    }
                    
                    story3_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollBMDeathAnim){
                if(story3_2TrollBMFadingOutTimer < 0.25f){
                    story3_2TrollBMFadingOutTimer += dt;
                    story3_2SpriteBotMidMenu.position = ccp(story3_2SpriteBotMidMenu.position.x, story3_2SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollBMDeathAnim = FALSE;
                    story3_2TrollBMTimeInPlay = 0.0f;
                    story3_2TrollBMFadingOutTimer = 0.0f;
                    story3_2TrollBMInPlay = FALSE;
                    story3_2TrollBMResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story3_2TrollBMColour == 0){
                        [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMGreen];
                    }
                    else if(story3_2TrollBMColour == 1){
                        [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMGrey];
                    }
                    else if(story3_2TrollBMColour == 2){
                        [story3_2TrollSpriteBotMid setNormalImage:story3_2TrollSpriteBMPurple];
                    }
                    
                    story3_2SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_2StartTrollBRDeathAnim){
                if(story3_2TrollBRFadingOutTimer < 0.25f){
                    story3_2TrollBRFadingOutTimer += dt;
                    story3_2SpriteBotRightMenu.position = ccp(story3_2SpriteBotRightMenu.position.x, story3_2SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_2TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_2StartTrollBRDeathAnim = FALSE;
                    story3_2TrollBRTimeInPlay = 0.0f;
                    story3_2TrollBRFadingOutTimer = 0.0f;
                    story3_2TrollBRInPlay = FALSE;
                    story3_2TrollBRResetTimer = story3_2TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_2TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story3_2TrollBRColour == 0){
                        [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRGreen];
                    }
                    else if(story3_2TrollBRColour == 1){
                        [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRGrey];
                    }
                    else if(story3_2TrollBRColour == 2){
                        [story3_2TrollSpriteBotRight setNormalImage:story3_2TrollSpriteBRPurple];
                    }
                    
                    story3_2SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story3_2StartTrollTLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollTLMissed = FALSE;
                story3_2TrollTLTimeInPlay = 0.0f;
                story3_2TrollTLInPlay = FALSE;
                story3_2TrollTLResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollTMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollTMMissed = FALSE;
                story3_2TrollTMTimeInPlay = 0.0f;
                story3_2TrollTMInPlay = FALSE;
                story3_2TrollTMResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollTRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollTRMissed = FALSE;
                story3_2TrollTRTimeInPlay = 0.0f;
                story3_2TrollTRInPlay = FALSE;
                story3_2TrollTRResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollMLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollMLMissed = FALSE;
                story3_2TrollMLTimeInPlay = 0.0f;
                story3_2TrollMLInPlay = FALSE;
                story3_2TrollMLResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollMMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollMMMissed = FALSE;
                story3_2TrollMMTimeInPlay = 0.0f;
                story3_2TrollMMInPlay = FALSE;
                story3_2TrollMMResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollMRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollMRMissed = FALSE;
                story3_2TrollMRTimeInPlay = 0.0f;
                story3_2TrollMRInPlay = FALSE;
                story3_2TrollMRResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollBLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollBLMissed = FALSE;
                story3_2TrollBLTimeInPlay = 0.0f;
                story3_2TrollBLInPlay = FALSE;
                story3_2TrollBLResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollBMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollBMMissed = FALSE;
                story3_2TrollBMTimeInPlay = 0.0f;
                story3_2TrollBMInPlay = FALSE;
                story3_2TrollBMResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            if(story3_2StartTrollBRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_2TrollRespawnInterval = (float)i / 100.0f;
                story3_2StartTrollBRMissed = FALSE;
                story3_2TrollBRTimeInPlay = 0.0f;
                story3_2TrollBRInPlay = FALSE;
                story3_2TrollBRResetTimer = story3_2TrollRespawnInterval;
                story3_2LivesRemaining--;
                
                if(story3_2LivesRemaining == 2){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 1){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_2LivesRemaining == 0){
                    story3_2LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_2LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_2Tick = 9;
                }
            }
            
            story3_2ScoreInt = story3_2CurrentScore;
            
            //SCORE CALCULATIONS
            if(story3_2LivesRemaining >= 0) {
                if(story3_2CurrentScore != story3_2PrevScore){
                    if(story3_2CurrentScore >= 0 && story3_2CurrentScore < 10){
                        if(story3_2CurrentScore == 0){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                        }
                        else if(story3_2CurrentScore == 1){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                        }
                        else if(story3_2CurrentScore == 2){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                        }
                        else if(story3_2CurrentScore == 3){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                        }
                        else if(story3_2CurrentScore == 4){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                        }
                        else if(story3_2CurrentScore == 5){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                        }
                        else if(story3_2CurrentScore == 6){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                        }
                        else if(story3_2CurrentScore == 7){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                        }
                        else if(story3_2CurrentScore == 8){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                        }
                        else if(story3_2CurrentScore == 9){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                    }
                    
                    else if(story3_2CurrentScore >= 10 && story3_2CurrentScore <= 99){
                        int lSDS = story3_2ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                        }
                        
                        if(story3_2CurrentScore >= 10 && story3_2CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
                        }
                        else if(story3_2CurrentScore >= 20 && story3_2CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
                        }
                        else if(story3_2CurrentScore >= 30 && story3_2CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
                        }
                        else if(story3_2CurrentScore >= 40 && story3_2CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
                        }
                        else if(story3_2CurrentScore >= 50 && story3_2CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
                        }
                        else if(story3_2CurrentScore >= 60 && story3_2CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
                        }
                        else if(story3_2CurrentScore >= 70 && story3_2CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
                        }
                        else if(story3_2CurrentScore >= 80 && story3_2CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
                        }
                        else if(story3_2CurrentScore >= 90 && story3_2CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
                    }
                    
                    else if(story3_2CurrentScore >= 100 && story3_2CurrentScore <= 999){
                        int story3_2Count = 0;
                        while(story3_2Count < 2){
                            int lSDSs = story3_2ScoreInt % 10;
                            if(story3_2Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                                }
                            }
                            else if(story3_2Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
                                }
                            }
                            story3_2ScoreInt /= 10;
                            story3_2Count++;
                        }
                        
                        if(story3_2CurrentScore >= 100 && story3_2CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber1_2];
                        }
                        else if(story3_2CurrentScore >= 200 && story3_2CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber2_2];
                        }
                        else if(story3_2CurrentScore >= 300 && story3_2CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber3_2];
                        }
                        else if(story3_2CurrentScore >= 400 && story3_2CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber4_2];
                        }
                        else if(story3_2CurrentScore >= 500 && story3_2CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber5_2];
                        }
                        else if(story3_2CurrentScore >= 600 && story3_2CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber6_2];
                        }
                        else if(story3_2CurrentScore >= 700 && story3_2CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber7_2];
                        }
                        else if(story3_2CurrentScore >= 800 && story3_2CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber8_2];
                        }
                        else if(story3_2CurrentScore >= 900 && story3_2CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
                    }
                    
                    else if(story3_2CurrentScore >= 1000 && story3_2CurrentScore <= 9999){
                        int story3_2Count = 0;
                        while(story3_2Count < 3){
                            int lSDSsS = story3_2ScoreInt % 10;
                            if(story3_2Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                                }
                            }
                            else if(story3_2Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
                                }
                            }
                            else if(story3_2Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber9_2];
                                }
                            }
                            story3_2ScoreInt /= 10;
                            story3_2Count++;
                            
                            if(story3_2CurrentScore >= 1000 && story3_2CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber1_1];
                            }
                            else if(story3_2CurrentScore >= 2000 && story3_2CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber2_1];
                            }
                            else if(story3_2CurrentScore >= 3000 && story3_2CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber3_1];
                            }
                            else if(story3_2CurrentScore >= 4000 && story3_2CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber4_1];
                            }
                            else if(story3_2CurrentScore >= 5000 && story3_2CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber5_1];
                            }
                            else if(story3_2CurrentScore >= 6000 && story3_2CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber6_1];
                            }
                            else if(story3_2CurrentScore >= 7000 && story3_2CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber7_1];
                            }
                            else if(story3_2CurrentScore >= 8000 && story3_2CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber8_1];
                            }
                            else if(story3_2CurrentScore >= 9000 && story3_2CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story3_2CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story3_2TrollsRemInt = story3_2TrollsRemaining;
            
            if(story3_2TrollsRemaining > 0){
                if(story3_2TrollsRemaining != story3_2TrollsPrevRem){
                    if(story3_2TrollsRemaining >= 0 && story3_2TrollsRemaining < 10){
                        if(story3_2TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber0_3];
                        }
                        else if(story3_2TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber1_3];
                        }
                        else if(story3_2TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber2_2];
                        }
                        else if(story3_2TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber3_2];
                        }
                        else if(story3_2TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber4_2];
                        }
                        else if(story3_2TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber5_2];
                        }
                        else if(story3_2TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber6_2];
                        }
                        else if(story3_2TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber7_2];
                        }
                        else if(story3_2TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber8_2];
                        }
                        else if(story3_2TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber9_2];
                        }
                        
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_2TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber0_2];
                    }
                    
                    else if(story3_2TrollsRemaining >= 10 && story3_2TrollsRemaining <= 99){
                        int lSDS = story3_2TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber9_2];
                        }
                        
                        if(story3_2TrollsRemaining >= 10 && story3_2TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber1_2];
                        }
                        else if(story3_2TrollsRemaining >= 20 && story3_2TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber2_1];
                        }
                        else if(story3_2TrollsRemaining >= 30 && story3_2TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber3_1];
                        }
                        else if(story3_2TrollsRemaining >= 40 && story3_2TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber4_1];
                        }
                        else if(story3_2TrollsRemaining >= 50 && story3_2TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber5_1];
                        }
                        else if(story3_2TrollsRemaining >= 60 && story3_2TrollsRemaining <= 69){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber6_1];
                        }
                        else if(story3_2TrollsRemaining >= 70 && story3_2TrollsRemaining <= 79){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber7_1];
                        }
                        else if(story3_2TrollsRemaining >= 80 && story3_2TrollsRemaining <= 89){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber8_1];
                        }
                        else if(story3_2TrollsRemaining >= 90 && story3_2TrollsRemaining <= 99){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_2TrollsLeftNumber0_1];
                    }
                    
                    else if(story3_2TrollsRemaining >= 100){
                        int lSDS = story3_2TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber9_2];
                        }
                        
                        if(story3_2TrollsRemaining >= 100 && story3_2TrollsRemaining <= 109){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber0_2];
                        }
                        else if(story3_2TrollsRemaining >= 110 && story3_2TrollsRemaining <= 119){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber1_2];
                        }
                        else if(story3_2TrollsRemaining >= 120 && story3_2TrollsRemaining <= 129){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber2_1];
                        }
                        else if(story3_2TrollsRemaining >= 130 && story3_2TrollsRemaining <= 139){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber3_1];
                        }
                        else if(story3_2TrollsRemaining >= 140 && story3_2TrollsRemaining <= 149){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber4_1];
                        }
                        else if(story3_2TrollsRemaining >= 150 && story3_2TrollsRemaining <= 159){
                            [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber5_1];
                        }
                        
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_2TrollsLeftNumber1_1];
                    }
                    
                    else if(story3_2TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_2TrollsLeftNumber0_1];
                    }
                    
                    story3_2TrollsPrevRem = story3_2TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_2TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_2TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story3_2TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_2TrollsLeftNumber0_1];
                story3_2Tick = 10;
            }
            
        }
        else if(story3_2Tick == 9){
            if(!story3_2TimeUpDrawn){
                story3_2TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story3_2TimeUpSprite.position = ccp(240, 836);
                [self addChild: story3_2TimeUpSprite];
                [self scheduleOnce:@selector(story3_2GameOver:) delay:2];
                story3_2TimeUpDrawn = TRUE;
            }
            else{
                if(story3_2TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story3_2TimeUpSprite.position = ccp(story3_2TimeUpSprite.position.x, story3_2TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story3_2Tick == 10){
            //LEVEL COMPLETE
            if(!story3_2AllTrollsDrawn){
                story3_2AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/boss_incoming_screen_640.png"];
                story3_2AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story3_2AllTrollsSprite];
                [self scheduleOnce:@selector(story3_2LevelComplete:) delay:5];
                story3_2AllTrollsDrawn = TRUE;
                story3_2SpriteBackLayer.position = ccp(-1000, -1000);
                story3_2SpriteMidLayer.position = ccp(-1000, -1000);
                story3_2SpriteFrontLayer.position = ccp(-1000, -1000);
            }
            else{
                if(story3_2AllTrollsSprite.position.x >= 240){
                    //DO NOTHING
                }
                else{
                    story3_2AllTrollsSprite.position = ccp(story3_2AllTrollsSprite.position.x +10, story3_2AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadstory3_2Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"database"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"granquier"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"kappa"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"kreytos"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"mantin"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"orksome"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"salty"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"wooferz"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charEight"] isEqualToString:@"zeke"]){
        story3_2CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story3_2CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        story3_2DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_8.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story3_2TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story3_2DialogueMenu = [CCMenu menuWithItems: story3_2DialogueSprite, nil];
    
    story3_2CharacterSprite.position = ccp(25, 100);
    story3_2CharacterName.position = ccp(120, 86);
    story3_2DialogueSprite.position = ccp(0, -120);
    story3_2TapToContinue.position = ccp(300, 95);
    
    [self addChild: story3_2CharacterSprite];
    [self addChild: story3_2CharacterName];
    [self addChild: story3_2TapToContinue];
    [self addChild: story3_2DialogueMenu];
}

-(void) loadstory3_2Sprites{
    story3_2VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_2VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story3_2VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    story3_2VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    story3_2VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(topRightExtraTouched:)];
    
    story3_2VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midLeftExtraTouched:)];
    
    story3_2VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    story3_2VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midRightExtraTouched:)];
    
    story3_2VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botLeftExtraTouched:)];
    
    story3_2VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    story3_2VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(botRightExtraTouched:)];
    
    story3_2VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story3_2VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story3_2VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story3_2VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story3_2VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story3_2VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story3_2VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story3_2VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story3_2VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story3_2VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story3_2VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story3_2VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story3_2VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story3_2VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story3_2VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story3_2VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story3_2VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story3_2VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story3_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_2TrollTLColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_2TrollTLColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_2TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story3_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_2TrollTMColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_2TrollTMColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_2TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story3_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_2TrollTRColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_2TrollTRColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_2TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story3_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_2TrollMLColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_2TrollMLColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_2TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story3_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_2TrollMMColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_2TrollMMColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_2TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story3_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                story3_2TrollMRColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story3_2TrollMRColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story3_2TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story3_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_2TrollBLColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_2TrollBLColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_2TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story3_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                story3_2TrollBMColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story3_2TrollBMColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story3_2TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story3_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                story3_2TrollBRColour = 0;
            }
            else if(i == 1){
                story3_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story3_2TrollBRColour = 1;
            }
            else if(i == 2){
                story3_2TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story3_2TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_2TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story3_2TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_2TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_2TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_2TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story3_2TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_2TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_2TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_2TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story3_2SpriteTopLeftMenu = [CCMenu menuWithItems: story3_2TrollSpriteTopLeft, nil];
    story3_2SpriteTopMidMenu = [CCMenu menuWithItems: story3_2TrollSpriteTopMid, nil];
    story3_2SpriteTopRightMenu = [CCMenu menuWithItems: story3_2TrollSpriteTopRight, nil];
    story3_2SpriteMidLeftMenu = [CCMenu menuWithItems: story3_2TrollSpriteMidLeft, nil];
    story3_2SpriteMidMidMenu = [CCMenu menuWithItems: story3_2TrollSpriteMidMid, nil];
    story3_2SpriteMidRightMenu = [CCMenu menuWithItems: story3_2TrollSpriteMidRight, nil];
    story3_2SpriteBotLeftMenu = [CCMenu menuWithItems: story3_2TrollSpriteBotLeft, nil];
    story3_2SpriteBotMidMenu = [CCMenu menuWithItems: story3_2TrollSpriteBotMid, nil];
    story3_2SpriteBotRightMenu = [CCMenu menuWithItems: story3_2TrollSpriteBotRight, nil];
    
    story3_2SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story3_2SpriteTopMidMenu.position = ccp(-1000, -1000);
    story3_2SpriteTopRightMenu.position = ccp(-1000, -1000);
    story3_2SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story3_2SpriteMidMidMenu.position = ccp(-1000, -1000);
    story3_2SpriteMidRightMenu.position = ccp(-1000, -1000);
    story3_2SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story3_2SpriteBotMidMenu.position = ccp(-1000, -1000);
    story3_2SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story3_2TrollTopLeftChat.position = ccp(-1000, -1000);
    story3_2TrollTopMidChat.position = ccp(-1000, -1000);
    story3_2TrollTopRightChat.position = ccp(-1000, -1000);
    story3_2TrollMidLeftChat.position = ccp(-1000, -1000);
    story3_2TrollMidMidChat.position = ccp(-1000, -1000);
    story3_2TrollMidRightChat.position = ccp(-1000, -1000);
    story3_2TrollBotLeftChat.position = ccp(-1000, -1000);
    story3_2TrollBotMidChat.position = ccp(-1000, -1000);
    story3_2TrollBotRightChat.position = ccp(-1000, -1000);
    
    story3_2VolcanoMenu = [CCMenu menuWithItems: story3_2VolcanoBackSpriteTopLeft, story3_2VolcanoBackSpriteTopMid, story3_2VolcanoBackSpriteTopRight,
                           story3_2VolcanoBackSpriteMidLeft, story3_2VolcanoBackSpriteMidMid, story3_2VolcanoBackSpriteMidRight,
                           story3_2VolcanoBackSpriteBotLeft, story3_2VolcanoBackSpriteBotMid, story3_2VolcanoBackSpriteBotRight, nil];
    
    [story3_2SpriteMidLayer addChild: story3_2SpriteTopLeftMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteTopMidMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteTopRightMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteMidLeftMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteMidMidMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteMidRightMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteBotLeftMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteBotMidMenu];
    [story3_2SpriteMidLayer addChild: story3_2SpriteBotRightMenu];
    
    [story3_2SpriteMidLayer addChild: story3_2TrollTopLeftChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollTopMidChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollTopRightChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollMidLeftChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollMidMidChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollMidRightChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollBotLeftChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollBotMidChat];
    [story3_2SpriteMidLayer addChild: story3_2TrollBotRightChat];
    
    [story3_2SpriteBackLayer addChild: story3_2VolcanoMenu];
    
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteTopLeft];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteTopMid];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteTopRight];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteMidLeft];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteMidMid];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteMidRight];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteBotLeft];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteBotMid];
    [story3_2SpriteFrontLayer addChild: story3_2VolcanoFrontSpriteBotRight];
    
    story3_2SpriteBackLayer.position = ccp(-1000, -1000);
    story3_2SpriteMidLayer.position = ccp(-1000, -1000);
    story3_2SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadstory3_2Text{
    story3_2ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_2ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_2ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_2ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story3_2TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_2TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2TrollsLeftNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_2TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_2TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_2TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_2TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_2TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2TrollsLeftNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_2TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2TrollsLeftNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_2TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2TrollsLeftNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_2TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_2TrollsLeftNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story3_2ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                               selectedImage:NULL];
    
    story3_2ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story3_2ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story3_2ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                            selectedSprite:NULL];
    
    story3_2ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    story3_2TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text_white.png"
                                                    selectedImage:NULL];
    
    story3_2TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]
                                                               selectedSprite:NULL];
    
    story3_2TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]
                                                               selectedSprite:NULL];
    
    story3_2TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                                 selectedSprite:NULL];
    
    story3_2LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story3_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story3_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story3_2LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_2LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    story3_2ScoreMenu = [CCMenu menuWithItems:story3_2ScoreText, story3_2ScoreSpriteDigitOne, story3_2ScoreSpriteDigitTwo,
                         story3_2ScoreSpriteDigitThree, story3_2ScoreSpriteDigitFour, nil];
    
    [story3_2ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story3_2TrollsLeftMenu = [CCMenu menuWithItems: story3_2TrollsLeftText, story3_2TrollsLeftSpriteDigitOne, story3_2TrollsLeftSpriteDigitTwo, story3_2TrollsLeftSpriteDigitThree, nil];
    [story3_2TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story3_2LivesMenu = [CCMenu menuWithItems: story3_2LivesText, story3_2LivesSpriteOne, story3_2LivesSpriteTwo, story3_2LivesSpriteThree, nil];
    [story3_2LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story3_2ScoreMenu.position = ccp(72, 308);
    story3_2TrollsLeftMenu.position = ccp(100, 286);
    story3_2LivesMenu.position = ccp(400, 308);
    
    [story3_2ScoreSpriteDigitOne setTag: 101];
    [story3_2ScoreSpriteDigitTwo setTag: 102];
    [story3_2ScoreSpriteDigitThree setTag: 103];
    [story3_2ScoreSpriteDigitFour setTag: 104];
    
    [story3_2TrollsLeftSpriteDigitOne setTag: 201];
    [story3_2TrollsLeftSpriteDigitTwo setTag: 202];
    [story3_2TrollsLeftSpriteDigitThree setTag: 203];
    
    [story3_2StatsLayer addChild: story3_2ScoreMenu];
    [story3_2StatsLayer addChild: story3_2TrollsLeftMenu];
    [story3_2StatsLayer addChild: story3_2LivesMenu];
    
    story3_2StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawstory3_2Elements{
    story3_2SpriteBackLayer.position = ccp(0, 0);
    story3_2SpriteMidLayer.position = ccp(0, 0);
    story3_2SpriteFrontLayer.position = ccp(0, 0);
    story3_2StatsLayer.position = ccp(0, 0);
    
    story3_2ScoreInt = story3_2CurrentScore;
    
    if(story3_2CurrentScore >= 0 && story3_2CurrentScore < 10){
        if(story3_2CurrentScore == 0){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
        }
        else if(story3_2CurrentScore == 1){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
        }
        else if(story3_2CurrentScore == 2){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
        }
        else if(story3_2CurrentScore == 3){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
        }
        else if(story3_2CurrentScore == 4){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
        }
        else if(story3_2CurrentScore == 5){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
        }
        else if(story3_2CurrentScore == 6){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
        }
        else if(story3_2CurrentScore == 7){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
        }
        else if(story3_2CurrentScore == 8){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
        }
        else if(story3_2CurrentScore == 9){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
    }
    
    else if(story3_2CurrentScore >= 10 && story3_2CurrentScore <= 99){
        int lSDS = story3_2ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
        }
        
        if(story3_2CurrentScore >= 10 && story3_2CurrentScore <= 19){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
        }
        else if(story3_2CurrentScore >= 20 && story3_2CurrentScore <= 29){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
        }
        else if(story3_2CurrentScore >= 30 && story3_2CurrentScore <= 39){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
        }
        else if(story3_2CurrentScore >= 40 && story3_2CurrentScore <= 49){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
        }
        else if(story3_2CurrentScore >= 50 && story3_2CurrentScore <= 59){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
        }
        else if(story3_2CurrentScore >= 60 && story3_2CurrentScore <= 69){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
        }
        else if(story3_2CurrentScore >= 70 && story3_2CurrentScore <= 79){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
        }
        else if(story3_2CurrentScore >= 80 && story3_2CurrentScore <= 89){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
        }
        else if(story3_2CurrentScore >= 90 && story3_2CurrentScore <= 99){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
    }
    
    else if(story3_2CurrentScore >= 100 && story3_2CurrentScore <= 999){
        int story3_2Count = 0;
        while(story3_2Count < 2){
            int lSDSs = story3_2ScoreInt % 10;
            if(story3_2Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                }
            }
            else if(story3_2Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
                }
            }
            story3_2ScoreInt /= 10;
            story3_2Count++;
        }
        
        if(story3_2CurrentScore >= 100 && story3_2CurrentScore <= 199){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber1_2];
        }
        else if(story3_2CurrentScore >= 200 && story3_2CurrentScore <= 299){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber2_2];
        }
        else if(story3_2CurrentScore >= 300 && story3_2CurrentScore <= 399){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber3_2];
        }
        else if(story3_2CurrentScore >= 400 && story3_2CurrentScore <= 499){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber4_2];
        }
        else if(story3_2CurrentScore >= 500 && story3_2CurrentScore <= 599){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber5_2];
        }
        else if(story3_2CurrentScore >= 600 && story3_2CurrentScore <= 699){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber6_2];
        }
        else if(story3_2CurrentScore >= 700 && story3_2CurrentScore <= 799){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber7_2];
        }
        else if(story3_2CurrentScore >= 800 && story3_2CurrentScore <= 899){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber8_2];
        }
        else if(story3_2CurrentScore >= 900 && story3_2CurrentScore <= 999){
            [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
    }
    
    else if(story3_2CurrentScore >= 1000 && story3_2CurrentScore <= 9999){
        int story3_2Count = 0;
        while(story3_2Count < 3){
            int lSDSsS = story3_2ScoreInt % 10;
            if(story3_2Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber9_4];
                }
            }
            else if(story3_2Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber9_3];
                }
            }
            else if(story3_2Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber9_2];
                }
            }
            story3_2ScoreInt /= 10;
            story3_2Count++;
            
            if(story3_2CurrentScore >= 1000 && story3_2CurrentScore <= 1999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber1_1];
            }
            else if(story3_2CurrentScore >= 2000 && story3_2CurrentScore <= 2999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber2_1];
            }
            else if(story3_2CurrentScore >= 3000 && story3_2CurrentScore <= 3999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber3_1];
            }
            else if(story3_2CurrentScore >= 4000 && story3_2CurrentScore <= 4999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber4_1];
            }
            else if(story3_2CurrentScore >= 5000 && story3_2CurrentScore <= 5999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber5_1];
            }
            else if(story3_2CurrentScore >= 6000 && story3_2CurrentScore <= 6999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber6_1];
            }
            else if(story3_2CurrentScore >= 7000 && story3_2CurrentScore <= 7999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber7_1];
            }
            else if(story3_2CurrentScore >= 8000 && story3_2CurrentScore <= 8999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber8_1];
            }
            else if(story3_2CurrentScore >= 9000 && story3_2CurrentScore <= 9999){
                [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber9_1];
            }
        }
    }
    
    else if(story3_2CurrentScore <= 0){
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 104] setNormalImage:story3_2ScoreNumber0_4];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 103] setNormalImage:story3_2ScoreNumber0_3];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 102] setNormalImage:story3_2ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_2ScoreMenu getChildByTag: 101] setNormalImage:story3_2ScoreNumber0_1];
    }
    
    if(story3_2LivesRemaining == 2){
        story3_2LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(story3_2LivesRemaining == 1){
        story3_2LivesSpriteThree.position = ccp(-1000, -1000);
        story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(story3_2LivesRemaining == 0){
        story3_2LivesSpriteThree.position = ccp(-1000, -1000);
        story3_2LivesSpriteTwo.position = ccp(-1000, -1000);
        story3_2LivesSpriteOne.position = ccp(-1000, -1000);
    }
}

-(void) dialogueTouched:(id)sender{
    id fadeAction = [CCFadeOut actionWithDuration:0.5f];
    [story3_2DialogueSprite runAction: fadeAction];
    story3_2DialogueTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story3_2StartTrollTLDeathAnim || story3_2StartTrollTLMissed || story3_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story3_2TrollTLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story3_2StartTrollTMDeathAnim || story3_2StartTrollTMMissed || story3_2TrollTMResetTimer > 0){
        
    }
    else{
        story3_2TrollTMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story3_2StartTrollTRDeathAnim || story3_2StartTrollTRMissed || story3_2TrollTRResetTimer > 0){
        
    }
    else{
        story3_2TrollTRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story3_2StartTrollMLDeathAnim || story3_2StartTrollMLMissed || story3_2TrollMLResetTimer > 0){
        
    }
    else{
        story3_2TrollMLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story3_2StartTrollMMDeathAnim || story3_2StartTrollMMMissed || story3_2TrollMMResetTimer > 0){
        
    }
    else{
        story3_2TrollMMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story3_2StartTrollMRDeathAnim || story3_2StartTrollMRMissed || story3_2TrollMRResetTimer > 0){
        
    }
    else{
        story3_2TrollMRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story3_2StartTrollBLDeathAnim || story3_2StartTrollBLMissed || story3_2TrollBLResetTimer > 0){
        
    }
    else{
        story3_2TrollBLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story3_2StartTrollBMDeathAnim || story3_2StartTrollBMMissed || story3_2TrollBMResetTimer > 0){
        
    }
    else{
        story3_2TrollBMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story3_2StartTrollBRDeathAnim || story3_2StartTrollBRMissed || story3_2TrollBRResetTimer > 0){
        
    }
    else{
        story3_2TrollBRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story3_2StartTrollTLDeathAnim || story3_2StartTrollTLMissed || story3_2TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story3_2TrollTLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story3_2StartTrollTMDeathAnim || story3_2StartTrollTMMissed || story3_2TrollTMResetTimer > 0){
        
    }
    else{
        story3_2TrollTMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story3_2StartTrollTRDeathAnim || story3_2StartTrollTRMissed || story3_2TrollTRResetTimer > 0){
        
    }
    else{
        story3_2TrollTRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story3_2StartTrollMLDeathAnim || story3_2StartTrollMLMissed || story3_2TrollMLResetTimer > 0){
        
    }
    else{
        story3_2TrollMLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story3_2StartTrollMMDeathAnim || story3_2StartTrollMMMissed || story3_2TrollMMResetTimer > 0){
        
    }
    else{
        story3_2TrollMMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story3_2StartTrollMRDeathAnim || story3_2StartTrollMRMissed || story3_2TrollMRResetTimer > 0){
        
    }
    else{
        story3_2TrollMRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story3_2StartTrollBLDeathAnim || story3_2StartTrollBLMissed || story3_2TrollBLResetTimer > 0){
        
    }
    else{
        story3_2TrollBLTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story3_2StartTrollBMDeathAnim || story3_2StartTrollBMMissed || story3_2TrollBMResetTimer > 0){
        
    }
    else{
        story3_2TrollBMTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story3_2StartTrollBRDeathAnim || story3_2StartTrollBRMissed || story3_2TrollBRResetTimer > 0){
        
    }
    else{
        story3_2TrollBRTouched = TRUE;
        story3_2CurrentScore += 7;
        story3_2TrollsRemaining--;
    }
}

-(void) story3_2GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story3_2CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story3_2LevelComplete:(id)sender{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [[NSUserDefaults standardUserDefaults] setInteger:story3_2CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story3_2LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:8 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:2 scene: [BossSceneFinal node] withColor:ccBLACK]];
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_boss_theme.mp3"];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story3_2TrollTopLeftChat release];
    [story3_2TrollTopMidChat release];
    [story3_2TrollTopRightChat release];
    [story3_2TrollMidLeftChat release];
    [story3_2TrollMidMidChat release];
    [story3_2TrollMidRightChat release];
    [story3_2TrollBotLeftChat release];
    [story3_2TrollBotMidChat release];
    [story3_2TrollBotRightChat release];
    [story3_2TrollSpriteTLGreen release];
    [story3_2TrollSpriteTLGrey release];
    [story3_2TrollSpriteTLPurple release];
    [story3_2TrollSpriteTMGreen release];
    [story3_2TrollSpriteTMGrey release];
    [story3_2TrollSpriteTMPurple release];
    [story3_2TrollSpriteTRGreen release];
    [story3_2TrollSpriteTRGrey release];
    [story3_2TrollSpriteTRPurple release];
    [story3_2TrollSpriteMLGreen release];
    [story3_2TrollSpriteMLGrey release];
    [story3_2TrollSpriteMLPurple release];
    [story3_2TrollSpriteMMGreen release];
    [story3_2TrollSpriteMMGrey release];
    [story3_2TrollSpriteMMPurple release];
    [story3_2TrollSpriteMRGreen release];
    [story3_2TrollSpriteMRGrey release];
    [story3_2TrollSpriteMRPurple release];
    [story3_2TrollSpriteBLGreen release];
    [story3_2TrollSpriteBLGrey release];
    [story3_2TrollSpriteBLPurple release];
    [story3_2TrollSpriteBMGreen release];
    [story3_2TrollSpriteBMGrey release];
    [story3_2TrollSpriteBMPurple release];
    [story3_2TrollSpriteBRGreen release];
    [story3_2TrollSpriteBRGrey release];
    [story3_2TrollSpriteBRPurple release];
    [story3_2TrollSpriteTLDeadGreen release];
    [story3_2TrollSpriteTLDeadGrey release];
    [story3_2TrollSpriteTLDeadPurple release];
    [story3_2TrollSpriteTMDeadGreen release];
    [story3_2TrollSpriteTMDeadGrey release];
    [story3_2TrollSpriteTMDeadPurple release];
    [story3_2TrollSpriteTRDeadGreen release];
    [story3_2TrollSpriteTRDeadGrey release];
    [story3_2TrollSpriteTRDeadPurple release];
    [story3_2TrollSpriteMLDeadGreen release];
    [story3_2TrollSpriteMLDeadGrey release];
    [story3_2TrollSpriteMLDeadPurple release];
    [story3_2TrollSpriteMMDeadGreen release];
    [story3_2TrollSpriteMMDeadGrey release];
    [story3_2TrollSpriteMMDeadPurple release];
    [story3_2TrollSpriteMRDeadGreen release];
    [story3_2TrollSpriteMRDeadGrey release];
    [story3_2TrollSpriteMRDeadPurple release];
    [story3_2TrollSpriteBLDeadGreen release];
    [story3_2TrollSpriteBLDeadGrey release];
    [story3_2TrollSpriteBLDeadPurple release];
    [story3_2TrollSpriteBMDeadGreen release];
    [story3_2TrollSpriteBMDeadGrey release];
    [story3_2TrollSpriteBMDeadPurple release];
    [story3_2TrollSpriteBRDeadGreen release];
    [story3_2TrollSpriteBRDeadGrey release];
    [story3_2TrollSpriteBRDeadPurple release];
    [story3_2ScoreNumber0_1 release];
    [story3_2ScoreNumber0_2 release];
    [story3_2ScoreNumber0_3 release];
    [story3_2ScoreNumber0_4 release];
    [story3_2ScoreNumber1_1 release];
    [story3_2ScoreNumber1_2 release];
    [story3_2ScoreNumber1_3 release];
    [story3_2ScoreNumber1_4 release];
    [story3_2ScoreNumber2_1 release];
    [story3_2ScoreNumber2_2 release];
    [story3_2ScoreNumber2_3 release];
    [story3_2ScoreNumber2_4 release];
    [story3_2ScoreNumber3_1 release];
    [story3_2ScoreNumber3_2 release];
    [story3_2ScoreNumber3_3 release];
    [story3_2ScoreNumber3_4 release];
    [story3_2ScoreNumber4_1 release];
    [story3_2ScoreNumber4_2 release];
    [story3_2ScoreNumber4_3 release];
    [story3_2ScoreNumber4_4 release];
    [story3_2ScoreNumber5_1 release];
    [story3_2ScoreNumber5_2 release];
    [story3_2ScoreNumber5_3 release];
    [story3_2ScoreNumber5_4 release];
    [story3_2ScoreNumber6_1 release];
    [story3_2ScoreNumber6_2 release];
    [story3_2ScoreNumber6_3 release];
    [story3_2ScoreNumber6_4 release];
    [story3_2ScoreNumber7_1 release];
    [story3_2ScoreNumber7_2 release];
    [story3_2ScoreNumber7_3 release];
    [story3_2ScoreNumber7_4 release];
    [story3_2ScoreNumber8_1 release];
    [story3_2ScoreNumber8_2 release];
    [story3_2ScoreNumber8_3 release];
    [story3_2ScoreNumber8_4 release];
    [story3_2ScoreNumber9_1 release];
    [story3_2ScoreNumber9_2 release];
    [story3_2ScoreNumber9_3 release];
    [story3_2ScoreNumber9_4 release];
    [story3_2TrollsLeftNumber0_1 release];
    [story3_2TrollsLeftNumber0_2 release];
    [story3_2TrollsLeftNumber0_3 release];
    [story3_2TrollsLeftNumber1_1 release];
    [story3_2TrollsLeftNumber1_2 release];
    [story3_2TrollsLeftNumber1_3 release];
    [story3_2TrollsLeftNumber2_1 release];
    [story3_2TrollsLeftNumber2_2 release];
    [story3_2TrollsLeftNumber3_1 release];
    [story3_2TrollsLeftNumber3_2 release];
    [story3_2TrollsLeftNumber4_1 release];
    [story3_2TrollsLeftNumber4_2 release];
    [story3_2TrollsLeftNumber5_1 release];
    [story3_2TrollsLeftNumber5_2 release];
    [story3_2TrollsLeftNumber6_1 release];
    [story3_2TrollsLeftNumber6_2 release];
    [story3_2TrollsLeftNumber7_1 release];
    [story3_2TrollsLeftNumber7_2 release];
    [story3_2TrollsLeftNumber8_1 release];
    [story3_2TrollsLeftNumber8_2 release];
    [story3_2TrollsLeftNumber9_1 release];
    [story3_2TrollsLeftNumber9_2 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
