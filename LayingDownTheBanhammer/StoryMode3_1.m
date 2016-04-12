//
//  StoryMode3_1.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode3_1.h"
#import "GameOver.h"
#import "GameResults.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode3_1

CCSprite *story3_1Background;
CCSprite *story3_1Intro3;
CCSprite *story3_1Intro2;
CCSprite *story3_1Intro1;
CCSprite *story3_1Intro0;

CCLayer *story3_1StatsLayer;
CCLayer *story3_1SpriteFrontLayer;
CCLayer *story3_1SpriteMidLayer;
CCLayer *story3_1SpriteBackLayer;

CCMenu *story3_1DialogueMenu;

CCSprite *story3_1CharacterSprite;
CCSprite *story3_1CharacterName;
CCMenuItemImage *story3_1DialogueSprite;

CCMenu *story3_1ScoreMenu;
CCMenu *story3_1LivesMenu;
CCMenu *story3_1TrollsLeftMenu;

CCMenu *story3_1SpriteTopLeftMenu;
CCMenu *story3_1SpriteTopMidMenu;
CCMenu *story3_1SpriteTopRightMenu;
CCMenu *story3_1SpriteMidLeftMenu;
CCMenu *story3_1SpriteMidMidMenu;
CCMenu *story3_1SpriteMidRightMenu;
CCMenu *story3_1SpriteBotLeftMenu;
CCMenu *story3_1SpriteBotMidMenu;
CCMenu *story3_1SpriteBotRightMenu;

CCMenuItemImage *story3_1ScoreText;
CCMenuItemSprite *story3_1ScoreSpriteDigitOne;
CCMenuItemSprite *story3_1ScoreSpriteDigitTwo;
CCMenuItemSprite *story3_1ScoreSpriteDigitThree;
CCMenuItemSprite *story3_1ScoreSpriteDigitFour;

CCMenuItemImage *story3_1LivesText;
CCMenuItemSprite *story3_1LivesSpriteOne;
CCMenuItemSprite *story3_1LivesSpriteTwo;
CCMenuItemSprite *story3_1LivesSpriteThree;

CCMenuItemImage *story3_1TrollsLeftText;
CCMenuItemSprite *story3_1TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story3_1TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story3_1TrollsLeftSpriteDigitThree;

CCSprite *story3_1VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story3_1VolcanoBackSpriteTopLeft;
CCSprite *story3_1VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story3_1VolcanoBackSpriteTopMid;
CCSprite *story3_1VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story3_1VolcanoBackSpriteTopRight;
CCSprite *story3_1VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story3_1VolcanoBackSpriteMidLeft;
CCSprite *story3_1VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story3_1VolcanoBackSpriteMidMid;
CCSprite *story3_1VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story3_1VolcanoBackSpriteMidRight;
CCSprite *story3_1VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story3_1VolcanoBackSpriteBotLeft;
CCSprite *story3_1VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story3_1VolcanoBackSpriteBotMid;
CCSprite *story3_1VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story3_1VolcanoBackSpriteBotRight;

CCMenu *story3_1VolcanoMenu;

int story3_1TrollTLColour = -1;
int story3_1TrollTMColour = -1;
int story3_1TrollTRColour = -1;
int story3_1TrollMLColour = -1;
int story3_1TrollMMColour = -1;
int story3_1TrollMRColour = -1;
int story3_1TrollBLColour = -1;
int story3_1TrollBMColour = -1;
int story3_1TrollBRColour = -1;

CCMenuItemSprite *story3_1TrollSpriteTopLeft;
CCMenuItemSprite *story3_1TrollSpriteTopMid;
CCMenuItemSprite *story3_1TrollSpriteTopRight;
CCMenuItemSprite *story3_1TrollSpriteMidLeft;
CCMenuItemSprite *story3_1TrollSpriteMidMid;
CCMenuItemSprite *story3_1TrollSpriteMidRight;
CCMenuItemSprite *story3_1TrollSpriteBotLeft;
CCMenuItemSprite *story3_1TrollSpriteBotMid;
CCMenuItemSprite *story3_1TrollSpriteBotRight;

CCSprite *story3_1TrollSpriteTLGreen;
CCSprite *story3_1TrollSpriteTLGrey;
CCSprite *story3_1TrollSpriteTLPurple;
CCSprite *story3_1TrollSpriteTMGreen;
CCSprite *story3_1TrollSpriteTMGrey;
CCSprite *story3_1TrollSpriteTMPurple;
CCSprite *story3_1TrollSpriteTRGreen;
CCSprite *story3_1TrollSpriteTRGrey;
CCSprite *story3_1TrollSpriteTRPurple;
CCSprite *story3_1TrollSpriteMLGreen;
CCSprite *story3_1TrollSpriteMLGrey;
CCSprite *story3_1TrollSpriteMLPurple;
CCSprite *story3_1TrollSpriteMMGreen;
CCSprite *story3_1TrollSpriteMMGrey;
CCSprite *story3_1TrollSpriteMMPurple;
CCSprite *story3_1TrollSpriteMRGreen;
CCSprite *story3_1TrollSpriteMRGrey;
CCSprite *story3_1TrollSpriteMRPurple;
CCSprite *story3_1TrollSpriteBLGreen;
CCSprite *story3_1TrollSpriteBLGrey;
CCSprite *story3_1TrollSpriteBLPurple;
CCSprite *story3_1TrollSpriteBMGreen;
CCSprite *story3_1TrollSpriteBMGrey;
CCSprite *story3_1TrollSpriteBMPurple;
CCSprite *story3_1TrollSpriteBRGreen;
CCSprite *story3_1TrollSpriteBRGrey;
CCSprite *story3_1TrollSpriteBRPurple;

CCSprite *story3_1TrollSpriteTLDeadGreen;
CCSprite *story3_1TrollSpriteTLDeadGrey;
CCSprite *story3_1TrollSpriteTLDeadPurple;
CCSprite *story3_1TrollSpriteTMDeadGreen;
CCSprite *story3_1TrollSpriteTMDeadGrey;
CCSprite *story3_1TrollSpriteTMDeadPurple;
CCSprite *story3_1TrollSpriteTRDeadGreen;
CCSprite *story3_1TrollSpriteTRDeadGrey;
CCSprite *story3_1TrollSpriteTRDeadPurple;
CCSprite *story3_1TrollSpriteMLDeadGreen;
CCSprite *story3_1TrollSpriteMLDeadGrey;
CCSprite *story3_1TrollSpriteMLDeadPurple;
CCSprite *story3_1TrollSpriteMMDeadGreen;
CCSprite *story3_1TrollSpriteMMDeadGrey;
CCSprite *story3_1TrollSpriteMMDeadPurple;
CCSprite *story3_1TrollSpriteMRDeadGreen;
CCSprite *story3_1TrollSpriteMRDeadGrey;
CCSprite *story3_1TrollSpriteMRDeadPurple;
CCSprite *story3_1TrollSpriteBLDeadGreen;
CCSprite *story3_1TrollSpriteBLDeadGrey;
CCSprite *story3_1TrollSpriteBLDeadPurple;
CCSprite *story3_1TrollSpriteBMDeadGreen;
CCSprite *story3_1TrollSpriteBMDeadGrey;
CCSprite *story3_1TrollSpriteBMDeadPurple;
CCSprite *story3_1TrollSpriteBRDeadGreen;
CCSprite *story3_1TrollSpriteBRDeadGrey;
CCSprite *story3_1TrollSpriteBRDeadPurple;

CCSprite *story3_1ScoreNumber0_1;
CCSprite *story3_1ScoreNumber0_2;
CCSprite *story3_1ScoreNumber0_3;
CCSprite *story3_1ScoreNumber0_4;
CCSprite *story3_1ScoreNumber1_1;
CCSprite *story3_1ScoreNumber1_2;
CCSprite *story3_1ScoreNumber1_3;
CCSprite *story3_1ScoreNumber1_4;
CCSprite *story3_1ScoreNumber2_1;
CCSprite *story3_1ScoreNumber2_2;
CCSprite *story3_1ScoreNumber2_3;
CCSprite *story3_1ScoreNumber2_4;
CCSprite *story3_1ScoreNumber3_1;
CCSprite *story3_1ScoreNumber3_2;
CCSprite *story3_1ScoreNumber3_3;
CCSprite *story3_1ScoreNumber3_4;
CCSprite *story3_1ScoreNumber4_1;
CCSprite *story3_1ScoreNumber4_2;
CCSprite *story3_1ScoreNumber4_3;
CCSprite *story3_1ScoreNumber4_4;
CCSprite *story3_1ScoreNumber5_1;
CCSprite *story3_1ScoreNumber5_2;
CCSprite *story3_1ScoreNumber5_3;
CCSprite *story3_1ScoreNumber5_4;
CCSprite *story3_1ScoreNumber6_1;
CCSprite *story3_1ScoreNumber6_2;
CCSprite *story3_1ScoreNumber6_3;
CCSprite *story3_1ScoreNumber6_4;
CCSprite *story3_1ScoreNumber7_1;
CCSprite *story3_1ScoreNumber7_2;
CCSprite *story3_1ScoreNumber7_3;
CCSprite *story3_1ScoreNumber7_4;
CCSprite *story3_1ScoreNumber8_1;
CCSprite *story3_1ScoreNumber8_2;
CCSprite *story3_1ScoreNumber8_3;
CCSprite *story3_1ScoreNumber8_4;
CCSprite *story3_1ScoreNumber9_1;
CCSprite *story3_1ScoreNumber9_2;
CCSprite *story3_1ScoreNumber9_3;
CCSprite *story3_1ScoreNumber9_4;

