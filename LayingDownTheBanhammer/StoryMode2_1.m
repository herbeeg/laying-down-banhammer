//
//  StoryMode2_1.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode2_1.h"
#import "GameOver.h"
#import "GameResults.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode2_1

CCSprite *story2_1Background;
CCSprite *story2_1Intro3;
CCSprite *story2_1Intro2;
CCSprite *story2_1Intro1;
CCSprite *story2_1Intro0;

CCLayer *story2_1StatsLayer;
CCLayer *story2_1SpriteFrontLayer;
CCLayer *story2_1SpriteMidLayer;
CCLayer *story2_1SpriteBackLayer;

CCMenu *story2_1DialogueMenu;

CCSprite *story2_1CharacterSprite;
CCSprite *story2_1CharacterName;
CCMenuItemImage *story2_1DialogueSprite;

CCMenu *story2_1ScoreMenu;
CCMenu *story2_1LivesMenu;
CCMenu *story2_1TrollsLeftMenu;

CCMenu *story2_1SpriteTopLeftMenu;
CCMenu *story2_1SpriteTopMidMenu;
CCMenu *story2_1SpriteTopRightMenu;
CCMenu *story2_1SpriteMidLeftMenu;
CCMenu *story2_1SpriteMidMidMenu;
CCMenu *story2_1SpriteMidRightMenu;
CCMenu *story2_1SpriteBotLeftMenu;
CCMenu *story2_1SpriteBotMidMenu;
CCMenu *story2_1SpriteBotRightMenu;

CCMenuItemImage *story2_1ScoreText;
CCMenuItemSprite *story2_1ScoreSpriteDigitOne;
CCMenuItemSprite *story2_1ScoreSpriteDigitTwo;
CCMenuItemSprite *story2_1ScoreSpriteDigitThree;
CCMenuItemSprite *story2_1ScoreSpriteDigitFour;

CCMenuItemImage *story2_1LivesText;
CCMenuItemSprite *story2_1LivesSpriteOne;
CCMenuItemSprite *story2_1LivesSpriteTwo;
CCMenuItemSprite *story2_1LivesSpriteThree;

CCMenuItemImage *story2_1TrollsLeftText;
CCMenuItemSprite *story2_1TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story2_1TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story2_1TrollsLeftSpriteDigitThree;

CCSprite *story2_1VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story2_1VolcanoBackSpriteTopLeft;
CCSprite *story2_1VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story2_1VolcanoBackSpriteTopMid;
CCSprite *story2_1VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story2_1VolcanoBackSpriteTopRight;
CCSprite *story2_1VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story2_1VolcanoBackSpriteMidLeft;
CCSprite *story2_1VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story2_1VolcanoBackSpriteMidMid;
CCSprite *story2_1VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story2_1VolcanoBackSpriteMidRight;
CCSprite *story2_1VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story2_1VolcanoBackSpriteBotLeft;
CCSprite *story2_1VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story2_1VolcanoBackSpriteBotMid;
CCSprite *story2_1VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story2_1VolcanoBackSpriteBotRight;

CCMenu *story2_1VolcanoMenu;

int story2_1TrollTLColour = -1;
int story2_1TrollTMColour = -1;
int story2_1TrollTRColour = -1;
int story2_1TrollMLColour = -1;
int story2_1TrollMMColour = -1;
int story2_1TrollMRColour = -1;
int story2_1TrollBLColour = -1;
int story2_1TrollBMColour = -1;
int story2_1TrollBRColour = -1;

CCMenuItemSprite *story2_1TrollSpriteTopLeft;
CCMenuItemSprite *story2_1TrollSpriteTopMid;
CCMenuItemSprite *story2_1TrollSpriteTopRight;
CCMenuItemSprite *story2_1TrollSpriteMidLeft;
CCMenuItemSprite *story2_1TrollSpriteMidMid;
CCMenuItemSprite *story2_1TrollSpriteMidRight;
CCMenuItemSprite *story2_1TrollSpriteBotLeft;
CCMenuItemSprite *story2_1TrollSpriteBotMid;
CCMenuItemSprite *story2_1TrollSpriteBotRight;

CCSprite *story2_1TrollSpriteTLGreen;
CCSprite *story2_1TrollSpriteTLGrey;
CCSprite *story2_1TrollSpriteTLPurple;
CCSprite *story2_1TrollSpriteTMGreen;
CCSprite *story2_1TrollSpriteTMGrey;
CCSprite *story2_1TrollSpriteTMPurple;
CCSprite *story2_1TrollSpriteTRGreen;
CCSprite *story2_1TrollSpriteTRGrey;
CCSprite *story2_1TrollSpriteTRPurple;
CCSprite *story2_1TrollSpriteMLGreen;
CCSprite *story2_1TrollSpriteMLGrey;
CCSprite *story2_1TrollSpriteMLPurple;
CCSprite *story2_1TrollSpriteMMGreen;
CCSprite *story2_1TrollSpriteMMGrey;
CCSprite *story2_1TrollSpriteMMPurple;
CCSprite *story2_1TrollSpriteMRGreen;
CCSprite *story2_1TrollSpriteMRGrey;
CCSprite *story2_1TrollSpriteMRPurple;
CCSprite *story2_1TrollSpriteBLGreen;
CCSprite *story2_1TrollSpriteBLGrey;
CCSprite *story2_1TrollSpriteBLPurple;
CCSprite *story2_1TrollSpriteBMGreen;
CCSprite *story2_1TrollSpriteBMGrey;
CCSprite *story2_1TrollSpriteBMPurple;
CCSprite *story2_1TrollSpriteBRGreen;
CCSprite *story2_1TrollSpriteBRGrey;
CCSprite *story2_1TrollSpriteBRPurple;

CCSprite *story2_1TrollSpriteTLDeadGreen;
CCSprite *story2_1TrollSpriteTLDeadGrey;
CCSprite *story2_1TrollSpriteTLDeadPurple;
CCSprite *story2_1TrollSpriteTMDeadGreen;
CCSprite *story2_1TrollSpriteTMDeadGrey;
CCSprite *story2_1TrollSpriteTMDeadPurple;
CCSprite *story2_1TrollSpriteTRDeadGreen;
CCSprite *story2_1TrollSpriteTRDeadGrey;
CCSprite *story2_1TrollSpriteTRDeadPurple;
CCSprite *story2_1TrollSpriteMLDeadGreen;
CCSprite *story2_1TrollSpriteMLDeadGrey;
CCSprite *story2_1TrollSpriteMLDeadPurple;
CCSprite *story2_1TrollSpriteMMDeadGreen;
CCSprite *story2_1TrollSpriteMMDeadGrey;
CCSprite *story2_1TrollSpriteMMDeadPurple;
CCSprite *story2_1TrollSpriteMRDeadGreen;
CCSprite *story2_1TrollSpriteMRDeadGrey;
CCSprite *story2_1TrollSpriteMRDeadPurple;
CCSprite *story2_1TrollSpriteBLDeadGreen;
CCSprite *story2_1TrollSpriteBLDeadGrey;
CCSprite *story2_1TrollSpriteBLDeadPurple;
CCSprite *story2_1TrollSpriteBMDeadGreen;
CCSprite *story2_1TrollSpriteBMDeadGrey;
CCSprite *story2_1TrollSpriteBMDeadPurple;
CCSprite *story2_1TrollSpriteBRDeadGreen;
CCSprite *story2_1TrollSpriteBRDeadGrey;
CCSprite *story2_1TrollSpriteBRDeadPurple;

CCSprite *story2_1ScoreNumber0_1;
CCSprite *story2_1ScoreNumber0_2;
CCSprite *story2_1ScoreNumber0_3;
CCSprite *story2_1ScoreNumber0_4;
CCSprite *story2_1ScoreNumber1_1;
CCSprite *story2_1ScoreNumber1_2;
CCSprite *story2_1ScoreNumber1_3;
CCSprite *story2_1ScoreNumber1_4;
CCSprite *story2_1ScoreNumber2_1;
CCSprite *story2_1ScoreNumber2_2;
CCSprite *story2_1ScoreNumber2_3;
CCSprite *story2_1ScoreNumber2_4;
CCSprite *story2_1ScoreNumber3_1;
CCSprite *story2_1ScoreNumber3_2;
CCSprite *story2_1ScoreNumber3_3;
CCSprite *story2_1ScoreNumber3_4;
CCSprite *story2_1ScoreNumber4_1;
CCSprite *story2_1ScoreNumber4_2;
CCSprite *story2_1ScoreNumber4_3;
CCSprite *story2_1ScoreNumber4_4;
CCSprite *story2_1ScoreNumber5_1;
CCSprite *story2_1ScoreNumber5_2;
CCSprite *story2_1ScoreNumber5_3;
CCSprite *story2_1ScoreNumber5_4;
CCSprite *story2_1ScoreNumber6_1;
CCSprite *story2_1ScoreNumber6_2;
CCSprite *story2_1ScoreNumber6_3;
CCSprite *story2_1ScoreNumber6_4;
CCSprite *story2_1ScoreNumber7_1;
CCSprite *story2_1ScoreNumber7_2;
CCSprite *story2_1ScoreNumber7_3;
CCSprite *story2_1ScoreNumber7_4;
CCSprite *story2_1ScoreNumber8_1;
CCSprite *story2_1ScoreNumber8_2;
CCSprite *story2_1ScoreNumber8_3;
CCSprite *story2_1ScoreNumber8_4;
CCSprite *story2_1ScoreNumber9_1;
CCSprite *story2_1ScoreNumber9_2;
CCSprite *story2_1ScoreNumber9_3;
CCSprite *story2_1ScoreNumber9_4;

CCSprite *story2_1TrollsLeftNumber0_1;
CCSprite *story2_1TrollsLeftNumber0_2;
CCSprite *story2_1TrollsLeftNumber0_3;
CCSprite *story2_1TrollsLeftNumber1_1;
CCSprite *story2_1TrollsLeftNumber1_2;
CCSprite *story2_1TrollsLeftNumber2_1;
CCSprite *story2_1TrollsLeftNumber2_2;
CCSprite *story2_1TrollsLeftNumber3_1;
CCSprite *story2_1TrollsLeftNumber3_2;
CCSprite *story2_1TrollsLeftNumber4_1;
CCSprite *story2_1TrollsLeftNumber4_2;
CCSprite *story2_1TrollsLeftNumber5_1;
CCSprite *story2_1TrollsLeftNumber5_2;
CCSprite *story2_1TrollsLeftNumber6_1;
CCSprite *story2_1TrollsLeftNumber6_2;
CCSprite *story2_1TrollsLeftNumber7_1;
CCSprite *story2_1TrollsLeftNumber7_2;
CCSprite *story2_1TrollsLeftNumber8_1;
CCSprite *story2_1TrollsLeftNumber8_2;
CCSprite *story2_1TrollsLeftNumber9_1;
CCSprite *story2_1TrollsLeftNumber9_2;

CCSprite *story2_1TrollTopLeftChat;
CCSprite *story2_1TrollTopMidChat;
CCSprite *story2_1TrollTopRightChat;
CCSprite *story2_1TrollMidLeftChat;
CCSprite *story2_1TrollMidMidChat;
CCSprite *story2_1TrollMidRightChat;
CCSprite *story2_1TrollBotLeftChat;
CCSprite *story2_1TrollBotMidChat;
CCSprite *story2_1TrollBotRightChat;

CCSprite *story2_1TapToContinue;

CCSprite *story2_1TimeUpSprite;
BOOL story2_1TimeUpDrawn = FALSE;

CCSprite *story2_1AllTrollsSprite;
BOOL story2_1AllTrollsDrawn = FALSE;

int story2_1CurrentScore = 0;
int story2_1PrevScore = 0;
int story2_1ScoreInt = 0;
int story2_1LivesRemaining = 0;
int story2_1TrollsRemaining = 90;
int story2_1TrollsRemInt = 0;
int story2_1TrollsPrevRem = 90;

float story2_1TrollRespawnInterval = 0.0f;

float story2_1TrollTLResetTimer = 0.5f;
float story2_1TrollTMResetTimer = 0.8f;
float story2_1TrollTRResetTimer = 0.2f;
float story2_1TrollMLResetTimer = 0.4f;
float story2_1TrollMMResetTimer = 0.1f;
float story2_1TrollMRResetTimer = 0.9f;
float story2_1TrollBLResetTimer = 0.3f;
float story2_1TrollBMResetTimer = 0.7f;
float story2_1TrollBRResetTimer = 0.0f;

float story2_1TrollTLTimeInPlay = 0.0f;
float story2_1TrollTMTimeInPlay = 0.0f;
float story2_1TrollTRTimeInPlay = 0.0f;
float story2_1TrollMLTimeInPlay = 0.0f;
float story2_1TrollMMTimeInPlay = 0.0f;
float story2_1TrollMRTimeInPlay = 0.0f;
float story2_1TrollBLTimeInPlay = 0.0f;
float story2_1TrollBMTimeInPlay = 0.0f;
float story2_1TrollBRTimeInPlay = 0.0f;

float story2_1TrollTLFadingOutTimer = 0.0f;
float story2_1TrollTMFadingOutTimer = 0.0f;
float story2_1TrollTRFadingOutTimer = 0.0f;
float story2_1TrollMLFadingOutTimer = 0.0f;
float story2_1TrollMMFadingOutTimer = 0.0f;
float story2_1TrollMRFadingOutTimer = 0.0f;
float story2_1TrollBLFadingOutTimer = 0.0f;
float story2_1TrollBMFadingOutTimer = 0.0f;
float story2_1TrollBRFadingOutTimer = 0.0f;

BOOL story2_1TrollTLTouched = FALSE;
BOOL story2_1TrollTMTouched = FALSE;
BOOL story2_1TrollTRTouched = FALSE;
BOOL story2_1TrollMLTouched = FALSE;
BOOL story2_1TrollMMTouched = FALSE;
BOOL story2_1TrollMRTouched = FALSE;
BOOL story2_1TrollBLTouched = FALSE;
BOOL story2_1TrollBMTouched = FALSE;
BOOL story2_1TrollBRTouched = FALSE;

BOOL story2_1TrollTLInPlay = FALSE;
BOOL story2_1TrollTMInPlay = FALSE;
BOOL story2_1TrollTRInPlay = FALSE;
BOOL story2_1TrollMLInPlay = FALSE;
BOOL story2_1TrollMMInPlay = FALSE;
BOOL story2_1TrollMRInPlay = FALSE;
BOOL story2_1TrollBLInPlay = FALSE;
BOOL story2_1TrollBMInPlay = FALSE;
BOOL story2_1TrollBRInPlay = FALSE;

BOOL story2_1StartTrollTLDeathAnim = FALSE;
BOOL story2_1StartTrollTMDeathAnim = FALSE;
BOOL story2_1StartTrollTRDeathAnim = FALSE;
BOOL story2_1StartTrollMLDeathAnim = FALSE;
BOOL story2_1StartTrollMMDeathAnim = FALSE;
BOOL story2_1StartTrollMRDeathAnim = FALSE;
BOOL story2_1StartTrollBLDeathAnim = FALSE;
BOOL story2_1StartTrollBMDeathAnim = FALSE;
BOOL story2_1StartTrollBRDeathAnim = FALSE;

BOOL story2_1StartTrollTLMissed = FALSE;
BOOL story2_1StartTrollTMMissed = FALSE;
BOOL story2_1StartTrollTRMissed = FALSE;
BOOL story2_1StartTrollMLMissed = FALSE;
BOOL story2_1StartTrollMMMissed = FALSE;
BOOL story2_1StartTrollMRMissed = FALSE;
BOOL story2_1StartTrollBLMissed = FALSE;
BOOL story2_1StartTrollBMMissed = FALSE;
BOOL story2_1StartTrollBRMissed = FALSE;

BOOL story2_1StartRound = FALSE;
BOOL story2_1DialogueTouched = FALSE;

ccTime story2_1GameTime = 0.0f;
int story2_1Tick = 0;
BOOL story2_1IntroFinished = FALSE;
BOOL story2_1AllChange = FALSE;