CCSprite *story3_1TrollsLeftNumber0_1;
CCSprite *story3_1TrollsLeftNumber0_2;
CCSprite *story3_1TrollsLeftNumber0_3;
CCSprite *story3_1TrollsLeftNumber1_1;
CCSprite *story3_1TrollsLeftNumber1_2;
CCSprite *story3_1TrollsLeftNumber1_3;
CCSprite *story3_1TrollsLeftNumber2_1;
CCSprite *story3_1TrollsLeftNumber2_2;
CCSprite *story3_1TrollsLeftNumber3_1;
CCSprite *story3_1TrollsLeftNumber3_2;
CCSprite *story3_1TrollsLeftNumber4_1;
CCSprite *story3_1TrollsLeftNumber4_2;
CCSprite *story3_1TrollsLeftNumber5_1;
CCSprite *story3_1TrollsLeftNumber5_2;
CCSprite *story3_1TrollsLeftNumber6_1;
CCSprite *story3_1TrollsLeftNumber6_2;
CCSprite *story3_1TrollsLeftNumber7_1;
CCSprite *story3_1TrollsLeftNumber7_2;
CCSprite *story3_1TrollsLeftNumber8_1;
CCSprite *story3_1TrollsLeftNumber8_2;
CCSprite *story3_1TrollsLeftNumber9_1;
CCSprite *story3_1TrollsLeftNumber9_2;

CCSprite *story3_1TrollTopLeftChat;
CCSprite *story3_1TrollTopMidChat;
CCSprite *story3_1TrollTopRightChat;
CCSprite *story3_1TrollMidLeftChat;
CCSprite *story3_1TrollMidMidChat;
CCSprite *story3_1TrollMidRightChat;
CCSprite *story3_1TrollBotLeftChat;
CCSprite *story3_1TrollBotMidChat;
CCSprite *story3_1TrollBotRightChat;

CCSprite *story3_1TapToContinue;

CCSprite *story3_1TimeUpSprite;
BOOL story3_1TimeUpDrawn = FALSE;

CCSprite *story3_1AllTrollsSprite;
BOOL story3_1AllTrollsDrawn = FALSE;

int story3_1CurrentScore = 0;
int story3_1PrevScore = 0;
int story3_1ScoreInt = 0;
int story3_1LivesRemaining = 0;
int story3_1TrollsRemaining = 130;
int story3_1TrollsRemInt = 0;
int story3_1TrollsPrevRem = 130;

float story3_1TrollRespawnInterval = 0.0f;

float story3_1TrollTLResetTimer = 0.5f;
float story3_1TrollTMResetTimer = 0.8f;
float story3_1TrollTRResetTimer = 0.2f;
float story3_1TrollMLResetTimer = 0.4f;
float story3_1TrollMMResetTimer = 0.1f;
float story3_1TrollMRResetTimer = 0.9f;
float story3_1TrollBLResetTimer = 0.3f;
float story3_1TrollBMResetTimer = 0.7f;
float story3_1TrollBRResetTimer = 0.0f;

float story3_1TrollTLTimeInPlay = 0.0f;
float story3_1TrollTMTimeInPlay = 0.0f;
float story3_1TrollTRTimeInPlay = 0.0f;
float story3_1TrollMLTimeInPlay = 0.0f;
float story3_1TrollMMTimeInPlay = 0.0f;
float story3_1TrollMRTimeInPlay = 0.0f;
float story3_1TrollBLTimeInPlay = 0.0f;
float story3_1TrollBMTimeInPlay = 0.0f;
float story3_1TrollBRTimeInPlay = 0.0f;

float story3_1TrollTLFadingOutTimer = 0.0f;
float story3_1TrollTMFadingOutTimer = 0.0f;
float story3_1TrollTRFadingOutTimer = 0.0f;
float story3_1TrollMLFadingOutTimer = 0.0f;
float story3_1TrollMMFadingOutTimer = 0.0f;
float story3_1TrollMRFadingOutTimer = 0.0f;
float story3_1TrollBLFadingOutTimer = 0.0f;
float story3_1TrollBMFadingOutTimer = 0.0f;
float story3_1TrollBRFadingOutTimer = 0.0f;

BOOL story3_1TrollTLTouched = FALSE;
BOOL story3_1TrollTMTouched = FALSE;
BOOL story3_1TrollTRTouched = FALSE;
BOOL story3_1TrollMLTouched = FALSE;
BOOL story3_1TrollMMTouched = FALSE;
BOOL story3_1TrollMRTouched = FALSE;
BOOL story3_1TrollBLTouched = FALSE;
BOOL story3_1TrollBMTouched = FALSE;
BOOL story3_1TrollBRTouched = FALSE;

BOOL story3_1TrollTLInPlay = FALSE;
BOOL story3_1TrollTMInPlay = FALSE;
BOOL story3_1TrollTRInPlay = FALSE;
BOOL story3_1TrollMLInPlay = FALSE;
BOOL story3_1TrollMMInPlay = FALSE;
BOOL story3_1TrollMRInPlay = FALSE;
BOOL story3_1TrollBLInPlay = FALSE;
BOOL story3_1TrollBMInPlay = FALSE;
BOOL story3_1TrollBRInPlay = FALSE;

BOOL story3_1StartTrollTLDeathAnim = FALSE;
BOOL story3_1StartTrollTMDeathAnim = FALSE;
BOOL story3_1StartTrollTRDeathAnim = FALSE;
BOOL story3_1StartTrollMLDeathAnim = FALSE;
BOOL story3_1StartTrollMMDeathAnim = FALSE;
BOOL story3_1StartTrollMRDeathAnim = FALSE;
BOOL story3_1StartTrollBLDeathAnim = FALSE;
BOOL story3_1StartTrollBMDeathAnim = FALSE;
BOOL story3_1StartTrollBRDeathAnim = FALSE;

BOOL story3_1StartTrollTLMissed = FALSE;
BOOL story3_1StartTrollTMMissed = FALSE;
BOOL story3_1StartTrollTRMissed = FALSE;
BOOL story3_1StartTrollMLMissed = FALSE;
BOOL story3_1StartTrollMMMissed = FALSE;
BOOL story3_1StartTrollMRMissed = FALSE;
BOOL story3_1StartTrollBLMissed = FALSE;
BOOL story3_1StartTrollBMMissed = FALSE;
BOOL story3_1StartTrollBRMissed = FALSE;

BOOL story3_1StartRound = FALSE;
BOOL story3_1DialogueTouched = FALSE;

ccTime story3_1GameTime = 0.0f;
int story3_1Tick = 0;
BOOL story3_1IntroFinished = FALSE;
BOOL story3_1AllChange = FALSE;