@implementation StoryMode2_1

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode2_1 *layer = [StoryMode2_1 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story2_1StatsLayer = [CCLayer node];
        story2_1SpriteFrontLayer = [CCLayer node];
        story2_1SpriteMidLayer = [CCLayer node];
        story2_1SpriteBackLayer = [CCLayer node];
        
        story2_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_2_background_640.png"];
        story2_1Background.position = ccp(240, 160);
        
        [self addChild: story2_1Background];
        [self addChild: story2_1StatsLayer];
        [self addChild: story2_1SpriteBackLayer];
        [self addChild: story2_1SpriteFrontLayer];
        [self addChild: story2_1SpriteMidLayer];
        
        [self loadstory2_1Sprites];
        [self loadstory2_1Text];
        [self loadstory2_1Dialogue];
    }
    
    story2_1TrollTLColour = -1;
    story2_1TrollTMColour = -1;
    story2_1TrollTRColour = -1;
    story2_1TrollMLColour = -1;
    story2_1TrollMMColour = -1;
    story2_1TrollMRColour = -1;
    story2_1TrollBLColour = -1;
    story2_1TrollBMColour = -1;
    story2_1TrollBRColour = -1;
    story2_1TimeUpDrawn = FALSE;
    story2_1AllTrollsDrawn = FALSE;
    story2_1ScoreInt = 0;
    story2_1TrollsRemaining = 90;
    story2_1TrollsRemInt = 0;
    story2_1TrollsPrevRem = 90;
    story2_1TrollRespawnInterval = 0.0f;
    story2_1TrollTLResetTimer = 0.5f;
    story2_1TrollTMResetTimer = 0.8f;
    story2_1TrollTRResetTimer = 0.2f;
    story2_1TrollMLResetTimer = 0.4f;
    story2_1TrollMMResetTimer = 0.1f;
    story2_1TrollMRResetTimer = 0.9f;
    story2_1TrollBLResetTimer = 0.3f;
    story2_1TrollBMResetTimer = 0.7f;
    story2_1TrollBRResetTimer = 0.0f;
    story2_1TrollTLTimeInPlay = 0.0f;
    story2_1TrollTMTimeInPlay = 0.0f;
    story2_1TrollTRTimeInPlay = 0.0f;
    story2_1TrollMLTimeInPlay = 0.0f;
    story2_1TrollMMTimeInPlay = 0.0f;
    story2_1TrollMRTimeInPlay = 0.0f;
    story2_1TrollBLTimeInPlay = 0.0f;
    story2_1TrollBMTimeInPlay = 0.0f;
    story2_1TrollBRTimeInPlay = 0.0f;
    story2_1TrollTLFadingOutTimer = 0.0f;
    story2_1TrollTMFadingOutTimer = 0.0f;
    story2_1TrollTRFadingOutTimer = 0.0f;
    story2_1TrollMLFadingOutTimer = 0.0f;
    story2_1TrollMMFadingOutTimer = 0.0f;
    story2_1TrollMRFadingOutTimer = 0.0f;
    story2_1TrollBLFadingOutTimer = 0.0f;
    story2_1TrollBMFadingOutTimer = 0.0f;
    story2_1TrollBRFadingOutTimer = 0.0f;
    story2_1TrollTLTouched = FALSE;
    story2_1TrollTMTouched = FALSE;
    story2_1TrollTRTouched = FALSE;
    story2_1TrollMLTouched = FALSE;
    story2_1TrollMMTouched = FALSE;
    story2_1TrollMRTouched = FALSE;
    story2_1TrollBLTouched = FALSE;
    story2_1TrollBMTouched = FALSE;
    story2_1TrollBRTouched = FALSE;
    story2_1TrollTLInPlay = FALSE;
    story2_1TrollTMInPlay = FALSE;
    story2_1TrollTRInPlay = FALSE;
    story2_1TrollMLInPlay = FALSE;
    story2_1TrollMMInPlay = FALSE;
    story2_1TrollMRInPlay = FALSE;
    story2_1TrollBLInPlay = FALSE;
    story2_1TrollBMInPlay = FALSE;
    story2_1TrollBRInPlay = FALSE;
    story2_1StartTrollTLDeathAnim = FALSE;
    story2_1StartTrollTMDeathAnim = FALSE;
    story2_1StartTrollTRDeathAnim = FALSE;
    story2_1StartTrollMLDeathAnim = FALSE;
    story2_1StartTrollMMDeathAnim = FALSE;
    story2_1StartTrollMRDeathAnim = FALSE;
    story2_1StartTrollBLDeathAnim = FALSE;
    story2_1StartTrollBMDeathAnim = FALSE;
    story2_1StartTrollBRDeathAnim = FALSE;
    story2_1StartTrollTLMissed = FALSE;
    story2_1StartTrollTMMissed = FALSE;
    story2_1StartTrollTRMissed = FALSE;
    story2_1StartTrollMLMissed = FALSE;
    story2_1StartTrollMMMissed = FALSE;
    story2_1StartTrollMRMissed = FALSE;
    story2_1StartTrollBLMissed = FALSE;
    story2_1StartTrollBMMissed = FALSE;
    story2_1StartTrollBRMissed = FALSE;
    story2_1StartRound = FALSE;
    story2_1DialogueTouched = FALSE;
    story2_1Tick = 0;
    story2_1IntroFinished = FALSE;
    story2_1AllChange = FALSE;
    story2_1GameTime = 0.0f;
    
    story2_1CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story2_1PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story2_1LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story2_1StartRound){
        if(story2_1DialogueTouched){
            story2_1DialogueSprite.position = ccp(-1000, -1000);
            story2_1CharacterSprite.position = ccp(-1000, -1000);
            story2_1CharacterName.position = ccp(-1000, -1000);
            story2_1TapToContinue.position = ccp(-1000, -1000);
            story2_1DialogueTouched = FALSE;
            story2_1StartRound = TRUE;
        }
    }
    else{
        story2_1GameTime += dt;
        
        if (story2_1GameTime < 5 && story2_1IntroFinished == NO){
            if(story2_1GameTime > 0 && story2_1GameTime < 1.5){
                if(story2_1Tick == 0){
                    story2_1Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story2_1Intro3.position = ccp(240, 160);
                    [self addChild: story2_1Intro3];
                    story2_1Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story2_1GameTime > 1.5 && story2_1GameTime < 2.5){
                if(story2_1Tick == 1) {
                    story2_1Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story2_1Intro2.position = ccp(240, 160);
                    [self addChild: story2_1Intro2];
                    story2_1Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story2_1Tick == 2){
                    [self removeChild: story2_1Intro3 cleanup:YES];
                    story2_1Tick = 3;
                }
            }
            else if(story2_1GameTime > 2.5 && story2_1GameTime < 3.5){
                if(story2_1Tick == 3){
                    story2_1Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story2_1Intro1.position = ccp(240, 160);
                    [self addChild: story2_1Intro1];
                    story2_1Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story2_1Tick == 4) {
                    [self removeChild: story2_1Intro2 cleanup:YES];
                    story2_1Tick = 5;
                }
            }
            else if(story2_1GameTime > 3.5 && story2_1GameTime < 4.5){
                if(story2_1Tick == 5){
                    story2_1Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story2_1Intro0.position = ccp(240, 160);
                    [self addChild: story2_1Intro0];
                    story2_1Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story2_1Tick == 6) {
                    [self removeChild: story2_1Intro1 cleanup:YES];
                    story2_1Tick = 7;
                }
            }
            else{
                if(story2_1Tick == 7){
                    story2_1IntroFinished = YES;
                    [self removeChild: story2_1Intro0 cleanup:YES];
                    story2_1Tick = 8;
                    story2_1AllChange = TRUE;
                }
            }
        }
        else if(story2_1Tick == 8){
            if(story2_1AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_2.mp3"];
                [self drawstory2_1Elements];
                story2_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story2_1TrollTLInPlay){
                if(story2_1TrollTLTimeInPlay >= 4.0f){
                    story2_1StartTrollTLMissed = TRUE;
                    story2_1TrollTopLeftChat.position = ccp(-1000, -1000);
                    story2_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollTLTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollTLResetTimer -= dt;
                if(story2_1TrollTLResetTimer <= 0){
                    story2_1SpriteTopLeftMenu.position = ccp(80, 250);
                    story2_1TrollTopLeftChat.position = ccp(112, 260);
                    story2_1TrollTLInPlay = TRUE;
                    story2_1TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollTMInPlay){
                if(story2_1TrollTMTimeInPlay >= 4.0f){
                    story2_1StartTrollTMMissed = TRUE;
                    story2_1TrollTopMidChat.position = ccp(-1000, -1000);
                    story2_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollTMTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollTMResetTimer -= dt;
                if(story2_1TrollTMResetTimer <= 0){
                    story2_1SpriteTopMidMenu.position = ccp(240, 250);
                    story2_1TrollTopMidChat.position = ccp(272, 260);
                    story2_1TrollTMInPlay = TRUE;
                    story2_1TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollTRInPlay){
                if(story2_1TrollTRTimeInPlay >= 4.0f){
                    story2_1StartTrollTRMissed = TRUE;
                    story2_1TrollTopRightChat.position = ccp(-1000, -1000);
                    story2_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollTRTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollTRResetTimer -= dt;
                if(story2_1TrollTRResetTimer <= 0){
                    story2_1SpriteTopRightMenu.position = ccp(400, 250);
                    story2_1TrollTopRightChat.position = ccp(432, 260);
                    story2_1TrollTRInPlay = TRUE;
                    story2_1TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollMLInPlay){
                if(story2_1TrollMLTimeInPlay >= 4.0f){
                    story2_1StartTrollMLMissed = TRUE;
                    story2_1TrollMidLeftChat.position = ccp(-1000, -1000);
                    story2_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollMLTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollMLResetTimer -= dt;
                if(story2_1TrollMLResetTimer <= 0){
                    story2_1SpriteMidLeftMenu.position = ccp(80, 170);
                    story2_1TrollMidLeftChat.position = ccp(112, 180);
                    story2_1TrollMLInPlay = TRUE;
                    story2_1TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollMMInPlay){
                if(story2_1TrollMMTimeInPlay >= 4.0f){
                    story2_1StartTrollMMMissed = TRUE;
                    story2_1TrollMidMidChat.position = ccp(-1000, -1000);
                    story2_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollMMTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollMMResetTimer -= dt;
                if(story2_1TrollMMResetTimer <= 0){
                    story2_1SpriteMidMidMenu.position = ccp(240, 170);
                    story2_1TrollMidMidChat.position = ccp(272, 180);
                    story2_1TrollMMInPlay = TRUE;
                    story2_1TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollMRInPlay){
                if(story2_1TrollMRTimeInPlay >= 4.0f){
                    story2_1StartTrollMRMissed = TRUE;
                    story2_1TrollMidRightChat.position = ccp(-1000, -1000);
                    story2_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story2_1TrollMRTimeInPlay += dt;
            }
            else{
                story2_1TrollMRResetTimer -= dt;
                if(story2_1TrollMRResetTimer <= 0){
                    story2_1SpriteMidRightMenu.position = ccp(400, 170);
                    story2_1TrollMidRightChat.position = ccp(432, 180);
                    story2_1TrollMRInPlay = TRUE;
                    story2_1TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollBLInPlay){
                if(story2_1TrollBLTimeInPlay >= 4.0f){
                    story2_1StartTrollBLMissed = TRUE;
                    story2_1TrollBotLeftChat.position = ccp(-1000, -1000);
                    story2_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollBLTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollBLResetTimer -= dt;
                if(story2_1TrollBLResetTimer <= 0){
                    story2_1SpriteBotLeftMenu.position = ccp(80, 90);
                    story2_1TrollBotLeftChat.position = ccp(112, 100);
                    story2_1TrollBLInPlay = TRUE;
                    story2_1TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollBMInPlay){
                if(story2_1TrollBMTimeInPlay >= 4.0f){
                    story2_1StartTrollBMMissed = TRUE;
                    story2_1TrollBotMidChat.position = ccp(-1000, -1000);
                    story2_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollBMTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollBMResetTimer -= dt;
                if(story2_1TrollBMResetTimer <= 0){
                    story2_1SpriteBotMidMenu.position = ccp(240, 90);
                    story2_1TrollBotMidChat.position = ccp(272, 100);
                    story2_1TrollBMInPlay = TRUE;
                    story2_1TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story2_1TrollBRInPlay){
                if(story2_1TrollBRTimeInPlay >= 4.0f){
                    story2_1StartTrollBRMissed = TRUE;
                    story2_1TrollBotRightChat.position = ccp(-1000, -1000);
                    story2_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story2_1TrollBRTimeInPlay += dt;
                }
            }
            else{
                story2_1TrollBRResetTimer -= dt;
                if(story2_1TrollBRResetTimer <= 0){
                    story2_1SpriteBotRightMenu.position = ccp(400, 90);
                    story2_1TrollBotRightChat.position = ccp(432, 100);
                    story2_1TrollBRInPlay = TRUE;
                    story2_1TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story2_1TrollTLTouched){
                story2_1StartTrollTLDeathAnim = TRUE;
                story2_1TrollTLTouched = FALSE;
                if(story2_1TrollTLColour == 0){
                    [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLDeadGreen];
                }
                else if(story2_1TrollTLColour == 1){
                    [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLDeadGrey];
                }
                else if(story2_1TrollTLColour == 2){
                    [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLDeadPurple];
                }
                
                story2_1TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story2_1TrollTMTouched){
                story2_1StartTrollTMDeathAnim = TRUE;
                story2_1TrollTMTouched = FALSE;
                if(story2_1TrollTMColour == 0){
                    [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMDeadGreen];
                }
                else if(story2_1TrollTMColour == 1){
                    [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMDeadGrey];
                }
                else if(story2_1TrollTMColour == 2){
                    [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMDeadPurple];
                }
                
                story2_1TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story2_1TrollTRTouched){
                story2_1StartTrollTRDeathAnim = TRUE;
                story2_1TrollTRTouched = FALSE;
                if(story2_1TrollTRColour == 0){
                    [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRDeadGreen];
                }
                else if(story2_1TrollTRColour == 1){
                    [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRDeadGrey];
                }
                else if(story2_1TrollTRColour == 2){
                    [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRDeadPurple];
                }
                
                story2_1TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story2_1TrollMLTouched){
                story2_1StartTrollMLDeathAnim = TRUE;
                story2_1TrollMLTouched = FALSE;
                if(story2_1TrollMLColour == 0){
                    [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLDeadGreen];
                }
                else if(story2_1TrollMLColour == 1){
                    [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLDeadGrey];
                }
                else if(story2_1TrollMLColour == 2){
                    [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLDeadPurple];
                }
                
                story2_1TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story2_1TrollMMTouched){
                story2_1StartTrollMMDeathAnim = TRUE;
                story2_1TrollMMTouched = FALSE;
                if(story2_1TrollMMColour == 0){
                    [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMDeadGreen];
                }
                else if(story2_1TrollMMColour == 1){
                    [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMDeadGrey];
                }
                else if(story2_1TrollMMColour == 2){
                    [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMDeadPurple];
                }
                
                story2_1TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story2_1TrollMRTouched){
                story2_1StartTrollMRDeathAnim = TRUE;
                story2_1TrollMRTouched = FALSE;
                if(story2_1TrollMRColour == 0){
                    [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRDeadGreen];
                }
                else if(story2_1TrollMRColour == 1){
                    [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRDeadGrey];
                }
                else if(story2_1TrollMRColour == 2){
                    [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRDeadPurple];
                }
                
                story2_1TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story2_1TrollBLTouched){
                story2_1StartTrollBLDeathAnim = TRUE;
                story2_1TrollBLTouched = FALSE;
                if(story2_1TrollBLColour == 0){
                    [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLDeadGreen];
                }
                else if(story2_1TrollBLColour == 1){
                    [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLDeadGrey];
                }
                else if(story2_1TrollBLColour == 2){
                    [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLDeadPurple];
                }
                
                story2_1TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story2_1TrollBMTouched){
                story2_1StartTrollBMDeathAnim = TRUE;
                story2_1TrollBMTouched = FALSE;
                if(story2_1TrollBMColour == 0){
                    [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMDeadGreen];
                }
                else if(story2_1TrollBMColour == 1){
                    [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMDeadGrey];
                }
                else if(story2_1TrollBMColour == 2){
                    [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMDeadPurple];
                }
                
                story2_1TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story2_1TrollBRTouched){
                story2_1StartTrollBRDeathAnim = TRUE;
                story2_1TrollBRTouched = FALSE;
                if(story2_1TrollBRColour == 0){
                    [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRDeadGreen];
                }
                else if(story2_1TrollBRColour == 1){
                    [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRDeadGrey];
                }
                else if(story2_1TrollBRColour == 2){
                    [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRDeadPurple];
                }
                
                story2_1TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story2_1TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story2_1StartTrollTLDeathAnim){
                if(story2_1TrollTLFadingOutTimer < 0.25f){
                    story2_1TrollTLFadingOutTimer += dt;
                    story2_1SpriteTopLeftMenu.position = ccp(story2_1SpriteTopLeftMenu.position.x, story2_1SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollTLDeathAnim = FALSE;
                    story2_1TrollTLTimeInPlay = 0.0f;
                    story2_1TrollTLFadingOutTimer = 0.0f;
                    story2_1TrollTLInPlay = FALSE;
                    story2_1TrollTLResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story2_1TrollTLColour == 0){
                        [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLGreen];
                    }
                    else if(story2_1TrollTLColour == 1){
                        [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLGrey];
                    }
                    else if(story2_1TrollTLColour == 2){
                        [story2_1TrollSpriteTopLeft setNormalImage:story2_1TrollSpriteTLPurple];
                    }
                    
                    story2_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollTMDeathAnim){
                if(story2_1TrollTMFadingOutTimer < 0.25f){
                    story2_1TrollTMFadingOutTimer += dt;
                    story2_1SpriteTopMidMenu.position = ccp(story2_1SpriteTopMidMenu.position.x, story2_1SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollTMDeathAnim = FALSE;
                    story2_1TrollTMTimeInPlay = 0.0f;
                    story2_1TrollTMFadingOutTimer = 0.0f;
                    story2_1TrollTMInPlay = FALSE;
                    story2_1TrollTMResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story2_1TrollTMColour == 0){
                        [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMGreen];
                    }
                    else if(story2_1TrollTMColour == 1){
                        [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMGrey];
                    }
                    else if(story2_1TrollTMColour == 2){
                        [story2_1TrollSpriteTopMid setNormalImage:story2_1TrollSpriteTMPurple];
                    }
                    
                    story2_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollTRDeathAnim){
                if(story2_1TrollTRFadingOutTimer < 0.25f){
                    story2_1TrollTRFadingOutTimer += dt;
                    story2_1SpriteTopRightMenu.position = ccp(story2_1SpriteTopRightMenu.position.x, story2_1SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollTRDeathAnim = FALSE;
                    story2_1TrollTRTimeInPlay = 0.0f;
                    story2_1TrollTRFadingOutTimer = 0.0f;
                    story2_1TrollTRInPlay = FALSE;
                    story2_1TrollTRResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story2_1TrollTRColour == 0){
                        [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRGreen];
                    }
                    else if(story2_1TrollTRColour == 1){
                        [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRGrey];
                    }
                    else if(story2_1TrollTRColour == 2){
                        [story2_1TrollSpriteTopRight setNormalImage:story2_1TrollSpriteTRPurple];
                    }
                    
                    story2_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollMLDeathAnim){
                if(story2_1TrollMLFadingOutTimer < 0.25f){
                    story2_1TrollMLFadingOutTimer += dt;
                    story2_1SpriteMidLeftMenu.position = ccp(story2_1SpriteMidLeftMenu.position.x, story2_1SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollMLDeathAnim = FALSE;
                    story2_1TrollMLTimeInPlay = 0.0f;
                    story2_1TrollMLFadingOutTimer = 0.0f;
                    story2_1TrollMLInPlay = FALSE;
                    story2_1TrollMLResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story2_1TrollMLColour == 0){
                        [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLGreen];
                    }
                    else if(story2_1TrollMLColour == 1){
                        [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLGrey];
                    }
                    else if(story2_1TrollMLColour == 2){
                        [story2_1TrollSpriteMidLeft setNormalImage:story2_1TrollSpriteMLPurple];
                    }
                    
                    story2_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollMMDeathAnim){
                if(story2_1TrollMMFadingOutTimer < 0.25f){
                    story2_1TrollMMFadingOutTimer += dt;
                    story2_1SpriteMidMidMenu.position = ccp(story2_1SpriteMidMidMenu.position.x, story2_1SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollMMDeathAnim = FALSE;
                    story2_1TrollMMTimeInPlay = 0.0f;
                    story2_1TrollMMFadingOutTimer = 0.0f;
                    story2_1TrollMMInPlay = FALSE;
                    story2_1TrollMMResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story2_1TrollMMColour == 0){
                        [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMGreen];
                    }
                    else if(story2_1TrollMMColour == 1){
                        [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMGrey];
                    }
                    else if(story2_1TrollMMColour == 2){
                        [story2_1TrollSpriteMidMid setNormalImage:story2_1TrollSpriteMMPurple];
                    }
                    
                    story2_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollMRDeathAnim){
                if(story2_1TrollMRFadingOutTimer < 0.25f){
                    story2_1TrollMRFadingOutTimer += dt;
                    story2_1SpriteMidRightMenu.position = ccp(story2_1SpriteMidRightMenu.position.x, story2_1SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollMRDeathAnim = FALSE;
                    story2_1TrollMRTimeInPlay = 0.0f;
                    story2_1TrollMRFadingOutTimer = 0.0f;
                    story2_1TrollMRInPlay = FALSE;
                    story2_1TrollMRResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story2_1TrollMRColour == 0){
                        [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRGreen];
                    }
                    else if(story2_1TrollMRColour == 1){
                        [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRGrey];
                    }
                    else if(story2_1TrollMRColour == 2){
                        [story2_1TrollSpriteMidRight setNormalImage:story2_1TrollSpriteMRPurple];
                    }
                    
                    story2_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollBLDeathAnim){
                if(story2_1TrollBLFadingOutTimer < 0.25f){
                    story2_1TrollBLFadingOutTimer += dt;
                    story2_1SpriteBotLeftMenu.position = ccp(story2_1SpriteBotLeftMenu.position.x, story2_1SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollBLDeathAnim = FALSE;
                    story2_1TrollBLTimeInPlay = 0.0f;
                    story2_1TrollBLFadingOutTimer = 0.0f;
                    story2_1TrollBLInPlay = FALSE;
                    story2_1TrollBLResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story2_1TrollBLColour == 0){
                        [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLGreen];
                    }
                    else if(story2_1TrollBLColour == 1){
                        [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLGrey];
                    }
                    else if(story2_1TrollBLColour == 2){
                        [story2_1TrollSpriteBotLeft setNormalImage:story2_1TrollSpriteBLPurple];
                    }
                    
                    story2_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollBMDeathAnim){
                if(story2_1TrollBMFadingOutTimer < 0.25f){
                    story2_1TrollBMFadingOutTimer += dt;
                    story2_1SpriteBotMidMenu.position = ccp(story2_1SpriteBotMidMenu.position.x, story2_1SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollBMDeathAnim = FALSE;
                    story2_1TrollBMTimeInPlay = 0.0f;
                    story2_1TrollBMFadingOutTimer = 0.0f;
                    story2_1TrollBMInPlay = FALSE;
                    story2_1TrollBMResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story2_1TrollBMColour == 0){
                        [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMGreen];
                    }
                    else if(story2_1TrollBMColour == 1){
                        [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMGrey];
                    }
                    else if(story2_1TrollBMColour == 2){
                        [story2_1TrollSpriteBotMid setNormalImage:story2_1TrollSpriteBMPurple];
                    }
                    
                    story2_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story2_1StartTrollBRDeathAnim){
                if(story2_1TrollBRFadingOutTimer < 0.25f){
                    story2_1TrollBRFadingOutTimer += dt;
                    story2_1SpriteBotRightMenu.position = ccp(story2_1SpriteBotRightMenu.position.x, story2_1SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    story2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story2_1StartTrollBRDeathAnim = FALSE;
                    story2_1TrollBRTimeInPlay = 0.0f;
                    story2_1TrollBRFadingOutTimer = 0.0f;
                    story2_1TrollBRInPlay = FALSE;
                    story2_1TrollBRResetTimer = story2_1TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story2_1TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story2_1TrollBRColour == 0){
                        [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRGreen];
                    }
                    else if(story2_1TrollBRColour == 1){
                        [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRGrey];
                    }
                    else if(story2_1TrollBRColour == 2){
                        [story2_1TrollSpriteBotRight setNormalImage:story2_1TrollSpriteBRPurple];
                    }
                    
                    story2_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story2_1StartTrollTLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollTLMissed = FALSE;
                story2_1TrollTLTimeInPlay = 0.0f;
                story2_1TrollTLInPlay = FALSE;
                story2_1TrollTLResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollTMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollTMMissed = FALSE;
                story2_1TrollTMTimeInPlay = 0.0f;
                story2_1TrollTMInPlay = FALSE;
                story2_1TrollTMResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollTRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollTRMissed = FALSE;
                story2_1TrollTRTimeInPlay = 0.0f;
                story2_1TrollTRInPlay = FALSE;
                story2_1TrollTRResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollMLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollMLMissed = FALSE;
                story2_1TrollMLTimeInPlay = 0.0f;
                story2_1TrollMLInPlay = FALSE;
                story2_1TrollMLResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollMMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollMMMissed = FALSE;
                story2_1TrollMMTimeInPlay = 0.0f;
                story2_1TrollMMInPlay = FALSE;
                story2_1TrollMMResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollMRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollMRMissed = FALSE;
                story2_1TrollMRTimeInPlay = 0.0f;
                story2_1TrollMRInPlay = FALSE;
                story2_1TrollMRResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollBLMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollBLMissed = FALSE;
                story2_1TrollBLTimeInPlay = 0.0f;
                story2_1TrollBLInPlay = FALSE;
                story2_1TrollBLResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollBMMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollBMMissed = FALSE;
                story2_1TrollBMTimeInPlay = 0.0f;
                story2_1TrollBMInPlay = FALSE;
                story2_1TrollBMResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            if(story2_1StartTrollBRMissed){
                int i = (arc4random() % (151)) + 200;
                story2_1TrollRespawnInterval = (float)i / 100.0f;
                story2_1StartTrollBRMissed = FALSE;
                story2_1TrollBRTimeInPlay = 0.0f;
                story2_1TrollBRInPlay = FALSE;
                story2_1TrollBRResetTimer = story2_1TrollRespawnInterval;
                story2_1LivesRemaining--;
                
                if(story2_1LivesRemaining == 2){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 1){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story2_1LivesRemaining == 0){
                    story2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story2_1Tick = 9;
                }
            }
            
            story2_1ScoreInt = story2_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(story2_1LivesRemaining >= 0) {
                if(story2_1CurrentScore != story2_1PrevScore){
                    if(story2_1CurrentScore >= 0 && story2_1CurrentScore < 10){
                        if(story2_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                        }
                        else if(story2_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                        }
                        else if(story2_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                        }
                        else if(story2_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                        }
                        else if(story2_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                        }
                        else if(story2_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                        }
                        else if(story2_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                        }
                        else if(story2_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                        }
                        else if(story2_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                        }
                        else if(story2_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                    }
                    
                    else if(story2_1CurrentScore >= 10 && story2_1CurrentScore <= 99){
                        int lSDS = story2_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                        }
                        
                        if(story2_1CurrentScore >= 10 && story2_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
                        }
                        else if(story2_1CurrentScore >= 20 && story2_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
                        }
                        else if(story2_1CurrentScore >= 30 && story2_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
                        }
                        else if(story2_1CurrentScore >= 40 && story2_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
                        }
                        else if(story2_1CurrentScore >= 50 && story2_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
                        }
                        else if(story2_1CurrentScore >= 60 && story2_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
                        }
                        else if(story2_1CurrentScore >= 70 && story2_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
                        }
                        else if(story2_1CurrentScore >= 80 && story2_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
                        }
                        else if(story2_1CurrentScore >= 90 && story2_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
                    }
                    
                    else if(story2_1CurrentScore >= 100 && story2_1CurrentScore <= 999){
                        int story2_1Count = 0;
                        while(story2_1Count < 2){
                            int lSDSs = story2_1ScoreInt % 10;
                            if(story2_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                                }
                            }
                            else if(story2_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
                                }
                            }
                            story2_1ScoreInt /= 10;
                            story2_1Count++;
                        }
                        
                        if(story2_1CurrentScore >= 100 && story2_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber1_2];
                        }
                        else if(story2_1CurrentScore >= 200 && story2_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber2_2];
                        }
                        else if(story2_1CurrentScore >= 300 && story2_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber3_2];
                        }
                        else if(story2_1CurrentScore >= 400 && story2_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber4_2];
                        }
                        else if(story2_1CurrentScore >= 500 && story2_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber5_2];
                        }
                        else if(story2_1CurrentScore >= 600 && story2_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber6_2];
                        }
                        else if(story2_1CurrentScore >= 700 && story2_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber7_2];
                        }
                        else if(story2_1CurrentScore >= 800 && story2_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber8_2];
                        }
                        else if(story2_1CurrentScore >= 900 && story2_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
                    }
                    
                    else if(story2_1CurrentScore >= 1000 && story2_1CurrentScore <= 9999){
                        int story2_1Count = 0;
                        while(story2_1Count < 3){
                            int lSDSsS = story2_1ScoreInt % 10;
                            if(story2_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                                }
                            }
                            else if(story2_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
                                }
                            }
                            else if(story2_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber9_2];
                                }
                            }
                            story2_1ScoreInt /= 10;
                            story2_1Count++;
                            
                            if(story2_1CurrentScore >= 1000 && story2_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber1_1];
                            }
                            else if(story2_1CurrentScore >= 2000 && story2_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber2_1];
                            }
                            else if(story2_1CurrentScore >= 3000 && story2_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber3_1];
                            }
                            else if(story2_1CurrentScore >= 4000 && story2_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber4_1];
                            }
                            else if(story2_1CurrentScore >= 5000 && story2_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber5_1];
                            }
                            else if(story2_1CurrentScore >= 6000 && story2_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber6_1];
                            }
                            else if(story2_1CurrentScore >= 7000 && story2_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber7_1];
                            }
                            else if(story2_1CurrentScore >= 8000 && story2_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber8_1];
                            }
                            else if(story2_1CurrentScore >= 9000 && story2_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story2_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story2_1TrollsRemInt = story2_1TrollsRemaining;
            
            if(story2_1TrollsRemaining > 0){
                if(story2_1TrollsRemaining != story2_1TrollsPrevRem){
                    if(story2_1TrollsRemaining >= 0 && story2_1TrollsRemaining < 10){
                        if(story2_1TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber0_3];
                        }
                        else if(story2_1TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber1_2];
                        }
                        else if(story2_1TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber2_2];
                        }
                        else if(story2_1TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber3_2];
                        }
                        else if(story2_1TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber4_2];
                        }
                        else if(story2_1TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber5_2];
                        }
                        else if(story2_1TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber6_2];
                        }
                        else if(story2_1TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber7_1];
                        }
                        else if(story2_1TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber8_1];
                        }
                        else if(story2_1TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_1TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber0_2];
                    }
                    
                    else if(story2_1TrollsRemaining >= 10 && story2_1TrollsRemaining <= 99){
                        int lSDS = story2_1TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber1_2];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber9_2];
                        }
                        
                        if(story2_1TrollsRemaining >= 10 && story2_1TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber1_1];
                        }
                        else if(story2_1TrollsRemaining >= 20 && story2_1TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber2_1];
                        }
                        else if(story2_1TrollsRemaining >= 30 && story2_1TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber3_1];
                        }
                        else if(story2_1TrollsRemaining >= 40 && story2_1TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber4_1];
                        }
                        else if(story2_1TrollsRemaining >= 50 && story2_1TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber5_1];
                        }
                        else if(story2_1TrollsRemaining >= 60 && story2_1TrollsRemaining <= 69){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber6_1];
                        }
                        else if(story2_1TrollsRemaining >= 70 && story2_1TrollsRemaining <= 79){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber7_1];
                        }
                        else if(story2_1TrollsRemaining >= 80 && story2_1TrollsRemaining <= 89){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber8_1];
                        }
                        else if(story2_1TrollsRemaining >= 90 && story2_1TrollsRemaining <= 99){
                            [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_1TrollsLeftNumber0_1];
                    }
                    
                    else if(story2_1TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_1TrollsLeftNumber0_1];
                    }
                    
                    story2_1TrollsPrevRem = story2_1TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story2_1TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story2_1TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story2_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story2_1TrollsLeftNumber0_1];
                story2_1Tick = 10;
            }
            
        }
        else if(story2_1Tick == 9){
            if(!story2_1TimeUpDrawn){
                story2_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story2_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: story2_1TimeUpSprite];
                [self scheduleOnce:@selector(story2_1GameOver:) delay:2];
                story2_1TimeUpDrawn = TRUE;
            }
            else{
                if(story2_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story2_1TimeUpSprite.position = ccp(story2_1TimeUpSprite.position.x, story2_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story2_1Tick == 10){
            //LEVEL COMPLETE
            if(!story2_1AllTrollsDrawn){
                story2_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                story2_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story2_1AllTrollsSprite];
                [self scheduleOnce:@selector(story2_1LevelComplete:) delay:2];
                story2_1AllTrollsDrawn = TRUE;
            }
            else{
                if(story2_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    story2_1AllTrollsSprite.position = ccp(story2_1AllTrollsSprite.position.x +10, story2_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadstory2_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"database"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"granquier"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"kappa"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"kreytos"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"mantin"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"orksome"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"salty"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"wooferz"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charFour"] isEqualToString:@"zeke"]){
        story2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story2_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        story2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_4.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story2_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story2_1DialogueMenu = [CCMenu menuWithItems: story2_1DialogueSprite, nil];
    
    story2_1CharacterSprite.position = ccp(25, 100);
    story2_1CharacterName.position = ccp(120, 86);
    story2_1DialogueSprite.position = ccp(0, -120);
    story2_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: story2_1CharacterSprite];
    [self addChild: story2_1CharacterName];
    [self addChild: story2_1TapToContinue];
    [self addChild: story2_1DialogueMenu];
}

-(void) loadstory2_1Sprites{
    story2_1VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story2_1VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story2_1VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    story2_1VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    story2_1VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(topRightExtraTouched:)];
    
    story2_1VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midLeftExtraTouched:)];
    
    story2_1VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    story2_1VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midRightExtraTouched:)];
    
    story2_1VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botLeftExtraTouched:)];
    
    story2_1VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    story2_1VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(botRightExtraTouched:)];
    
    story2_1VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story2_1VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story2_1VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story2_1VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story2_1VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story2_1VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story2_1VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story2_1VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story2_1VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story2_1VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story2_1VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story2_1VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story2_1VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story2_1VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story2_1VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story2_1VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story2_1VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story2_1VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story2_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_1TrollTLColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_1TrollTLColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story2_1TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story2_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_1TrollTMColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_1TrollTMColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story2_1TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story2_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_1TrollTRColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_1TrollTRColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story2_1TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story2_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_1TrollMLColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_1TrollMLColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story2_1TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story2_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_1TrollMMColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_1TrollMMColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story2_1TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story2_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                story2_1TrollMRColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story2_1TrollMRColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story2_1TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story2_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_1TrollBLColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_1TrollBLColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story2_1TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story2_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                story2_1TrollBMColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story2_1TrollBMColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story2_1TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story2_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                story2_1TrollBRColour = 0;
            }
            else if(i == 1){
                story2_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story2_1TrollBRColour = 1;
            }
            else if(i == 2){
                story2_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story2_1TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story2_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story2_1TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story2_1TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story2_1TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story2_1TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story2_1TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story2_1TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story2_1TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story2_1TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story2_1SpriteTopLeftMenu = [CCMenu menuWithItems: story2_1TrollSpriteTopLeft, nil];
    story2_1SpriteTopMidMenu = [CCMenu menuWithItems: story2_1TrollSpriteTopMid, nil];
    story2_1SpriteTopRightMenu = [CCMenu menuWithItems: story2_1TrollSpriteTopRight, nil];
    story2_1SpriteMidLeftMenu = [CCMenu menuWithItems: story2_1TrollSpriteMidLeft, nil];
    story2_1SpriteMidMidMenu = [CCMenu menuWithItems: story2_1TrollSpriteMidMid, nil];
    story2_1SpriteMidRightMenu = [CCMenu menuWithItems: story2_1TrollSpriteMidRight, nil];
    story2_1SpriteBotLeftMenu = [CCMenu menuWithItems: story2_1TrollSpriteBotLeft, nil];
    story2_1SpriteBotMidMenu = [CCMenu menuWithItems: story2_1TrollSpriteBotMid, nil];
    story2_1SpriteBotRightMenu = [CCMenu menuWithItems: story2_1TrollSpriteBotRight, nil];
    
    story2_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story2_1SpriteTopMidMenu.position = ccp(-1000, -1000);
    story2_1SpriteTopRightMenu.position = ccp(-1000, -1000);
    story2_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story2_1SpriteMidMidMenu.position = ccp(-1000, -1000);
    story2_1SpriteMidRightMenu.position = ccp(-1000, -1000);
    story2_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story2_1SpriteBotMidMenu.position = ccp(-1000, -1000);
    story2_1SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story2_1TrollTopLeftChat.position = ccp(-1000, -1000);
    story2_1TrollTopMidChat.position = ccp(-1000, -1000);
    story2_1TrollTopRightChat.position = ccp(-1000, -1000);
    story2_1TrollMidLeftChat.position = ccp(-1000, -1000);
    story2_1TrollMidMidChat.position = ccp(-1000, -1000);
    story2_1TrollMidRightChat.position = ccp(-1000, -1000);
    story2_1TrollBotLeftChat.position = ccp(-1000, -1000);
    story2_1TrollBotMidChat.position = ccp(-1000, -1000);
    story2_1TrollBotRightChat.position = ccp(-1000, -1000);
    
    story2_1VolcanoMenu = [CCMenu menuWithItems: story2_1VolcanoBackSpriteTopLeft, story2_1VolcanoBackSpriteTopMid, story2_1VolcanoBackSpriteTopRight,
                           story2_1VolcanoBackSpriteMidLeft, story2_1VolcanoBackSpriteMidMid, story2_1VolcanoBackSpriteMidRight,
                           story2_1VolcanoBackSpriteBotLeft, story2_1VolcanoBackSpriteBotMid, story2_1VolcanoBackSpriteBotRight, nil];
    
    [story2_1SpriteMidLayer addChild: story2_1SpriteTopLeftMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteTopMidMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteTopRightMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteMidLeftMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteMidMidMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteMidRightMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteBotLeftMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteBotMidMenu];
    [story2_1SpriteMidLayer addChild: story2_1SpriteBotRightMenu];
    
    [story2_1SpriteMidLayer addChild: story2_1TrollTopLeftChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollTopMidChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollTopRightChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollMidLeftChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollMidMidChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollMidRightChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollBotLeftChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollBotMidChat];
    [story2_1SpriteMidLayer addChild: story2_1TrollBotRightChat];
    
    [story2_1SpriteBackLayer addChild: story2_1VolcanoMenu];
    
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteTopLeft];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteTopMid];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteTopRight];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteMidLeft];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteMidMid];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteMidRight];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteBotLeft];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteBotMid];
    [story2_1SpriteFrontLayer addChild: story2_1VolcanoFrontSpriteBotRight];
    
    story2_1SpriteBackLayer.position = ccp(-1000, -1000);
    story2_1SpriteMidLayer.position = ccp(-1000, -1000);
    story2_1SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadstory2_1Text{
    story2_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story2_1TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story2_1TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story2_1TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story2_1TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story2_1TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story2_1TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story2_1TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1TrollsLeftNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story2_1TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1TrollsLeftNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story2_1TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1TrollsLeftNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story2_1TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story2_1TrollsLeftNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story2_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                               selectedImage:NULL];
    
    story2_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story2_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story2_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                            selectedSprite:NULL];
    
    story2_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    story2_1TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text_white.png"
                                                    selectedImage:NULL];
    
    story2_1TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                               selectedSprite:NULL];
    
    story2_1TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]
                                                               selectedSprite:NULL];
    
    story2_1TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                                 selectedSprite:NULL];
    
    story2_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    story2_1ScoreMenu = [CCMenu menuWithItems:story2_1ScoreText, story2_1ScoreSpriteDigitOne, story2_1ScoreSpriteDigitTwo,
                         story2_1ScoreSpriteDigitThree, story2_1ScoreSpriteDigitFour, nil];
    
    [story2_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story2_1TrollsLeftMenu = [CCMenu menuWithItems: story2_1TrollsLeftText, story2_1TrollsLeftSpriteDigitOne, story2_1TrollsLeftSpriteDigitTwo, story2_1TrollsLeftSpriteDigitThree, nil];
    [story2_1TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story2_1LivesMenu = [CCMenu menuWithItems: story2_1LivesText, story2_1LivesSpriteOne, story2_1LivesSpriteTwo, story2_1LivesSpriteThree, nil];
    [story2_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story2_1ScoreMenu.position = ccp(72, 308);
    story2_1TrollsLeftMenu.position = ccp(100, 286);
    story2_1LivesMenu.position = ccp(400, 308);
    
    [story2_1ScoreSpriteDigitOne setTag: 101];
    [story2_1ScoreSpriteDigitTwo setTag: 102];
    [story2_1ScoreSpriteDigitThree setTag: 103];
    [story2_1ScoreSpriteDigitFour setTag: 104];
    
    [story2_1TrollsLeftSpriteDigitOne setTag: 201];
    [story2_1TrollsLeftSpriteDigitTwo setTag: 202];
    [story2_1TrollsLeftSpriteDigitThree setTag: 203];
    
    [story2_1StatsLayer addChild: story2_1ScoreMenu];
    [story2_1StatsLayer addChild: story2_1TrollsLeftMenu];
    [story2_1StatsLayer addChild: story2_1LivesMenu];
    
    story2_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawstory2_1Elements{
    story2_1SpriteBackLayer.position = ccp(0, 0);
    story2_1SpriteMidLayer.position = ccp(0, 0);
    story2_1SpriteFrontLayer.position = ccp(0, 0);
    story2_1StatsLayer.position = ccp(0, 0);
    
    story2_1ScoreInt = story2_1CurrentScore;
    
    if(story2_1CurrentScore >= 0 && story2_1CurrentScore < 10){
        if(story2_1CurrentScore == 0){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
        }
        else if(story2_1CurrentScore == 1){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
        }
        else if(story2_1CurrentScore == 2){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
        }
        else if(story2_1CurrentScore == 3){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
        }
        else if(story2_1CurrentScore == 4){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
        }
        else if(story2_1CurrentScore == 5){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
        }
        else if(story2_1CurrentScore == 6){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
        }
        else if(story2_1CurrentScore == 7){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
        }
        else if(story2_1CurrentScore == 8){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
        }
        else if(story2_1CurrentScore == 9){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
    }
    
    else if(story2_1CurrentScore >= 10 && story2_1CurrentScore <= 99){
        int lSDS = story2_1ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
        }
        
        if(story2_1CurrentScore >= 10 && story2_1CurrentScore <= 19){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
        }
        else if(story2_1CurrentScore >= 20 && story2_1CurrentScore <= 29){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
        }
        else if(story2_1CurrentScore >= 30 && story2_1CurrentScore <= 39){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
        }
        else if(story2_1CurrentScore >= 40 && story2_1CurrentScore <= 49){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
        }
        else if(story2_1CurrentScore >= 50 && story2_1CurrentScore <= 59){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
        }
        else if(story2_1CurrentScore >= 60 && story2_1CurrentScore <= 69){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
        }
        else if(story2_1CurrentScore >= 70 && story2_1CurrentScore <= 79){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
        }
        else if(story2_1CurrentScore >= 80 && story2_1CurrentScore <= 89){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
        }
        else if(story2_1CurrentScore >= 90 && story2_1CurrentScore <= 99){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
    }
    
    else if(story2_1CurrentScore >= 100 && story2_1CurrentScore <= 999){
        int story2_1Count = 0;
        while(story2_1Count < 2){
            int lSDSs = story2_1ScoreInt % 10;
            if(story2_1Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                }
            }
            else if(story2_1Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
                }
            }
            story2_1ScoreInt /= 10;
            story2_1Count++;
        }
        
        if(story2_1CurrentScore >= 100 && story2_1CurrentScore <= 199){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber1_2];
        }
        else if(story2_1CurrentScore >= 200 && story2_1CurrentScore <= 299){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber2_2];
        }
        else if(story2_1CurrentScore >= 300 && story2_1CurrentScore <= 399){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber3_2];
        }
        else if(story2_1CurrentScore >= 400 && story2_1CurrentScore <= 499){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber4_2];
        }
        else if(story2_1CurrentScore >= 500 && story2_1CurrentScore <= 599){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber5_2];
        }
        else if(story2_1CurrentScore >= 600 && story2_1CurrentScore <= 699){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber6_2];
        }
        else if(story2_1CurrentScore >= 700 && story2_1CurrentScore <= 799){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber7_2];
        }
        else if(story2_1CurrentScore >= 800 && story2_1CurrentScore <= 899){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber8_2];
        }
        else if(story2_1CurrentScore >= 900 && story2_1CurrentScore <= 999){
            [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
    }
    
    else if(story2_1CurrentScore >= 1000 && story2_1CurrentScore <= 9999){
        int story2_1Count = 0;
        while(story2_1Count < 3){
            int lSDSsS = story2_1ScoreInt % 10;
            if(story2_1Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber9_4];
                }
            }
            else if(story2_1Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber9_3];
                }
            }
            else if(story2_1Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber9_2];
                }
            }
            story2_1ScoreInt /= 10;
            story2_1Count++;
            
            if(story2_1CurrentScore >= 1000 && story2_1CurrentScore <= 1999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber1_1];
            }
            else if(story2_1CurrentScore >= 2000 && story2_1CurrentScore <= 2999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber2_1];
            }
            else if(story2_1CurrentScore >= 3000 && story2_1CurrentScore <= 3999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber3_1];
            }
            else if(story2_1CurrentScore >= 4000 && story2_1CurrentScore <= 4999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber4_1];
            }
            else if(story2_1CurrentScore >= 5000 && story2_1CurrentScore <= 5999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber5_1];
            }
            else if(story2_1CurrentScore >= 6000 && story2_1CurrentScore <= 6999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber6_1];
            }
            else if(story2_1CurrentScore >= 7000 && story2_1CurrentScore <= 7999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber7_1];
            }
            else if(story2_1CurrentScore >= 8000 && story2_1CurrentScore <= 8999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber8_1];
            }
            else if(story2_1CurrentScore >= 9000 && story2_1CurrentScore <= 9999){
                [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber9_1];
            }
        }
    }
    
    else if(story2_1CurrentScore <= 0){
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 104] setNormalImage:story2_1ScoreNumber0_4];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 103] setNormalImage:story2_1ScoreNumber0_3];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 102] setNormalImage:story2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story2_1ScoreMenu getChildByTag: 101] setNormalImage:story2_1ScoreNumber0_1];
    }
    
    if(story2_1LivesRemaining == 2){
        story2_1LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(story2_1LivesRemaining == 1){
        story2_1LivesSpriteThree.position = ccp(-1000, -1000);
        story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(story2_1LivesRemaining == 0){
        story2_1LivesSpriteThree.position = ccp(-1000, -1000);
        story2_1LivesSpriteTwo.position = ccp(-1000, -1000);
        story2_1LivesSpriteOne.position = ccp(-1000, -1000);
    }
}

-(void) dialogueTouched:(id)sender{
    story2_1DialogueTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story2_1StartTrollTLDeathAnim || story2_1StartTrollTLMissed || story2_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story2_1TrollTLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story2_1StartTrollTMDeathAnim || story2_1StartTrollTMMissed || story2_1TrollTMResetTimer > 0){
        
    }
    else{
        story2_1TrollTMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story2_1StartTrollTRDeathAnim || story2_1StartTrollTRMissed || story2_1TrollTRResetTimer > 0){
        
    }
    else{
        story2_1TrollTRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story2_1StartTrollMLDeathAnim || story2_1StartTrollMLMissed || story2_1TrollMLResetTimer > 0){
        
    }
    else{
        story2_1TrollMLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story2_1StartTrollMMDeathAnim || story2_1StartTrollMMMissed || story2_1TrollMMResetTimer > 0){
        
    }
    else{
        story2_1TrollMMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story2_1StartTrollMRDeathAnim || story2_1StartTrollMRMissed || story2_1TrollMRResetTimer > 0){
        
    }
    else{
        story2_1TrollMRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story2_1StartTrollBLDeathAnim || story2_1StartTrollBLMissed || story2_1TrollBLResetTimer > 0){
        
    }
    else{
        story2_1TrollBLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story2_1StartTrollBMDeathAnim || story2_1StartTrollBMMissed || story2_1TrollBMResetTimer > 0){
        
    }
    else{
        story2_1TrollBMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story2_1StartTrollBRDeathAnim || story2_1StartTrollBRMissed || story2_1TrollBRResetTimer > 0){
        
    }
    else{
        story2_1TrollBRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story2_1StartTrollTLDeathAnim || story2_1StartTrollTLMissed || story2_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story2_1TrollTLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story2_1StartTrollTMDeathAnim || story2_1StartTrollTMMissed || story2_1TrollTMResetTimer > 0){
        
    }
    else{
        story2_1TrollTMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story2_1StartTrollTRDeathAnim || story2_1StartTrollTRMissed || story2_1TrollTRResetTimer > 0){
        
    }
    else{
        story2_1TrollTRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story2_1StartTrollMLDeathAnim || story2_1StartTrollMLMissed || story2_1TrollMLResetTimer > 0){
        
    }
    else{
        story2_1TrollMLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story2_1StartTrollMMDeathAnim || story2_1StartTrollMMMissed || story2_1TrollMMResetTimer > 0){
        
    }
    else{
        story2_1TrollMMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story2_1StartTrollMRDeathAnim || story2_1StartTrollMRMissed || story2_1TrollMRResetTimer > 0){
        
    }
    else{
        story2_1TrollMRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story2_1StartTrollBLDeathAnim || story2_1StartTrollBLMissed || story2_1TrollBLResetTimer > 0){
        
    }
    else{
        story2_1TrollBLTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story2_1StartTrollBMDeathAnim || story2_1StartTrollBMMissed || story2_1TrollBMResetTimer > 0){
        
    }
    else{
        story2_1TrollBMTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story2_1StartTrollBRDeathAnim || story2_1StartTrollBRMissed || story2_1TrollBRResetTimer > 0){
        
    }
    else{
        story2_1TrollBRTouched = TRUE;
        story2_1CurrentScore += 4;
        story2_1TrollsRemaining--;
    }
}