@implementation StoryMode3_1

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode3_1 *layer = [StoryMode3_1 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story3_1StatsLayer = [CCLayer node];
        story3_1SpriteFrontLayer = [CCLayer node];
        story3_1SpriteMidLayer = [CCLayer node];
        story3_1SpriteBackLayer = [CCLayer node];
        
        story3_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_3_background_640.png"];
        story3_1Background.position = ccp(240, 160);
        
        [self addChild: story3_1Background];
        [self addChild: story3_1StatsLayer];
        [self addChild: story3_1SpriteBackLayer];
        [self addChild: story3_1SpriteFrontLayer];
        [self addChild: story3_1SpriteMidLayer];
        
        [self loadstory3_1Sprites];
        [self loadstory3_1Text];
        [self loadstory3_1Dialogue];
    }
    
    story3_1TrollTLColour = -1;
    story3_1TrollTMColour = -1;
    story3_1TrollTRColour = -1;
    story3_1TrollMLColour = -1;
    story3_1TrollMMColour = -1;
    story3_1TrollMRColour = -1;
    story3_1TrollBLColour = -1;
    story3_1TrollBMColour = -1;
    story3_1TrollBRColour = -1;
    story3_1TimeUpDrawn = FALSE;
    story3_1AllTrollsDrawn = FALSE;
    story3_1ScoreInt = 0;
    story3_1TrollsRemaining = 130;
    story3_1TrollsRemInt = 0;
    story3_1TrollsPrevRem = 130;
    story3_1TrollRespawnInterval = 0.0f;
    story3_1TrollTLResetTimer = 0.5f;
    story3_1TrollTMResetTimer = 0.8f;
    story3_1TrollTRResetTimer = 0.2f;
    story3_1TrollMLResetTimer = 0.4f;
    story3_1TrollMMResetTimer = 0.1f;
    story3_1TrollMRResetTimer = 0.9f;
    story3_1TrollBLResetTimer = 0.3f;
    story3_1TrollBMResetTimer = 0.7f;
    story3_1TrollBRResetTimer = 0.0f;
    story3_1TrollTLTimeInPlay = 0.0f;
    story3_1TrollTMTimeInPlay = 0.0f;
    story3_1TrollTRTimeInPlay = 0.0f;
    story3_1TrollMLTimeInPlay = 0.0f;
    story3_1TrollMMTimeInPlay = 0.0f;
    story3_1TrollMRTimeInPlay = 0.0f;
    story3_1TrollBLTimeInPlay = 0.0f;
    story3_1TrollBMTimeInPlay = 0.0f;
    story3_1TrollBRTimeInPlay = 0.0f;
    story3_1TrollTLFadingOutTimer = 0.0f;
    story3_1TrollTMFadingOutTimer = 0.0f;
    story3_1TrollTRFadingOutTimer = 0.0f;
    story3_1TrollMLFadingOutTimer = 0.0f;
    story3_1TrollMMFadingOutTimer = 0.0f;
    story3_1TrollMRFadingOutTimer = 0.0f;
    story3_1TrollBLFadingOutTimer = 0.0f;
    story3_1TrollBMFadingOutTimer = 0.0f;
    story3_1TrollBRFadingOutTimer = 0.0f;
    story3_1TrollTLTouched = FALSE;
    story3_1TrollTMTouched = FALSE;
    story3_1TrollTRTouched = FALSE;
    story3_1TrollMLTouched = FALSE;
    story3_1TrollMMTouched = FALSE;
    story3_1TrollMRTouched = FALSE;
    story3_1TrollBLTouched = FALSE;
    story3_1TrollBMTouched = FALSE;
    story3_1TrollBRTouched = FALSE;
    story3_1TrollTLInPlay = FALSE;
    story3_1TrollTMInPlay = FALSE;
    story3_1TrollTRInPlay = FALSE;
    story3_1TrollMLInPlay = FALSE;
    story3_1TrollMMInPlay = FALSE;
    story3_1TrollMRInPlay = FALSE;
    story3_1TrollBLInPlay = FALSE;
    story3_1TrollBMInPlay = FALSE;
    story3_1TrollBRInPlay = FALSE;
    story3_1StartTrollTLDeathAnim = FALSE;
    story3_1StartTrollTMDeathAnim = FALSE;
    story3_1StartTrollTRDeathAnim = FALSE;
    story3_1StartTrollMLDeathAnim = FALSE;
    story3_1StartTrollMMDeathAnim = FALSE;
    story3_1StartTrollMRDeathAnim = FALSE;
    story3_1StartTrollBLDeathAnim = FALSE;
    story3_1StartTrollBMDeathAnim = FALSE;
    story3_1StartTrollBRDeathAnim = FALSE;
    story3_1StartTrollTLMissed = FALSE;
    story3_1StartTrollTMMissed = FALSE;
    story3_1StartTrollTRMissed = FALSE;
    story3_1StartTrollMLMissed = FALSE;
    story3_1StartTrollMMMissed = FALSE;
    story3_1StartTrollMRMissed = FALSE;
    story3_1StartTrollBLMissed = FALSE;
    story3_1StartTrollBMMissed = FALSE;
    story3_1StartTrollBRMissed = FALSE;
    story3_1StartRound = FALSE;
    story3_1DialogueTouched = FALSE;
    story3_1Tick = 0;
    story3_1IntroFinished = FALSE;
    story3_1AllChange = FALSE;
    story3_1GameTime = 0.0f;
    
    story3_1CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story3_1PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    story3_1LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story3_1StartRound){
        if(story3_1DialogueTouched){
            story3_1DialogueSprite.position = ccp(-1000, -1000);
            story3_1CharacterSprite.position = ccp(-1000, -1000);
            story3_1CharacterName.position = ccp(-1000, -1000);
            story3_1TapToContinue.position = ccp(-1000, -1000);
            story3_1DialogueTouched = FALSE;
            story3_1StartRound = TRUE;
        }
    }
    else{
        story3_1GameTime += dt;
        
        if (story3_1GameTime < 5 && story3_1IntroFinished == NO){
            if(story3_1GameTime > 0 && story3_1GameTime < 1.5){
                if(story3_1Tick == 0){
                    story3_1Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story3_1Intro3.position = ccp(240, 160);
                    [self addChild: story3_1Intro3];
                    story3_1Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story3_1GameTime > 1.5 && story3_1GameTime < 2.5){
                if(story3_1Tick == 1) {
                    story3_1Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story3_1Intro2.position = ccp(240, 160);
                    [self addChild: story3_1Intro2];
                    story3_1Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story3_1Tick == 2){
                    [self removeChild: story3_1Intro3 cleanup:YES];
                    story3_1Tick = 3;
                }
            }
            else if(story3_1GameTime > 2.5 && story3_1GameTime < 3.5){
                if(story3_1Tick == 3){
                    story3_1Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story3_1Intro1.position = ccp(240, 160);
                    [self addChild: story3_1Intro1];
                    story3_1Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story3_1Tick == 4) {
                    [self removeChild: story3_1Intro2 cleanup:YES];
                    story3_1Tick = 5;
                }
            }
            else if(story3_1GameTime > 3.5 && story3_1GameTime < 4.5){
                if(story3_1Tick == 5){
                    story3_1Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story3_1Intro0.position = ccp(240, 160);
                    [self addChild: story3_1Intro0];
                    story3_1Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story3_1Tick == 6) {
                    [self removeChild: story3_1Intro1 cleanup:YES];
                    story3_1Tick = 7;
                }
            }
            else{
                if(story3_1Tick == 7){
                    story3_1IntroFinished = YES;
                    [self removeChild: story3_1Intro0 cleanup:YES];
                    story3_1Tick = 8;
                    story3_1AllChange = TRUE;
                }
            }
        }
        else if(story3_1Tick == 8){
            if(story3_1AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_3.mp3"];
                [self drawstory3_1Elements];
                story3_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story3_1TrollTLInPlay){
                if(story3_1TrollTLTimeInPlay >= 2.5f){
                    story3_1StartTrollTLMissed = TRUE;
                    story3_1TrollTopLeftChat.position = ccp(-1000, -1000);
                    story3_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollTLTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollTLResetTimer -= dt;
                if(story3_1TrollTLResetTimer <= 0){
                    story3_1SpriteTopLeftMenu.position = ccp(80, 250);
                    story3_1TrollTopLeftChat.position = ccp(112, 260);
                    story3_1TrollTLInPlay = TRUE;
                    story3_1TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollTMInPlay){
                if(story3_1TrollTMTimeInPlay >= 2.5f){
                    story3_1StartTrollTMMissed = TRUE;
                    story3_1TrollTopMidChat.position = ccp(-1000, -1000);
                    story3_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollTMTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollTMResetTimer -= dt;
                if(story3_1TrollTMResetTimer <= 0){
                    story3_1SpriteTopMidMenu.position = ccp(240, 250);
                    story3_1TrollTopMidChat.position = ccp(272, 260);
                    story3_1TrollTMInPlay = TRUE;
                    story3_1TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollTRInPlay){
                if(story3_1TrollTRTimeInPlay >= 2.5f){
                    story3_1StartTrollTRMissed = TRUE;
                    story3_1TrollTopRightChat.position = ccp(-1000, -1000);
                    story3_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollTRTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollTRResetTimer -= dt;
                if(story3_1TrollTRResetTimer <= 0){
                    story3_1SpriteTopRightMenu.position = ccp(400, 250);
                    story3_1TrollTopRightChat.position = ccp(432, 260);
                    story3_1TrollTRInPlay = TRUE;
                    story3_1TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollMLInPlay){
                if(story3_1TrollMLTimeInPlay >= 2.5f){
                    story3_1StartTrollMLMissed = TRUE;
                    story3_1TrollMidLeftChat.position = ccp(-1000, -1000);
                    story3_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollMLTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollMLResetTimer -= dt;
                if(story3_1TrollMLResetTimer <= 0){
                    story3_1SpriteMidLeftMenu.position = ccp(80, 170);
                    story3_1TrollMidLeftChat.position = ccp(112, 180);
                    story3_1TrollMLInPlay = TRUE;
                    story3_1TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollMMInPlay){
                if(story3_1TrollMMTimeInPlay >= 2.5f){
                    story3_1StartTrollMMMissed = TRUE;
                    story3_1TrollMidMidChat.position = ccp(-1000, -1000);
                    story3_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollMMTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollMMResetTimer -= dt;
                if(story3_1TrollMMResetTimer <= 0){
                    story3_1SpriteMidMidMenu.position = ccp(240, 170);
                    story3_1TrollMidMidChat.position = ccp(272, 180);
                    story3_1TrollMMInPlay = TRUE;
                    story3_1TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollMRInPlay){
                if(story3_1TrollMRTimeInPlay >= 2.5f){
                    story3_1StartTrollMRMissed = TRUE;
                    story3_1TrollMidRightChat.position = ccp(-1000, -1000);
                    story3_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story3_1TrollMRTimeInPlay += dt;
            }
            else{
                story3_1TrollMRResetTimer -= dt;
                if(story3_1TrollMRResetTimer <= 0){
                    story3_1SpriteMidRightMenu.position = ccp(400, 170);
                    story3_1TrollMidRightChat.position = ccp(432, 180);
                    story3_1TrollMRInPlay = TRUE;
                    story3_1TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollBLInPlay){
                if(story3_1TrollBLTimeInPlay >= 2.5f){
                    story3_1StartTrollBLMissed = TRUE;
                    story3_1TrollBotLeftChat.position = ccp(-1000, -1000);
                    story3_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollBLTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollBLResetTimer -= dt;
                if(story3_1TrollBLResetTimer <= 0){
                    story3_1SpriteBotLeftMenu.position = ccp(80, 90);
                    story3_1TrollBotLeftChat.position = ccp(112, 100);
                    story3_1TrollBLInPlay = TRUE;
                    story3_1TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollBMInPlay){
                if(story3_1TrollBMTimeInPlay >= 2.5f){
                    story3_1StartTrollBMMissed = TRUE;
                    story3_1TrollBotMidChat.position = ccp(-1000, -1000);
                    story3_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollBMTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollBMResetTimer -= dt;
                if(story3_1TrollBMResetTimer <= 0){
                    story3_1SpriteBotMidMenu.position = ccp(240, 90);
                    story3_1TrollBotMidChat.position = ccp(272, 100);
                    story3_1TrollBMInPlay = TRUE;
                    story3_1TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story3_1TrollBRInPlay){
                if(story3_1TrollBRTimeInPlay >= 2.5f){
                    story3_1StartTrollBRMissed = TRUE;
                    story3_1TrollBotRightChat.position = ccp(-1000, -1000);
                    story3_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story3_1TrollBRTimeInPlay += dt;
                }
            }
            else{
                story3_1TrollBRResetTimer -= dt;
                if(story3_1TrollBRResetTimer <= 0){
                    story3_1SpriteBotRightMenu.position = ccp(400, 90);
                    story3_1TrollBotRightChat.position = ccp(432, 100);
                    story3_1TrollBRInPlay = TRUE;
                    story3_1TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story3_1TrollTLTouched){
                story3_1StartTrollTLDeathAnim = TRUE;
                story3_1TrollTLTouched = FALSE;
                if(story3_1TrollTLColour == 0){
                    [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLDeadGreen];
                }
                else if(story3_1TrollTLColour == 1){
                    [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLDeadGrey];
                }
                else if(story3_1TrollTLColour == 2){
                    [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLDeadPurple];
                }
                
                story3_1TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story3_1TrollTMTouched){
                story3_1StartTrollTMDeathAnim = TRUE;
                story3_1TrollTMTouched = FALSE;
                if(story3_1TrollTMColour == 0){
                    [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMDeadGreen];
                }
                else if(story3_1TrollTMColour == 1){
                    [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMDeadGrey];
                }
                else if(story3_1TrollTMColour == 2){
                    [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMDeadPurple];
                }
                
                story3_1TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story3_1TrollTRTouched){
                story3_1StartTrollTRDeathAnim = TRUE;
                story3_1TrollTRTouched = FALSE;
                if(story3_1TrollTRColour == 0){
                    [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRDeadGreen];
                }
                else if(story3_1TrollTRColour == 1){
                    [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRDeadGrey];
                }
                else if(story3_1TrollTRColour == 2){
                    [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRDeadPurple];
                }
                
                story3_1TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story3_1TrollMLTouched){
                story3_1StartTrollMLDeathAnim = TRUE;
                story3_1TrollMLTouched = FALSE;
                if(story3_1TrollMLColour == 0){
                    [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLDeadGreen];
                }
                else if(story3_1TrollMLColour == 1){
                    [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLDeadGrey];
                }
                else if(story3_1TrollMLColour == 2){
                    [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLDeadPurple];
                }
                
                story3_1TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story3_1TrollMMTouched){
                story3_1StartTrollMMDeathAnim = TRUE;
                story3_1TrollMMTouched = FALSE;
                if(story3_1TrollMMColour == 0){
                    [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMDeadGreen];
                }
                else if(story3_1TrollMMColour == 1){
                    [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMDeadGrey];
                }
                else if(story3_1TrollMMColour == 2){
                    [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMDeadPurple];
                }
                
                story3_1TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story3_1TrollMRTouched){
                story3_1StartTrollMRDeathAnim = TRUE;
                story3_1TrollMRTouched = FALSE;
                if(story3_1TrollMRColour == 0){
                    [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRDeadGreen];
                }
                else if(story3_1TrollMRColour == 1){
                    [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRDeadGrey];
                }
                else if(story3_1TrollMRColour == 2){
                    [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRDeadPurple];
                }
                
                story3_1TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story3_1TrollBLTouched){
                story3_1StartTrollBLDeathAnim = TRUE;
                story3_1TrollBLTouched = FALSE;
                if(story3_1TrollBLColour == 0){
                    [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLDeadGreen];
                }
                else if(story3_1TrollBLColour == 1){
                    [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLDeadGrey];
                }
                else if(story3_1TrollBLColour == 2){
                    [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLDeadPurple];
                }
                
                story3_1TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story3_1TrollBMTouched){
                story3_1StartTrollBMDeathAnim = TRUE;
                story3_1TrollBMTouched = FALSE;
                if(story3_1TrollBMColour == 0){
                    [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMDeadGreen];
                }
                else if(story3_1TrollBMColour == 1){
                    [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMDeadGrey];
                }
                else if(story3_1TrollBMColour == 2){
                    [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMDeadPurple];
                }
                
                story3_1TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story3_1TrollBRTouched){
                story3_1StartTrollBRDeathAnim = TRUE;
                story3_1TrollBRTouched = FALSE;
                if(story3_1TrollBRColour == 0){
                    [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRDeadGreen];
                }
                else if(story3_1TrollBRColour == 1){
                    [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRDeadGrey];
                }
                else if(story3_1TrollBRColour == 2){
                    [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRDeadPurple];
                }
                
                story3_1TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story3_1TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story3_1StartTrollTLDeathAnim){
                if(story3_1TrollTLFadingOutTimer < 0.25f){
                    story3_1TrollTLFadingOutTimer += dt;
                    story3_1SpriteTopLeftMenu.position = ccp(story3_1SpriteTopLeftMenu.position.x, story3_1SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollTLDeathAnim = FALSE;
                    story3_1TrollTLTimeInPlay = 0.0f;
                    story3_1TrollTLFadingOutTimer = 0.0f;
                    story3_1TrollTLInPlay = FALSE;
                    story3_1TrollTLResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story3_1TrollTLColour == 0){
                        [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLGreen];
                    }
                    else if(story3_1TrollTLColour == 1){
                        [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLGrey];
                    }
                    else if(story3_1TrollTLColour == 2){
                        [story3_1TrollSpriteTopLeft setNormalImage:story3_1TrollSpriteTLPurple];
                    }
                    
                    story3_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollTMDeathAnim){
                if(story3_1TrollTMFadingOutTimer < 0.25f){
                    story3_1TrollTMFadingOutTimer += dt;
                    story3_1SpriteTopMidMenu.position = ccp(story3_1SpriteTopMidMenu.position.x, story3_1SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollTMDeathAnim = FALSE;
                    story3_1TrollTMTimeInPlay = 0.0f;
                    story3_1TrollTMFadingOutTimer = 0.0f;
                    story3_1TrollTMInPlay = FALSE;
                    story3_1TrollTMResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story3_1TrollTMColour == 0){
                        [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMGreen];
                    }
                    else if(story3_1TrollTMColour == 1){
                        [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMGrey];
                    }
                    else if(story3_1TrollTMColour == 2){
                        [story3_1TrollSpriteTopMid setNormalImage:story3_1TrollSpriteTMPurple];
                    }
                    
                    story3_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollTRDeathAnim){
                if(story3_1TrollTRFadingOutTimer < 0.25f){
                    story3_1TrollTRFadingOutTimer += dt;
                    story3_1SpriteTopRightMenu.position = ccp(story3_1SpriteTopRightMenu.position.x, story3_1SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollTRDeathAnim = FALSE;
                    story3_1TrollTRTimeInPlay = 0.0f;
                    story3_1TrollTRFadingOutTimer = 0.0f;
                    story3_1TrollTRInPlay = FALSE;
                    story3_1TrollTRResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story3_1TrollTRColour == 0){
                        [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRGreen];
                    }
                    else if(story3_1TrollTRColour == 1){
                        [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRGrey];
                    }
                    else if(story3_1TrollTRColour == 2){
                        [story3_1TrollSpriteTopRight setNormalImage:story3_1TrollSpriteTRPurple];
                    }
                    
                    story3_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollMLDeathAnim){
                if(story3_1TrollMLFadingOutTimer < 0.25f){
                    story3_1TrollMLFadingOutTimer += dt;
                    story3_1SpriteMidLeftMenu.position = ccp(story3_1SpriteMidLeftMenu.position.x, story3_1SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollMLDeathAnim = FALSE;
                    story3_1TrollMLTimeInPlay = 0.0f;
                    story3_1TrollMLFadingOutTimer = 0.0f;
                    story3_1TrollMLInPlay = FALSE;
                    story3_1TrollMLResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story3_1TrollMLColour == 0){
                        [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLGreen];
                    }
                    else if(story3_1TrollMLColour == 1){
                        [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLGrey];
                    }
                    else if(story3_1TrollMLColour == 2){
                        [story3_1TrollSpriteMidLeft setNormalImage:story3_1TrollSpriteMLPurple];
                    }
                    
                    story3_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollMMDeathAnim){
                if(story3_1TrollMMFadingOutTimer < 0.25f){
                    story3_1TrollMMFadingOutTimer += dt;
                    story3_1SpriteMidMidMenu.position = ccp(story3_1SpriteMidMidMenu.position.x, story3_1SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollMMDeathAnim = FALSE;
                    story3_1TrollMMTimeInPlay = 0.0f;
                    story3_1TrollMMFadingOutTimer = 0.0f;
                    story3_1TrollMMInPlay = FALSE;
                    story3_1TrollMMResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story3_1TrollMMColour == 0){
                        [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMGreen];
                    }
                    else if(story3_1TrollMMColour == 1){
                        [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMGrey];
                    }
                    else if(story3_1TrollMMColour == 2){
                        [story3_1TrollSpriteMidMid setNormalImage:story3_1TrollSpriteMMPurple];
                    }
                    
                    story3_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollMRDeathAnim){
                if(story3_1TrollMRFadingOutTimer < 0.25f){
                    story3_1TrollMRFadingOutTimer += dt;
                    story3_1SpriteMidRightMenu.position = ccp(story3_1SpriteMidRightMenu.position.x, story3_1SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollMRDeathAnim = FALSE;
                    story3_1TrollMRTimeInPlay = 0.0f;
                    story3_1TrollMRFadingOutTimer = 0.0f;
                    story3_1TrollMRInPlay = FALSE;
                    story3_1TrollMRResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story3_1TrollMRColour == 0){
                        [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRGreen];
                    }
                    else if(story3_1TrollMRColour == 1){
                        [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRGrey];
                    }
                    else if(story3_1TrollMRColour == 2){
                        [story3_1TrollSpriteMidRight setNormalImage:story3_1TrollSpriteMRPurple];
                    }
                    
                    story3_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollBLDeathAnim){
                if(story3_1TrollBLFadingOutTimer < 0.25f){
                    story3_1TrollBLFadingOutTimer += dt;
                    story3_1SpriteBotLeftMenu.position = ccp(story3_1SpriteBotLeftMenu.position.x, story3_1SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollBLDeathAnim = FALSE;
                    story3_1TrollBLTimeInPlay = 0.0f;
                    story3_1TrollBLFadingOutTimer = 0.0f;
                    story3_1TrollBLInPlay = FALSE;
                    story3_1TrollBLResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story3_1TrollBLColour == 0){
                        [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLGreen];
                    }
                    else if(story3_1TrollBLColour == 1){
                        [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLGrey];
                    }
                    else if(story3_1TrollBLColour == 2){
                        [story3_1TrollSpriteBotLeft setNormalImage:story3_1TrollSpriteBLPurple];
                    }
                    
                    story3_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollBMDeathAnim){
                if(story3_1TrollBMFadingOutTimer < 0.25f){
                    story3_1TrollBMFadingOutTimer += dt;
                    story3_1SpriteBotMidMenu.position = ccp(story3_1SpriteBotMidMenu.position.x, story3_1SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollBMDeathAnim = FALSE;
                    story3_1TrollBMTimeInPlay = 0.0f;
                    story3_1TrollBMFadingOutTimer = 0.0f;
                    story3_1TrollBMInPlay = FALSE;
                    story3_1TrollBMResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story3_1TrollBMColour == 0){
                        [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMGreen];
                    }
                    else if(story3_1TrollBMColour == 1){
                        [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMGrey];
                    }
                    else if(story3_1TrollBMColour == 2){
                        [story3_1TrollSpriteBotMid setNormalImage:story3_1TrollSpriteBMPurple];
                    }
                    
                    story3_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story3_1StartTrollBRDeathAnim){
                if(story3_1TrollBRFadingOutTimer < 0.25f){
                    story3_1TrollBRFadingOutTimer += dt;
                    story3_1SpriteBotRightMenu.position = ccp(story3_1SpriteBotRightMenu.position.x, story3_1SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    story3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story3_1StartTrollBRDeathAnim = FALSE;
                    story3_1TrollBRTimeInPlay = 0.0f;
                    story3_1TrollBRFadingOutTimer = 0.0f;
                    story3_1TrollBRInPlay = FALSE;
                    story3_1TrollBRResetTimer = story3_1TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story3_1TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story3_1TrollBRColour == 0){
                        [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRGreen];
                    }
                    else if(story3_1TrollBRColour == 1){
                        [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRGrey];
                    }
                    else if(story3_1TrollBRColour == 2){
                        [story3_1TrollSpriteBotRight setNormalImage:story3_1TrollSpriteBRPurple];
                    }
                    
                    story3_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story3_1StartTrollTLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollTLMissed = FALSE;
                story3_1TrollTLTimeInPlay = 0.0f;
                story3_1TrollTLInPlay = FALSE;
                story3_1TrollTLResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollTMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollTMMissed = FALSE;
                story3_1TrollTMTimeInPlay = 0.0f;
                story3_1TrollTMInPlay = FALSE;
                story3_1TrollTMResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollTRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollTRMissed = FALSE;
                story3_1TrollTRTimeInPlay = 0.0f;
                story3_1TrollTRInPlay = FALSE;
                story3_1TrollTRResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollMLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollMLMissed = FALSE;
                story3_1TrollMLTimeInPlay = 0.0f;
                story3_1TrollMLInPlay = FALSE;
                story3_1TrollMLResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollMMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollMMMissed = FALSE;
                story3_1TrollMMTimeInPlay = 0.0f;
                story3_1TrollMMInPlay = FALSE;
                story3_1TrollMMResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollMRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollMRMissed = FALSE;
                story3_1TrollMRTimeInPlay = 0.0f;
                story3_1TrollMRInPlay = FALSE;
                story3_1TrollMRResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollBLMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollBLMissed = FALSE;
                story3_1TrollBLTimeInPlay = 0.0f;
                story3_1TrollBLInPlay = FALSE;
                story3_1TrollBLResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollBMMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollBMMissed = FALSE;
                story3_1TrollBMTimeInPlay = 0.0f;
                story3_1TrollBMInPlay = FALSE;
                story3_1TrollBMResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            if(story3_1StartTrollBRMissed){
                int i = (arc4random() % (151)) + 100;
                story3_1TrollRespawnInterval = (float)i / 100.0f;
                story3_1StartTrollBRMissed = FALSE;
                story3_1TrollBRTimeInPlay = 0.0f;
                story3_1TrollBRInPlay = FALSE;
                story3_1TrollBRResetTimer = story3_1TrollRespawnInterval;
                story3_1LivesRemaining--;
                
                if(story3_1LivesRemaining == 2){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 1){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story3_1LivesRemaining == 0){
                    story3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story3_1Tick = 9;
                }
            }
            
            story3_1ScoreInt = story3_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(story3_1LivesRemaining >= 0) {
                if(story3_1CurrentScore != story3_1PrevScore){
                    if(story3_1CurrentScore >= 0 && story3_1CurrentScore < 10){
                        if(story3_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                        }
                        else if(story3_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                        }
                        else if(story3_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                        }
                        else if(story3_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                        }
                        else if(story3_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                        }
                        else if(story3_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                        }
                        else if(story3_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                        }
                        else if(story3_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                        }
                        else if(story3_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                        }
                        else if(story3_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                    }
                    
                    else if(story3_1CurrentScore >= 10 && story3_1CurrentScore <= 99){
                        int lSDS = story3_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                        }
                        
                        if(story3_1CurrentScore >= 10 && story3_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
                        }
                        else if(story3_1CurrentScore >= 20 && story3_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
                        }
                        else if(story3_1CurrentScore >= 30 && story3_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
                        }
                        else if(story3_1CurrentScore >= 40 && story3_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
                        }
                        else if(story3_1CurrentScore >= 50 && story3_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
                        }
                        else if(story3_1CurrentScore >= 60 && story3_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
                        }
                        else if(story3_1CurrentScore >= 70 && story3_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
                        }
                        else if(story3_1CurrentScore >= 80 && story3_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
                        }
                        else if(story3_1CurrentScore >= 90 && story3_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
                    }
                    
                    else if(story3_1CurrentScore >= 100 && story3_1CurrentScore <= 999){
                        int story3_1Count = 0;
                        while(story3_1Count < 2){
                            int lSDSs = story3_1ScoreInt % 10;
                            if(story3_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                                }
                            }
                            else if(story3_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
                                }
                            }
                            story3_1ScoreInt /= 10;
                            story3_1Count++;
                        }
                        
                        if(story3_1CurrentScore >= 100 && story3_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber1_2];
                        }
                        else if(story3_1CurrentScore >= 200 && story3_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber2_2];
                        }
                        else if(story3_1CurrentScore >= 300 && story3_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber3_2];
                        }
                        else if(story3_1CurrentScore >= 400 && story3_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber4_2];
                        }
                        else if(story3_1CurrentScore >= 500 && story3_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber5_2];
                        }
                        else if(story3_1CurrentScore >= 600 && story3_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber6_2];
                        }
                        else if(story3_1CurrentScore >= 700 && story3_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber7_2];
                        }
                        else if(story3_1CurrentScore >= 800 && story3_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber8_2];
                        }
                        else if(story3_1CurrentScore >= 900 && story3_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
                    }
                    
                    else if(story3_1CurrentScore >= 1000 && story3_1CurrentScore <= 9999){
                        int story3_1Count = 0;
                        while(story3_1Count < 3){
                            int lSDSsS = story3_1ScoreInt % 10;
                            if(story3_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                                }
                            }
                            else if(story3_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
                                }
                            }
                            else if(story3_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber9_2];
                                }
                            }
                            story3_1ScoreInt /= 10;
                            story3_1Count++;
                            
                            if(story3_1CurrentScore >= 1000 && story3_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber1_1];
                            }
                            else if(story3_1CurrentScore >= 2000 && story3_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber2_1];
                            }
                            else if(story3_1CurrentScore >= 3000 && story3_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber3_1];
                            }
                            else if(story3_1CurrentScore >= 4000 && story3_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber4_1];
                            }
                            else if(story3_1CurrentScore >= 5000 && story3_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber5_1];
                            }
                            else if(story3_1CurrentScore >= 6000 && story3_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber6_1];
                            }
                            else if(story3_1CurrentScore >= 7000 && story3_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber7_1];
                            }
                            else if(story3_1CurrentScore >= 8000 && story3_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber8_1];
                            }
                            else if(story3_1CurrentScore >= 9000 && story3_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story3_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story3_1TrollsRemInt = story3_1TrollsRemaining;
            
            if(story3_1TrollsRemaining > 0){
                if(story3_1TrollsRemaining != story3_1TrollsPrevRem){
                    if(story3_1TrollsRemaining >= 0 && story3_1TrollsRemaining < 10){
                        if(story3_1TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber0_3];
                        }
                        else if(story3_1TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber1_3];
                        }
                        else if(story3_1TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber2_2];
                        }
                        else if(story3_1TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber3_2];
                        }
                        else if(story3_1TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber4_2];
                        }
                        else if(story3_1TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber5_2];
                        }
                        else if(story3_1TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber6_2];
                        }
                        else if(story3_1TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber7_2];
                        }
                        else if(story3_1TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber8_2];
                        }
                        else if(story3_1TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber9_2];
                        }
                        
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_1TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber0_2];
                    }
                    
                    else if(story3_1TrollsRemaining >= 10 && story3_1TrollsRemaining <= 99){
                        int lSDS = story3_1TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber9_2];
                        }
                        
                        if(story3_1TrollsRemaining >= 10 && story3_1TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber1_2];
                        }
                        else if(story3_1TrollsRemaining >= 20 && story3_1TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber2_1];
                        }
                        else if(story3_1TrollsRemaining >= 30 && story3_1TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber3_1];
                        }
                        else if(story3_1TrollsRemaining >= 40 && story3_1TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber4_1];
                        }
                        else if(story3_1TrollsRemaining >= 50 && story3_1TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber5_1];
                        }
                        else if(story3_1TrollsRemaining >= 60 && story3_1TrollsRemaining <= 69){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber6_1];
                        }
                        else if(story3_1TrollsRemaining >= 70 && story3_1TrollsRemaining <= 79){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber7_1];
                        }
                        else if(story3_1TrollsRemaining >= 80 && story3_1TrollsRemaining <= 89){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber8_1];
                        }
                        else if(story3_1TrollsRemaining >= 90 && story3_1TrollsRemaining <= 99){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_1TrollsLeftNumber0_1];
                    }
                    else if(story3_1TrollsRemaining >= 100){
                        int lSDS = story3_1TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber6_2];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber7_2];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber8_2];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber9_2];
                        }
                        
                        if(story3_1TrollsRemaining >= 100 && story3_1TrollsRemaining <= 109){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber0_2];
                        }
                        else if(story3_1TrollsRemaining >= 110 && story3_1TrollsRemaining <= 119){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber1_2];
                        }
                        else if(story3_1TrollsRemaining >= 120 && story3_1TrollsRemaining <= 129){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber2_1];
                        }
                        else if(story3_1TrollsRemaining >= 130 && story3_1TrollsRemaining <= 139){
                            [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber3_1];
                        }
                        
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_1TrollsLeftNumber1_1];
                    }
                    
                    else if(story3_1TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_1TrollsLeftNumber0_1];
                    }
                    
                    story3_1TrollsPrevRem = story3_1TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story3_1TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story3_1TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story3_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story3_1TrollsLeftNumber0_1];
                story3_1Tick = 10;
            }
            
        }
        else if(story3_1Tick == 9){
            if(!story3_1TimeUpDrawn){
                story3_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story3_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: story3_1TimeUpSprite];
                [self scheduleOnce:@selector(story3_1GameOver:) delay:2];
                story3_1TimeUpDrawn = TRUE;
            }
            else{
                if(story3_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story3_1TimeUpSprite.position = ccp(story3_1TimeUpSprite.position.x, story3_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story3_1Tick == 10){
            //LEVEL COMPLETE
            if(!story3_1AllTrollsDrawn){
                story3_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                story3_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story3_1AllTrollsSprite];
                [self scheduleOnce:@selector(story3_1LevelComplete:) delay:2];
                story3_1AllTrollsDrawn = TRUE;
            }
            else{
                if(story3_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    story3_1AllTrollsSprite.position = ccp(story3_1AllTrollsSprite.position.x +10, story3_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadstory3_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"database"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"granquier"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"kappa"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"kreytos"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"mantin"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"orksome"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"salty"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"wooferz"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSeven"] isEqualToString:@"zeke"]){
        story3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story3_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        story3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_7.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story3_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story3_1DialogueMenu = [CCMenu menuWithItems: story3_1DialogueSprite, nil];
    
    story3_1CharacterSprite.position = ccp(25, 100);
    story3_1CharacterName.position = ccp(120, 86);
    story3_1DialogueSprite.position = ccp(0, -120);
    story3_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: story3_1CharacterSprite];
    [self addChild: story3_1CharacterName];
    [self addChild: story3_1TapToContinue];
    [self addChild: story3_1DialogueMenu];
}

-(void) loadstory3_1Sprites{
    story3_1VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story3_1VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story3_1VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topLeftExtraTouched:)];
    
    story3_1VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topMidExtraTouched:)];
    
    story3_1VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(topRightExtraTouched:)];
    
    story3_1VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midLeftExtraTouched:)];
    
    story3_1VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midMidExtraTouched:)];
    
    story3_1VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midRightExtraTouched:)];
    
    story3_1VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botLeftExtraTouched:)];
    
    story3_1VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botMidExtraTouched:)];
    
    story3_1VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(botRightExtraTouched:)];
    
    story3_1VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story3_1VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story3_1VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story3_1VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story3_1VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story3_1VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story3_1VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story3_1VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story3_1VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story3_1VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story3_1VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story3_1VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story3_1VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story3_1VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story3_1VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story3_1VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story3_1VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story3_1VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story3_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_1TrollTLColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_1TrollTLColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topLeftTouched:)];
                
                story3_1TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story3_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_1TrollTMColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_1TrollTMColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topMidTouched:)];
                
                story3_1TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story3_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_1TrollTRColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_1TrollTRColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(topRightTouched:)];
                
                story3_1TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story3_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_1TrollMLColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_1TrollMLColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midLeftTouched:)];
                
                story3_1TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story3_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_1TrollMMColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_1TrollMMColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midMidTouched:)];
                
                story3_1TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story3_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                story3_1TrollMRColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story3_1TrollMRColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(midRightTouched:)];
                
                story3_1TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story3_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_1TrollBLColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_1TrollBLColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botLeftTouched:)];
                
                story3_1TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story3_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                story3_1TrollBMColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story3_1TrollBMColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botMidTouched:)];
                
                story3_1TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story3_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                story3_1TrollBRColour = 0;
            }
            else if(i == 1){
                story3_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story3_1TrollBRColour = 1;
            }
            else if(i == 2){
                story3_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(botRightTouched:)];
                
                story3_1TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story3_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story3_1TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story3_1TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story3_1TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story3_1TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story3_1TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story3_1TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story3_1TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story3_1TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story3_1SpriteTopLeftMenu = [CCMenu menuWithItems: story3_1TrollSpriteTopLeft, nil];
    story3_1SpriteTopMidMenu = [CCMenu menuWithItems: story3_1TrollSpriteTopMid, nil];
    story3_1SpriteTopRightMenu = [CCMenu menuWithItems: story3_1TrollSpriteTopRight, nil];
    story3_1SpriteMidLeftMenu = [CCMenu menuWithItems: story3_1TrollSpriteMidLeft, nil];
    story3_1SpriteMidMidMenu = [CCMenu menuWithItems: story3_1TrollSpriteMidMid, nil];
    story3_1SpriteMidRightMenu = [CCMenu menuWithItems: story3_1TrollSpriteMidRight, nil];
    story3_1SpriteBotLeftMenu = [CCMenu menuWithItems: story3_1TrollSpriteBotLeft, nil];
    story3_1SpriteBotMidMenu = [CCMenu menuWithItems: story3_1TrollSpriteBotMid, nil];
    story3_1SpriteBotRightMenu = [CCMenu menuWithItems: story3_1TrollSpriteBotRight, nil];
    
    story3_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story3_1SpriteTopMidMenu.position = ccp(-1000, -1000);
    story3_1SpriteTopRightMenu.position = ccp(-1000, -1000);
    story3_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story3_1SpriteMidMidMenu.position = ccp(-1000, -1000);
    story3_1SpriteMidRightMenu.position = ccp(-1000, -1000);
    story3_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story3_1SpriteBotMidMenu.position = ccp(-1000, -1000);
    story3_1SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story3_1TrollTopLeftChat.position = ccp(-1000, -1000);
    story3_1TrollTopMidChat.position = ccp(-1000, -1000);
    story3_1TrollTopRightChat.position = ccp(-1000, -1000);
    story3_1TrollMidLeftChat.position = ccp(-1000, -1000);
    story3_1TrollMidMidChat.position = ccp(-1000, -1000);
    story3_1TrollMidRightChat.position = ccp(-1000, -1000);
    story3_1TrollBotLeftChat.position = ccp(-1000, -1000);
    story3_1TrollBotMidChat.position = ccp(-1000, -1000);
    story3_1TrollBotRightChat.position = ccp(-1000, -1000);
    
    story3_1VolcanoMenu = [CCMenu menuWithItems: story3_1VolcanoBackSpriteTopLeft, story3_1VolcanoBackSpriteTopMid, story3_1VolcanoBackSpriteTopRight,
                           story3_1VolcanoBackSpriteMidLeft, story3_1VolcanoBackSpriteMidMid, story3_1VolcanoBackSpriteMidRight,
                           story3_1VolcanoBackSpriteBotLeft, story3_1VolcanoBackSpriteBotMid, story3_1VolcanoBackSpriteBotRight, nil];
    
    [story3_1SpriteMidLayer addChild: story3_1SpriteTopLeftMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteTopMidMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteTopRightMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteMidLeftMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteMidMidMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteMidRightMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteBotLeftMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteBotMidMenu];
    [story3_1SpriteMidLayer addChild: story3_1SpriteBotRightMenu];
    
    [story3_1SpriteMidLayer addChild: story3_1TrollTopLeftChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollTopMidChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollTopRightChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollMidLeftChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollMidMidChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollMidRightChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollBotLeftChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollBotMidChat];
    [story3_1SpriteMidLayer addChild: story3_1TrollBotRightChat];
    
    [story3_1SpriteBackLayer addChild: story3_1VolcanoMenu];
    
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteTopLeft];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteTopMid];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteTopRight];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteMidLeft];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteMidMid];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteMidRight];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteBotLeft];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteBotMid];
    [story3_1SpriteFrontLayer addChild: story3_1VolcanoFrontSpriteBotRight];
    
    story3_1SpriteBackLayer.position = ccp(-1000, -1000);
    story3_1SpriteMidLayer.position = ccp(-1000, -1000);
    story3_1SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadstory3_1Text{
    story3_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story3_1TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    story3_1TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1TrollsLeftNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    story3_1TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    story3_1TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    story3_1TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    story3_1TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    story3_1TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1TrollsLeftNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    story3_1TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1TrollsLeftNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    story3_1TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1TrollsLeftNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    story3_1TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    story3_1TrollsLeftNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    story3_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                               selectedImage:NULL];
    
    story3_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story3_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    story3_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                            selectedSprite:NULL];
    
    story3_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    story3_1TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text_white.png"
                                                    selectedImage:NULL];
    
    story3_1TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]
                                                               selectedSprite:NULL];
    
    story3_1TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]
                                                               selectedSprite:NULL];
    
    story3_1TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                                 selectedSprite:NULL];
    
    story3_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        story3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    story3_1ScoreMenu = [CCMenu menuWithItems:story3_1ScoreText, story3_1ScoreSpriteDigitOne, story3_1ScoreSpriteDigitTwo,
                         story3_1ScoreSpriteDigitThree, story3_1ScoreSpriteDigitFour, nil];
    
    [story3_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story3_1TrollsLeftMenu = [CCMenu menuWithItems: story3_1TrollsLeftText, story3_1TrollsLeftSpriteDigitOne, story3_1TrollsLeftSpriteDigitTwo, story3_1TrollsLeftSpriteDigitThree, nil];
    [story3_1TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story3_1LivesMenu = [CCMenu menuWithItems: story3_1LivesText, story3_1LivesSpriteOne, story3_1LivesSpriteTwo, story3_1LivesSpriteThree, nil];
    [story3_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story3_1ScoreMenu.position = ccp(72, 308);
    story3_1TrollsLeftMenu.position = ccp(100, 286);
    story3_1LivesMenu.position = ccp(400, 308);
    
    [story3_1ScoreSpriteDigitOne setTag: 101];
    [story3_1ScoreSpriteDigitTwo setTag: 102];
    [story3_1ScoreSpriteDigitThree setTag: 103];
    [story3_1ScoreSpriteDigitFour setTag: 104];
    
    [story3_1TrollsLeftSpriteDigitOne setTag: 201];
    [story3_1TrollsLeftSpriteDigitTwo setTag: 202];
    [story3_1TrollsLeftSpriteDigitThree setTag: 203];
    
    [story3_1StatsLayer addChild: story3_1ScoreMenu];
    [story3_1StatsLayer addChild: story3_1TrollsLeftMenu];
    [story3_1StatsLayer addChild: story3_1LivesMenu];
    
    story3_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawstory3_1Elements{
    story3_1SpriteBackLayer.position = ccp(0, 0);
    story3_1SpriteMidLayer.position = ccp(0, 0);
    story3_1SpriteFrontLayer.position = ccp(0, 0);
    story3_1StatsLayer.position = ccp(0, 0);
    
    story3_1ScoreInt = story3_1CurrentScore;
    
    if(story3_1CurrentScore >= 0 && story3_1CurrentScore < 10){
        if(story3_1CurrentScore == 0){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
        }
        else if(story3_1CurrentScore == 1){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
        }
        else if(story3_1CurrentScore == 2){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
        }
        else if(story3_1CurrentScore == 3){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
        }
        else if(story3_1CurrentScore == 4){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
        }
        else if(story3_1CurrentScore == 5){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
        }
        else if(story3_1CurrentScore == 6){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
        }
        else if(story3_1CurrentScore == 7){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
        }
        else if(story3_1CurrentScore == 8){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
        }
        else if(story3_1CurrentScore == 9){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
    }
    
    else if(story3_1CurrentScore >= 10 && story3_1CurrentScore <= 99){
        int lSDS = story3_1ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
        }
        
        if(story3_1CurrentScore >= 10 && story3_1CurrentScore <= 19){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
        }
        else if(story3_1CurrentScore >= 20 && story3_1CurrentScore <= 29){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
        }
        else if(story3_1CurrentScore >= 30 && story3_1CurrentScore <= 39){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
        }
        else if(story3_1CurrentScore >= 40 && story3_1CurrentScore <= 49){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
        }
        else if(story3_1CurrentScore >= 50 && story3_1CurrentScore <= 59){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
        }
        else if(story3_1CurrentScore >= 60 && story3_1CurrentScore <= 69){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
        }
        else if(story3_1CurrentScore >= 70 && story3_1CurrentScore <= 79){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
        }
        else if(story3_1CurrentScore >= 80 && story3_1CurrentScore <= 89){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
        }
        else if(story3_1CurrentScore >= 90 && story3_1CurrentScore <= 99){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
    }
    
    else if(story3_1CurrentScore >= 100 && story3_1CurrentScore <= 999){
        int story3_1Count = 0;
        while(story3_1Count < 2){
            int lSDSs = story3_1ScoreInt % 10;
            if(story3_1Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                }
            }
            else if(story3_1Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
                }
            }
            story3_1ScoreInt /= 10;
            story3_1Count++;
        }
        
        if(story3_1CurrentScore >= 100 && story3_1CurrentScore <= 199){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber1_2];
        }
        else if(story3_1CurrentScore >= 200 && story3_1CurrentScore <= 299){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber2_2];
        }
        else if(story3_1CurrentScore >= 300 && story3_1CurrentScore <= 399){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber3_2];
        }
        else if(story3_1CurrentScore >= 400 && story3_1CurrentScore <= 499){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber4_2];
        }
        else if(story3_1CurrentScore >= 500 && story3_1CurrentScore <= 599){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber5_2];
        }
        else if(story3_1CurrentScore >= 600 && story3_1CurrentScore <= 699){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber6_2];
        }
        else if(story3_1CurrentScore >= 700 && story3_1CurrentScore <= 799){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber7_2];
        }
        else if(story3_1CurrentScore >= 800 && story3_1CurrentScore <= 899){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber8_2];
        }
        else if(story3_1CurrentScore >= 900 && story3_1CurrentScore <= 999){
            [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
    }
    
    else if(story3_1CurrentScore >= 1000 && story3_1CurrentScore <= 9999){
        int story3_1Count = 0;
        while(story3_1Count < 3){
            int lSDSsS = story3_1ScoreInt % 10;
            if(story3_1Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber9_4];
                }
            }
            else if(story3_1Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber9_3];
                }
            }
            else if(story3_1Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber9_2];
                }
            }
            story3_1ScoreInt /= 10;
            story3_1Count++;
            
            if(story3_1CurrentScore >= 1000 && story3_1CurrentScore <= 1999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber1_1];
            }
            else if(story3_1CurrentScore >= 2000 && story3_1CurrentScore <= 2999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber2_1];
            }
            else if(story3_1CurrentScore >= 3000 && story3_1CurrentScore <= 3999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber3_1];
            }
            else if(story3_1CurrentScore >= 4000 && story3_1CurrentScore <= 4999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber4_1];
            }
            else if(story3_1CurrentScore >= 5000 && story3_1CurrentScore <= 5999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber5_1];
            }
            else if(story3_1CurrentScore >= 6000 && story3_1CurrentScore <= 6999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber6_1];
            }
            else if(story3_1CurrentScore >= 7000 && story3_1CurrentScore <= 7999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber7_1];
            }
            else if(story3_1CurrentScore >= 8000 && story3_1CurrentScore <= 8999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber8_1];
            }
            else if(story3_1CurrentScore >= 9000 && story3_1CurrentScore <= 9999){
                [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber9_1];
            }
        }
    }
    
    else if(story3_1CurrentScore <= 0){
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 104] setNormalImage:story3_1ScoreNumber0_4];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 103] setNormalImage:story3_1ScoreNumber0_3];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 102] setNormalImage:story3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[story3_1ScoreMenu getChildByTag: 101] setNormalImage:story3_1ScoreNumber0_1];
    }
    
    if(story3_1LivesRemaining == 2){
        story3_1LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(story3_1LivesRemaining == 1){
        story3_1LivesSpriteThree.position = ccp(-1000, -1000);
        story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(story3_1LivesRemaining == 0){
        story3_1LivesSpriteThree.position = ccp(-1000, -1000);
        story3_1LivesSpriteTwo.position = ccp(-1000, -1000);
        story3_1LivesSpriteOne.position = ccp(-1000, -1000);
    }
}

-(void) dialogueTouched:(id)sender{
    story3_1DialogueTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story3_1StartTrollTLDeathAnim || story3_1StartTrollTLMissed || story3_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story3_1TrollTLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story3_1StartTrollTMDeathAnim || story3_1StartTrollTMMissed || story3_1TrollTMResetTimer > 0){
        
    }
    else{
        story3_1TrollTMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story3_1StartTrollTRDeathAnim || story3_1StartTrollTRMissed || story3_1TrollTRResetTimer > 0){
        
    }
    else{
        story3_1TrollTRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story3_1StartTrollMLDeathAnim || story3_1StartTrollMLMissed || story3_1TrollMLResetTimer > 0){
        
    }
    else{
        story3_1TrollMLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story3_1StartTrollMMDeathAnim || story3_1StartTrollMMMissed || story3_1TrollMMResetTimer > 0){
        
    }
    else{
        story3_1TrollMMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story3_1StartTrollMRDeathAnim || story3_1StartTrollMRMissed || story3_1TrollMRResetTimer > 0){
        
    }
    else{
        story3_1TrollMRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story3_1StartTrollBLDeathAnim || story3_1StartTrollBLMissed || story3_1TrollBLResetTimer > 0){
        
    }
    else{
        story3_1TrollBLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story3_1StartTrollBMDeathAnim || story3_1StartTrollBMMissed || story3_1TrollBMResetTimer > 0){
        
    }
    else{
        story3_1TrollBMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story3_1StartTrollBRDeathAnim || story3_1StartTrollBRMissed || story3_1TrollBRResetTimer > 0){
        
    }
    else{
        story3_1TrollBRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story3_1StartTrollTLDeathAnim || story3_1StartTrollTLMissed || story3_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story3_1TrollTLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story3_1StartTrollTMDeathAnim || story3_1StartTrollTMMissed || story3_1TrollTMResetTimer > 0){
        
    }
    else{
        story3_1TrollTMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story3_1StartTrollTRDeathAnim || story3_1StartTrollTRMissed || story3_1TrollTRResetTimer > 0){
        
    }
    else{
        story3_1TrollTRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story3_1StartTrollMLDeathAnim || story3_1StartTrollMLMissed || story3_1TrollMLResetTimer > 0){
        
    }
    else{
        story3_1TrollMLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story3_1StartTrollMMDeathAnim || story3_1StartTrollMMMissed || story3_1TrollMMResetTimer > 0){
        
    }
    else{
        story3_1TrollMMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story3_1StartTrollMRDeathAnim || story3_1StartTrollMRMissed || story3_1TrollMRResetTimer > 0){
        
    }
    else{
        story3_1TrollMRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story3_1StartTrollBLDeathAnim || story3_1StartTrollBLMissed || story3_1TrollBLResetTimer > 0){
        
    }
    else{
        story3_1TrollBLTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story3_1StartTrollBMDeathAnim || story3_1StartTrollBMMissed || story3_1TrollBMResetTimer > 0){
        
    }
    else{
        story3_1TrollBMTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story3_1StartTrollBRDeathAnim || story3_1StartTrollBRMissed || story3_1TrollBRResetTimer > 0){
        
    }
    else{
        story3_1TrollBRTouched = TRUE;
        story3_1CurrentScore += 6;
        story3_1TrollsRemaining--;
    }
}

-(void) story3_1GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story3_1CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story3_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story3_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story3_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:7 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameResults node] withColor:ccWHITE]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story3_1TrollTopLeftChat release];
    [story3_1TrollTopMidChat release];
    [story3_1TrollTopRightChat release];
    [story3_1TrollMidLeftChat release];
    [story3_1TrollMidMidChat release];
    [story3_1TrollMidRightChat release];
    [story3_1TrollBotLeftChat release];
    [story3_1TrollBotMidChat release];
    [story3_1TrollBotRightChat release];
    [story3_1TrollSpriteTLGreen release];
    [story3_1TrollSpriteTLGrey release];
    [story3_1TrollSpriteTLPurple release];
    [story3_1TrollSpriteTMGreen release];
    [story3_1TrollSpriteTMGrey release];
    [story3_1TrollSpriteTMPurple release];
    [story3_1TrollSpriteTRGreen release];
    [story3_1TrollSpriteTRGrey release];
    [story3_1TrollSpriteTRPurple release];
    [story3_1TrollSpriteMLGreen release];
    [story3_1TrollSpriteMLGrey release];
    [story3_1TrollSpriteMLPurple release];
    [story3_1TrollSpriteMMGreen release];
    [story3_1TrollSpriteMMGrey release];
    [story3_1TrollSpriteMMPurple release];
    [story3_1TrollSpriteMRGreen release];
    [story3_1TrollSpriteMRGrey release];
    [story3_1TrollSpriteMRPurple release];
    [story3_1TrollSpriteBLGreen release];
    [story3_1TrollSpriteBLGrey release];
    [story3_1TrollSpriteBLPurple release];
    [story3_1TrollSpriteBMGreen release];
    [story3_1TrollSpriteBMGrey release];
    [story3_1TrollSpriteBMPurple release];
    [story3_1TrollSpriteBRGreen release];
    [story3_1TrollSpriteBRGrey release];
    [story3_1TrollSpriteBRPurple release];
    [story3_1TrollSpriteTLDeadGreen release];
    [story3_1TrollSpriteTLDeadGrey release];
    [story3_1TrollSpriteTLDeadPurple release];
    [story3_1TrollSpriteTMDeadGreen release];
    [story3_1TrollSpriteTMDeadGrey release];
    [story3_1TrollSpriteTMDeadPurple release];
    [story3_1TrollSpriteTRDeadGreen release];
    [story3_1TrollSpriteTRDeadGrey release];
    [story3_1TrollSpriteTRDeadPurple release];
    [story3_1TrollSpriteMLDeadGreen release];
    [story3_1TrollSpriteMLDeadGrey release];
    [story3_1TrollSpriteMLDeadPurple release];
    [story3_1TrollSpriteMMDeadGreen release];
    [story3_1TrollSpriteMMDeadGrey release];
    [story3_1TrollSpriteMMDeadPurple release];
    [story3_1TrollSpriteMRDeadGreen release];
    [story3_1TrollSpriteMRDeadGrey release];
    [story3_1TrollSpriteMRDeadPurple release];
    [story3_1TrollSpriteBLDeadGreen release];
    [story3_1TrollSpriteBLDeadGrey release];
    [story3_1TrollSpriteBLDeadPurple release];
    [story3_1TrollSpriteBMDeadGreen release];
    [story3_1TrollSpriteBMDeadGrey release];
    [story3_1TrollSpriteBMDeadPurple release];
    [story3_1TrollSpriteBRDeadGreen release];
    [story3_1TrollSpriteBRDeadGrey release];
    [story3_1TrollSpriteBRDeadPurple release];
    [story3_1ScoreNumber0_1 release];
    [story3_1ScoreNumber0_2 release];
    [story3_1ScoreNumber0_3 release];
    [story3_1ScoreNumber0_4 release];
    [story3_1ScoreNumber1_1 release];
    [story3_1ScoreNumber1_2 release];
    [story3_1ScoreNumber1_3 release];
    [story3_1ScoreNumber1_4 release];
    [story3_1ScoreNumber2_1 release];
    [story3_1ScoreNumber2_2 release];
    [story3_1ScoreNumber2_3 release];
    [story3_1ScoreNumber2_4 release];
    [story3_1ScoreNumber3_1 release];
    [story3_1ScoreNumber3_2 release];
    [story3_1ScoreNumber3_3 release];
    [story3_1ScoreNumber3_4 release];
    [story3_1ScoreNumber4_1 release];
    [story3_1ScoreNumber4_2 release];
    [story3_1ScoreNumber4_3 release];
    [story3_1ScoreNumber4_4 release];
    [story3_1ScoreNumber5_1 release];
    [story3_1ScoreNumber5_2 release];
    [story3_1ScoreNumber5_3 release];
    [story3_1ScoreNumber5_4 release];
    [story3_1ScoreNumber6_1 release];
    [story3_1ScoreNumber6_2 release];
    [story3_1ScoreNumber6_3 release];
    [story3_1ScoreNumber6_4 release];
    [story3_1ScoreNumber7_1 release];
    [story3_1ScoreNumber7_2 release];
    [story3_1ScoreNumber7_3 release];
    [story3_1ScoreNumber7_4 release];
    [story3_1ScoreNumber8_1 release];
    [story3_1ScoreNumber8_2 release];
    [story3_1ScoreNumber8_3 release];
    [story3_1ScoreNumber8_4 release];
    [story3_1ScoreNumber9_1 release];
    [story3_1ScoreNumber9_2 release];
    [story3_1ScoreNumber9_3 release];
    [story3_1ScoreNumber9_4 release];
    [story3_1TrollsLeftNumber0_1 release];
    [story3_1TrollsLeftNumber0_2 release];
    [story3_1TrollsLeftNumber0_3 release];
    [story3_1TrollsLeftNumber1_1 release];
    [story3_1TrollsLeftNumber1_2 release];
    [story3_1TrollsLeftNumber1_3 release];
    [story3_1TrollsLeftNumber2_1 release];
    [story3_1TrollsLeftNumber2_2 release];
    [story3_1TrollsLeftNumber3_1 release];
    [story3_1TrollsLeftNumber3_2 release];
    [story3_1TrollsLeftNumber4_1 release];
    [story3_1TrollsLeftNumber4_2 release];
    [story3_1TrollsLeftNumber5_1 release];
    [story3_1TrollsLeftNumber5_2 release];
    [story3_1TrollsLeftNumber6_1 release];
    [story3_1TrollsLeftNumber6_2 release];
    [story3_1TrollsLeftNumber7_1 release];
    [story3_1TrollsLeftNumber7_2 release];
    [story3_1TrollsLeftNumber8_1 release];
    [story3_1TrollsLeftNumber8_2 release];
    [story3_1TrollsLeftNumber9_1 release];
    [story3_1TrollsLeftNumber9_2 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