-(void) story2_1GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story2_1CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story2_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story2_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story2_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:4 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameResults node] withColor:ccWHITE]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story2_1TrollTopLeftChat release];
    [story2_1TrollTopMidChat release];
    [story2_1TrollTopRightChat release];
    [story2_1TrollMidLeftChat release];
    [story2_1TrollMidMidChat release];
    [story2_1TrollMidRightChat release];
    [story2_1TrollBotLeftChat release];
    [story2_1TrollBotMidChat release];
    [story2_1TrollBotRightChat release];
    [story2_1TrollSpriteTLGreen release];
    [story2_1TrollSpriteTLGrey release];
    [story2_1TrollSpriteTLPurple release];
    [story2_1TrollSpriteTMGreen release];
    [story2_1TrollSpriteTMGrey release];
    [story2_1TrollSpriteTMPurple release];
    [story2_1TrollSpriteTRGreen release];
    [story2_1TrollSpriteTRGrey release];
    [story2_1TrollSpriteTRPurple release];
    [story2_1TrollSpriteMLGreen release];
    [story2_1TrollSpriteMLGrey release];
    [story2_1TrollSpriteMLPurple release];
    [story2_1TrollSpriteMMGreen release];
    [story2_1TrollSpriteMMGrey release];
    [story2_1TrollSpriteMMPurple release];
    [story2_1TrollSpriteMRGreen release];
    [story2_1TrollSpriteMRGrey release];
    [story2_1TrollSpriteMRPurple release];
    [story2_1TrollSpriteBLGreen release];
    [story2_1TrollSpriteBLGrey release];
    [story2_1TrollSpriteBLPurple release];
    [story2_1TrollSpriteBMGreen release];
    [story2_1TrollSpriteBMGrey release];
    [story2_1TrollSpriteBMPurple release];
    [story2_1TrollSpriteBRGreen release];
    [story2_1TrollSpriteBRGrey release];
    [story2_1TrollSpriteBRPurple release];
    [story2_1TrollSpriteTLDeadGreen release];
    [story2_1TrollSpriteTLDeadGrey release];
    [story2_1TrollSpriteTLDeadPurple release];
    [story2_1TrollSpriteTMDeadGreen release];
    [story2_1TrollSpriteTMDeadGrey release];
    [story2_1TrollSpriteTMDeadPurple release];
    [story2_1TrollSpriteTRDeadGreen release];
    [story2_1TrollSpriteTRDeadGrey release];
    [story2_1TrollSpriteTRDeadPurple release];
    [story2_1TrollSpriteMLDeadGreen release];
    [story2_1TrollSpriteMLDeadGrey release];
    [story2_1TrollSpriteMLDeadPurple release];
    [story2_1TrollSpriteMMDeadGreen release];
    [story2_1TrollSpriteMMDeadGrey release];
    [story2_1TrollSpriteMMDeadPurple release];
    [story2_1TrollSpriteMRDeadGreen release];
    [story2_1TrollSpriteMRDeadGrey release];
    [story2_1TrollSpriteMRDeadPurple release];
    [story2_1TrollSpriteBLDeadGreen release];
    [story2_1TrollSpriteBLDeadGrey release];
    [story2_1TrollSpriteBLDeadPurple release];
    [story2_1TrollSpriteBMDeadGreen release];
    [story2_1TrollSpriteBMDeadGrey release];
    [story2_1TrollSpriteBMDeadPurple release];
    [story2_1TrollSpriteBRDeadGreen release];
    [story2_1TrollSpriteBRDeadGrey release];
    [story2_1TrollSpriteBRDeadPurple release];
    [story2_1ScoreNumber0_1 release];
    [story2_1ScoreNumber0_2 release];
    [story2_1ScoreNumber0_3 release];
    [story2_1ScoreNumber0_4 release];
    [story2_1ScoreNumber1_1 release];
    [story2_1ScoreNumber1_2 release];
    [story2_1ScoreNumber1_3 release];
    [story2_1ScoreNumber1_4 release];
    [story2_1ScoreNumber2_1 release];
    [story2_1ScoreNumber2_2 release];
    [story2_1ScoreNumber2_3 release];
    [story2_1ScoreNumber2_4 release];
    [story2_1ScoreNumber3_1 release];
    [story2_1ScoreNumber3_2 release];
    [story2_1ScoreNumber3_3 release];
    [story2_1ScoreNumber3_4 release];
    [story2_1ScoreNumber4_1 release];
    [story2_1ScoreNumber4_2 release];
    [story2_1ScoreNumber4_3 release];
    [story2_1ScoreNumber4_4 release];
    [story2_1ScoreNumber5_1 release];
    [story2_1ScoreNumber5_2 release];
    [story2_1ScoreNumber5_3 release];
    [story2_1ScoreNumber5_4 release];
    [story2_1ScoreNumber6_1 release];
    [story2_1ScoreNumber6_2 release];
    [story2_1ScoreNumber6_3 release];
    [story2_1ScoreNumber6_4 release];
    [story2_1ScoreNumber7_1 release];
    [story2_1ScoreNumber7_2 release];
    [story2_1ScoreNumber7_3 release];
    [story2_1ScoreNumber7_4 release];
    [story2_1ScoreNumber8_1 release];
    [story2_1ScoreNumber8_2 release];
    [story2_1ScoreNumber8_3 release];
    [story2_1ScoreNumber8_4 release];
    [story2_1ScoreNumber9_1 release];
    [story2_1ScoreNumber9_2 release];
    [story2_1ScoreNumber9_3 release];
    [story2_1ScoreNumber9_4 release];
    [story2_1TrollsLeftNumber0_1 release];
    [story2_1TrollsLeftNumber0_2 release];
    [story2_1TrollsLeftNumber0_3 release];
    [story2_1TrollsLeftNumber1_1 release];
    [story2_1TrollsLeftNumber1_2 release];
    [story2_1TrollsLeftNumber2_1 release];
    [story2_1TrollsLeftNumber2_2 release];
    [story2_1TrollsLeftNumber3_1 release];
    [story2_1TrollsLeftNumber3_2 release];
    [story2_1TrollsLeftNumber4_1 release];
    [story2_1TrollsLeftNumber4_2 release];
    [story2_1TrollsLeftNumber5_1 release];
    [story2_1TrollsLeftNumber5_2 release];
    [story2_1TrollsLeftNumber6_1 release];
    [story2_1TrollsLeftNumber6_2 release];
    [story2_1TrollsLeftNumber7_1 release];
    [story2_1TrollsLeftNumber7_2 release];
    [story2_1TrollsLeftNumber8_1 release];
    [story2_1TrollsLeftNumber8_2 release];
    [story2_1TrollsLeftNumber9_1 release];
    [story2_1TrollsLeftNumber9_2 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
