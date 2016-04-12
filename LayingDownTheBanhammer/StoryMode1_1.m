//
//  StoryMode1_1.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "StoryMode1_1.h"
#import "GameOver.h"
#import "GameResults.h"
#import "SimpleAudioEngine.h"

#pragma mark - StoryMode1_1

CCSprite *story1_1Background;
CCSprite *story1_1Intro3;
CCSprite *story1_1Intro2;
CCSprite *story1_1Intro1;
CCSprite *story1_1Intro0;

CCLayer *story1_1StatsLayer;
CCLayer *story1_1SpriteFrontLayer;
CCLayer *story1_1SpriteMidLayer;
CCLayer *story1_1SpriteBackLayer;

CCMenu *story1_1DialogueMenu;

CCSprite *story1_1CharacterSprite;
CCSprite *story1_1CharacterName;
CCMenuItemImage *story1_1DialogueOne;
CCMenuItemImage *story1_1DialogueTwo;
CCMenuItemImage *story1_1DialogueThree;
CCMenuItemImage *story1_1DialogueFour;
CCMenuItemImage *story1_1DialogueFive;

CCMenu *story1_1ScoreMenu;
CCMenu *story1_1LivesMenu;
CCMenu *story1_1TrollsLeftMenu;

CCMenu *story1_1SpriteTopLeftMenu;
CCMenu *story1_1SpriteTopMidMenu;
CCMenu *story1_1SpriteTopRightMenu;
CCMenu *story1_1SpriteMidLeftMenu;
CCMenu *story1_1SpriteMidMidMenu;
CCMenu *story1_1SpriteMidRightMenu;
CCMenu *story1_1SpriteBotLeftMenu;
CCMenu *story1_1SpriteBotMidMenu;
CCMenu *story1_1SpriteBotRightMenu;

CCMenuItemImage *story1_1ScoreText;
CCMenuItemSprite *story1_1ScoreSpriteDigitOne;
CCMenuItemSprite *story1_1ScoreSpriteDigitTwo;
CCMenuItemSprite *story1_1ScoreSpriteDigitThree;
CCMenuItemSprite *story1_1ScoreSpriteDigitFour;

CCMenuItemImage *story1_1LivesText;
CCMenuItemSprite *story1_1LivesSpriteOne;
CCMenuItemSprite *story1_1LivesSpriteTwo;
CCMenuItemSprite *story1_1LivesSpriteThree;

CCMenuItemImage *story1_1TrollsLeftText;
CCMenuItemSprite *story1_1TrollsLeftSpriteDigitOne;
CCMenuItemSprite *story1_1TrollsLeftSpriteDigitTwo;
CCMenuItemSprite *story1_1TrollsLeftSpriteDigitThree;

CCSprite *story1_1VolcanoFrontSpriteTopLeft;
CCMenuItemSprite *story1_1VolcanoBackSpriteTopLeft;
CCSprite *story1_1VolcanoFrontSpriteTopMid;
CCMenuItemSprite *story1_1VolcanoBackSpriteTopMid;
CCSprite *story1_1VolcanoFrontSpriteTopRight;
CCMenuItemSprite *story1_1VolcanoBackSpriteTopRight;
CCSprite *story1_1VolcanoFrontSpriteMidLeft;
CCMenuItemSprite *story1_1VolcanoBackSpriteMidLeft;
CCSprite *story1_1VolcanoFrontSpriteMidMid;
CCMenuItemSprite *story1_1VolcanoBackSpriteMidMid;
CCSprite *story1_1VolcanoFrontSpriteMidRight;
CCMenuItemSprite *story1_1VolcanoBackSpriteMidRight;
CCSprite *story1_1VolcanoFrontSpriteBotLeft;
CCMenuItemSprite *story1_1VolcanoBackSpriteBotLeft;
CCSprite *story1_1VolcanoFrontSpriteBotMid;
CCMenuItemSprite *story1_1VolcanoBackSpriteBotMid;
CCSprite *story1_1VolcanoFrontSpriteBotRight;
CCMenuItemSprite *story1_1VolcanoBackSpriteBotRight;

CCMenu *story1_1VolcanoMenu;

int story1_1TrollTLColour = -1;
int story1_1TrollTMColour = -1;
int story1_1TrollTRColour = -1;
int story1_1TrollMLColour = -1;
int story1_1TrollMMColour = -1;
int story1_1TrollMRColour = -1;
int story1_1TrollBLColour = -1;
int story1_1TrollBMColour = -1;
int story1_1TrollBRColour = -1;

CCMenuItemSprite *story1_1TrollSpriteTopLeft;
CCMenuItemSprite *story1_1TrollSpriteTopMid;
CCMenuItemSprite *story1_1TrollSpriteTopRight;
CCMenuItemSprite *story1_1TrollSpriteMidLeft;
CCMenuItemSprite *story1_1TrollSpriteMidMid;
CCMenuItemSprite *story1_1TrollSpriteMidRight;
CCMenuItemSprite *story1_1TrollSpriteBotLeft;
CCMenuItemSprite *story1_1TrollSpriteBotMid;
CCMenuItemSprite *story1_1TrollSpriteBotRight;

CCSprite *story1_1TrollSpriteTLGreen;
CCSprite *story1_1TrollSpriteTLGrey;
CCSprite *story1_1TrollSpriteTLPurple;
CCSprite *story1_1TrollSpriteTMGreen;
CCSprite *story1_1TrollSpriteTMGrey;
CCSprite *story1_1TrollSpriteTMPurple;
CCSprite *story1_1TrollSpriteTRGreen;
CCSprite *story1_1TrollSpriteTRGrey;
CCSprite *story1_1TrollSpriteTRPurple;
CCSprite *story1_1TrollSpriteMLGreen;
CCSprite *story1_1TrollSpriteMLGrey;
CCSprite *story1_1TrollSpriteMLPurple;
CCSprite *story1_1TrollSpriteMMGreen;
CCSprite *story1_1TrollSpriteMMGrey;
CCSprite *story1_1TrollSpriteMMPurple;
CCSprite *story1_1TrollSpriteMRGreen;
CCSprite *story1_1TrollSpriteMRGrey;
CCSprite *story1_1TrollSpriteMRPurple;
CCSprite *story1_1TrollSpriteBLGreen;
CCSprite *story1_1TrollSpriteBLGrey;
CCSprite *story1_1TrollSpriteBLPurple;
CCSprite *story1_1TrollSpriteBMGreen;
CCSprite *story1_1TrollSpriteBMGrey;
CCSprite *story1_1TrollSpriteBMPurple;
CCSprite *story1_1TrollSpriteBRGreen;
CCSprite *story1_1TrollSpriteBRGrey;
CCSprite *story1_1TrollSpriteBRPurple;

CCSprite *story1_1TrollSpriteTLDeadGreen;
CCSprite *story1_1TrollSpriteTLDeadGrey;
CCSprite *story1_1TrollSpriteTLDeadPurple;
CCSprite *story1_1TrollSpriteTMDeadGreen;
CCSprite *story1_1TrollSpriteTMDeadGrey;
CCSprite *story1_1TrollSpriteTMDeadPurple;
CCSprite *story1_1TrollSpriteTRDeadGreen;
CCSprite *story1_1TrollSpriteTRDeadGrey;
CCSprite *story1_1TrollSpriteTRDeadPurple;
CCSprite *story1_1TrollSpriteMLDeadGreen;
CCSprite *story1_1TrollSpriteMLDeadGrey;
CCSprite *story1_1TrollSpriteMLDeadPurple;
CCSprite *story1_1TrollSpriteMMDeadGreen;
CCSprite *story1_1TrollSpriteMMDeadGrey;
CCSprite *story1_1TrollSpriteMMDeadPurple;
CCSprite *story1_1TrollSpriteMRDeadGreen;
CCSprite *story1_1TrollSpriteMRDeadGrey;
CCSprite *story1_1TrollSpriteMRDeadPurple;
CCSprite *story1_1TrollSpriteBLDeadGreen;
CCSprite *story1_1TrollSpriteBLDeadGrey;
CCSprite *story1_1TrollSpriteBLDeadPurple;
CCSprite *story1_1TrollSpriteBMDeadGreen;
CCSprite *story1_1TrollSpriteBMDeadGrey;
CCSprite *story1_1TrollSpriteBMDeadPurple;
CCSprite *story1_1TrollSpriteBRDeadGreen;
CCSprite *story1_1TrollSpriteBRDeadGrey;
CCSprite *story1_1TrollSpriteBRDeadPurple;

CCSprite *story1_1ScoreNumber0_1;
CCSprite *story1_1ScoreNumber0_2;
CCSprite *story1_1ScoreNumber0_3;
CCSprite *story1_1ScoreNumber0_4;
CCSprite *story1_1ScoreNumber1_1;
CCSprite *story1_1ScoreNumber1_2;
CCSprite *story1_1ScoreNumber1_3;
CCSprite *story1_1ScoreNumber1_4;
CCSprite *story1_1ScoreNumber2_1;
CCSprite *story1_1ScoreNumber2_2;
CCSprite *story1_1ScoreNumber2_3;
CCSprite *story1_1ScoreNumber2_4;
CCSprite *story1_1ScoreNumber3_1;
CCSprite *story1_1ScoreNumber3_2;
CCSprite *story1_1ScoreNumber3_3;
CCSprite *story1_1ScoreNumber3_4;
CCSprite *story1_1ScoreNumber4_1;
CCSprite *story1_1ScoreNumber4_2;
CCSprite *story1_1ScoreNumber4_3;
CCSprite *story1_1ScoreNumber4_4;
CCSprite *story1_1ScoreNumber5_1;
CCSprite *story1_1ScoreNumber5_2;
CCSprite *story1_1ScoreNumber5_3;
CCSprite *story1_1ScoreNumber5_4;
CCSprite *story1_1ScoreNumber6_1;
CCSprite *story1_1ScoreNumber6_2;
CCSprite *story1_1ScoreNumber6_3;
CCSprite *story1_1ScoreNumber6_4;
CCSprite *story1_1ScoreNumber7_1;
CCSprite *story1_1ScoreNumber7_2;
CCSprite *story1_1ScoreNumber7_3;
CCSprite *story1_1ScoreNumber7_4;
CCSprite *story1_1ScoreNumber8_1;
CCSprite *story1_1ScoreNumber8_2;
CCSprite *story1_1ScoreNumber8_3;
CCSprite *story1_1ScoreNumber8_4;
CCSprite *story1_1ScoreNumber9_1;
CCSprite *story1_1ScoreNumber9_2;
CCSprite *story1_1ScoreNumber9_3;
CCSprite *story1_1ScoreNumber9_4;

CCSprite *story1_1TrollsLeftNumber0_1;
CCSprite *story1_1TrollsLeftNumber0_2;
CCSprite *story1_1TrollsLeftNumber0_3;
CCSprite *story1_1TrollsLeftNumber1_1;
CCSprite *story1_1TrollsLeftNumber1_2;
CCSprite *story1_1TrollsLeftNumber2_1;
CCSprite *story1_1TrollsLeftNumber2_2;
CCSprite *story1_1TrollsLeftNumber3_1;
CCSprite *story1_1TrollsLeftNumber3_2;
CCSprite *story1_1TrollsLeftNumber4_1;
CCSprite *story1_1TrollsLeftNumber4_2;
CCSprite *story1_1TrollsLeftNumber5_1;
CCSprite *story1_1TrollsLeftNumber5_2;
CCSprite *story1_1TrollsLeftNumber6_1;
CCSprite *story1_1TrollsLeftNumber7_1;
CCSprite *story1_1TrollsLeftNumber8_1;
CCSprite *story1_1TrollsLeftNumber9_1;

CCSprite *story1_1TrollTopLeftChat;
CCSprite *story1_1TrollTopMidChat;
CCSprite *story1_1TrollTopRightChat;
CCSprite *story1_1TrollMidLeftChat;
CCSprite *story1_1TrollMidMidChat;
CCSprite *story1_1TrollMidRightChat;
CCSprite *story1_1TrollBotLeftChat;
CCSprite *story1_1TrollBotMidChat;
CCSprite *story1_1TrollBotRightChat;

CCSprite *story1_1TapToContinue;

CCSprite *story1_1TimeUpSprite;
BOOL story1_1TimeUpDrawn = FALSE;

CCSprite *story1_1AllTrollsSprite;
BOOL story1_1AllTrollsDrawn = FALSE;

int story1_1CurrentScore = 0;
int story1_1PrevScore = 0;
int story1_1ScoreInt = 0;
int story1_1LivesRemaining = 3;
int story1_1TrollsRemaining = 50;
int story1_1TrollsRemInt = 0;
int story1_1TrollsPrevRem = 50;

float story1_1TrollRespawnInterval = 0.0f;
float story1_1TrollFadeOutCountup = 5.5f;

float story1_1TrollTLResetTimer = 0.5f;
float story1_1TrollTMResetTimer = 0.8f;
float story1_1TrollTRResetTimer = 0.2f;
float story1_1TrollMLResetTimer = 0.4f;
float story1_1TrollMMResetTimer = 0.1f;
float story1_1TrollMRResetTimer = 0.9f;
float story1_1TrollBLResetTimer = 0.3f;
float story1_1TrollBMResetTimer = 0.7f;
float story1_1TrollBRResetTimer = 0.0f;

float story1_1TrollTLTimeInPlay = 0.0f;
float story1_1TrollTMTimeInPlay = 0.0f;
float story1_1TrollTRTimeInPlay = 0.0f;
float story1_1TrollMLTimeInPlay = 0.0f;
float story1_1TrollMMTimeInPlay = 0.0f;
float story1_1TrollMRTimeInPlay = 0.0f;
float story1_1TrollBLTimeInPlay = 0.0f;
float story1_1TrollBMTimeInPlay = 0.0f;
float story1_1TrollBRTimeInPlay = 0.0f;

float story1_1TrollTLFadingOutTimer = 0.0f;
float story1_1TrollTMFadingOutTimer = 0.0f;
float story1_1TrollTRFadingOutTimer = 0.0f;
float story1_1TrollMLFadingOutTimer = 0.0f;
float story1_1TrollMMFadingOutTimer = 0.0f;
float story1_1TrollMRFadingOutTimer = 0.0f;
float story1_1TrollBLFadingOutTimer = 0.0f;
float story1_1TrollBMFadingOutTimer = 0.0f;
float story1_1TrollBRFadingOutTimer = 0.0f;

BOOL story1_1TrollTLTouched = FALSE;
BOOL story1_1TrollTMTouched = FALSE;
BOOL story1_1TrollTRTouched = FALSE;
BOOL story1_1TrollMLTouched = FALSE;
BOOL story1_1TrollMMTouched = FALSE;
BOOL story1_1TrollMRTouched = FALSE;
BOOL story1_1TrollBLTouched = FALSE;
BOOL story1_1TrollBMTouched = FALSE;
BOOL story1_1TrollBRTouched = FALSE;

BOOL story1_1TrollTLInPlay = FALSE;
BOOL story1_1TrollTMInPlay = FALSE;
BOOL story1_1TrollTRInPlay = FALSE;
BOOL story1_1TrollMLInPlay = FALSE;
BOOL story1_1TrollMMInPlay = FALSE;
BOOL story1_1TrollMRInPlay = FALSE;
BOOL story1_1TrollBLInPlay = FALSE;
BOOL story1_1TrollBMInPlay = FALSE;
BOOL story1_1TrollBRInPlay = FALSE;

BOOL story1_1StartTrollTLDeathAnim = FALSE;
BOOL story1_1StartTrollTMDeathAnim = FALSE;
BOOL story1_1StartTrollTRDeathAnim = FALSE;
BOOL story1_1StartTrollMLDeathAnim = FALSE;
BOOL story1_1StartTrollMMDeathAnim = FALSE;
BOOL story1_1StartTrollMRDeathAnim = FALSE;
BOOL story1_1StartTrollBLDeathAnim = FALSE;
BOOL story1_1StartTrollBMDeathAnim = FALSE;
BOOL story1_1StartTrollBRDeathAnim = FALSE;

BOOL story1_1StartTrollTLMissed = FALSE;
BOOL story1_1StartTrollTMMissed = FALSE;
BOOL story1_1StartTrollTRMissed = FALSE;
BOOL story1_1StartTrollMLMissed = FALSE;
BOOL story1_1StartTrollMMMissed = FALSE;
BOOL story1_1StartTrollMRMissed = FALSE;
BOOL story1_1StartTrollBLMissed = FALSE;
BOOL story1_1StartTrollBMMissed = FALSE;
BOOL story1_1StartTrollBRMissed = FALSE;

BOOL story1_1StartRound = FALSE;
BOOL story1_1DialogueOneTouched = FALSE;
BOOL story1_1DialogueTwoTouched = FALSE;
BOOL story1_1DialogueThreeTouched = FALSE;
BOOL story1_1DialogueFourTouched = FALSE;
BOOL story1_1DialogueFiveTouched = FALSE;

ccTime story1_1GameTime = 0.0f;
int story1_1Tick = 0;
BOOL story1_1IntroFinished = FALSE;
BOOL story1_1AllChange = FALSE;

@implementation StoryMode1_1

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	StoryMode1_1 *layer = [StoryMode1_1 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        story1_1StatsLayer = [CCLayer node];
        story1_1SpriteFrontLayer = [CCLayer node];
        story1_1SpriteMidLayer = [CCLayer node];
        story1_1SpriteBackLayer = [CCLayer node];
        
        story1_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        story1_1Background.position = ccp(240, 160);
        
        [self addChild: story1_1Background];
        [self addChild: story1_1StatsLayer];
        [self addChild: story1_1SpriteBackLayer];
        [self addChild: story1_1SpriteFrontLayer];
        [self addChild: story1_1SpriteMidLayer];
        
        [self loadStory1_1Sprites];
        [self loadStory1_1Text];
        [self loadStory1_1Dialogue];
    }
    
    story1_1TrollTLColour = -1;
    story1_1TrollTMColour = -1;
    story1_1TrollTRColour = -1;
    story1_1TrollMLColour = -1;
    story1_1TrollMMColour = -1;
    story1_1TrollMRColour = -1;
    story1_1TrollBLColour = -1;
    story1_1TrollBMColour = -1;
    story1_1TrollBRColour = -1;
    story1_1TimeUpDrawn = FALSE;
    story1_1AllTrollsDrawn = FALSE;
    story1_1CurrentScore = 0;
    story1_1PrevScore = 0;
    story1_1ScoreInt = 0;
    story1_1LivesRemaining = 3;
    story1_1TrollsRemaining = 50;
    story1_1TrollsRemInt = 0;
    story1_1TrollsPrevRem = 50;
    story1_1TrollRespawnInterval = 0.0f;
    story1_1TrollFadeOutCountup = 5.5f;
    story1_1TrollTLResetTimer = 0.5f;
    story1_1TrollTMResetTimer = 0.8f;
    story1_1TrollTRResetTimer = 0.2f;
    story1_1TrollMLResetTimer = 0.4f;
    story1_1TrollMMResetTimer = 0.1f;
    story1_1TrollMRResetTimer = 0.9f;
    story1_1TrollBLResetTimer = 0.3f;
    story1_1TrollBMResetTimer = 0.7f;
    story1_1TrollBRResetTimer = 0.0f;
    story1_1TrollTLTimeInPlay = 0.0f;
    story1_1TrollTMTimeInPlay = 0.0f;
    story1_1TrollTRTimeInPlay = 0.0f;
    story1_1TrollMLTimeInPlay = 0.0f;
    story1_1TrollMMTimeInPlay = 0.0f;
    story1_1TrollMRTimeInPlay = 0.0f;
    story1_1TrollBLTimeInPlay = 0.0f;
    story1_1TrollBMTimeInPlay = 0.0f;
    story1_1TrollBRTimeInPlay = 0.0f;
    story1_1TrollTLFadingOutTimer = 0.0f;
    story1_1TrollTMFadingOutTimer = 0.0f;
    story1_1TrollTRFadingOutTimer = 0.0f;
    story1_1TrollMLFadingOutTimer = 0.0f;
    story1_1TrollMMFadingOutTimer = 0.0f;
    story1_1TrollMRFadingOutTimer = 0.0f;
    story1_1TrollBLFadingOutTimer = 0.0f;
    story1_1TrollBMFadingOutTimer = 0.0f;
    story1_1TrollBRFadingOutTimer = 0.0f;
    story1_1TrollTLTouched = FALSE;
    story1_1TrollTMTouched = FALSE;
    story1_1TrollTRTouched = FALSE;
    story1_1TrollMLTouched = FALSE;
    story1_1TrollMMTouched = FALSE;
    story1_1TrollMRTouched = FALSE;
    story1_1TrollBLTouched = FALSE;
    story1_1TrollBMTouched = FALSE;
    story1_1TrollBRTouched = FALSE;
    story1_1TrollTLInPlay = FALSE;
    story1_1TrollTMInPlay = FALSE;
    story1_1TrollTRInPlay = FALSE;
    story1_1TrollMLInPlay = FALSE;
    story1_1TrollMMInPlay = FALSE;
    story1_1TrollMRInPlay = FALSE;
    story1_1TrollBLInPlay = FALSE;
    story1_1TrollBMInPlay = FALSE;
    story1_1TrollBRInPlay = FALSE;
    story1_1StartTrollTLDeathAnim = FALSE;
    story1_1StartTrollTMDeathAnim = FALSE;
    story1_1StartTrollTRDeathAnim = FALSE;
    story1_1StartTrollMLDeathAnim = FALSE;
    story1_1StartTrollMMDeathAnim = FALSE;
    story1_1StartTrollMRDeathAnim = FALSE;
    story1_1StartTrollBLDeathAnim = FALSE;
    story1_1StartTrollBMDeathAnim = FALSE;
    story1_1StartTrollBRDeathAnim = FALSE;
    story1_1StartTrollTLMissed = FALSE;
    story1_1StartTrollTMMissed = FALSE;
    story1_1StartTrollTRMissed = FALSE;
    story1_1StartTrollMLMissed = FALSE;
    story1_1StartTrollMMMissed = FALSE;
    story1_1StartTrollMRMissed = FALSE;
    story1_1StartTrollBLMissed = FALSE;
    story1_1StartTrollBMMissed = FALSE;
    story1_1StartTrollBRMissed = FALSE;
    story1_1StartRound = FALSE;
    story1_1DialogueOneTouched = FALSE;
    story1_1DialogueTwoTouched = FALSE;
    story1_1DialogueThreeTouched = FALSE;
    story1_1DialogueFourTouched = FALSE;
    story1_1DialogueFiveTouched = FALSE;
    story1_1Tick = 0;
    story1_1IntroFinished = FALSE;
    story1_1AllChange = FALSE;
    story1_1GameTime = 0.0f;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!story1_1StartRound){
        if(story1_1DialogueOneTouched){
            if(story1_1DialogueTwo.position.y < -120){
                story1_1DialogueTwo.position = ccp(story1_1DialogueTwo.position.x, story1_1DialogueTwo.position.y + 4);
            }
            else{
                story1_1DialogueOne.position = ccp(-1000, -1000);
                story1_1DialogueOneTouched = FALSE;
            }
        }
        else if(story1_1DialogueTwoTouched){
            if(story1_1DialogueThree.position.y < -120){
                story1_1DialogueThree.position = ccp(story1_1DialogueThree.position.x, story1_1DialogueThree.position.y + 4);
            }
            else{
                story1_1DialogueTwo.position = ccp(-1000, -1000);
                story1_1DialogueTwoTouched = FALSE;
            }
        }
        else if(story1_1DialogueThreeTouched){
            if(story1_1DialogueFour.position.y < -120){
                story1_1DialogueFour.position = ccp(story1_1DialogueFour.position.x, story1_1DialogueFour.position.y + 4);
            }
            else{
                story1_1DialogueThree.position = ccp(-1000, -1000);
                story1_1DialogueThreeTouched = FALSE;
            }
        }
        else if(story1_1DialogueFourTouched){
            if(story1_1DialogueFive.position.y < -120){
                story1_1DialogueFive.position = ccp(story1_1DialogueFive.position.x, story1_1DialogueFive.position.y + 4);
            }
            else{
                story1_1DialogueFour.position = ccp(-1000, -1000);
                story1_1DialogueFourTouched = FALSE;
            }
        }
        else if(story1_1DialogueFiveTouched){
            story1_1DialogueFive.position = ccp(-1000, -1000);
            story1_1CharacterSprite.position = ccp(-1000, -1000);
            story1_1CharacterName.position = ccp(-1000, -1000);
            story1_1TapToContinue.position = ccp(-1000, -1000);
            story1_1DialogueFiveTouched = FALSE;
            story1_1StartRound = TRUE;
        }
    }
    else{
        story1_1GameTime += dt;
        
        if (story1_1GameTime < 5 && story1_1IntroFinished == NO){
            if(story1_1GameTime > 0 && story1_1GameTime < 1.5){
                if(story1_1Tick == 0){
                    story1_1Intro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                    story1_1Intro3.position = ccp(240, 160);
                    [self addChild: story1_1Intro3];
                    story1_1Tick = 1;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
                }
            }
            else if(story1_1GameTime > 1.5 && story1_1GameTime < 2.5){
                if(story1_1Tick == 1) {
                    story1_1Intro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                    story1_1Intro2.position = ccp(240, 160);
                    [self addChild: story1_1Intro2];
                    story1_1Tick = 2;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
                }
                else if(story1_1Tick == 2){
                    [self removeChild: story1_1Intro3 cleanup:YES];
                    story1_1Tick = 3;
                }
            }
            else if(story1_1GameTime > 2.5 && story1_1GameTime < 3.5){
                if(story1_1Tick == 3){
                    story1_1Intro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                    story1_1Intro1.position = ccp(240, 160);
                    [self addChild: story1_1Intro1];
                    story1_1Tick = 4;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
                }
                else if(story1_1Tick == 4) {
                    [self removeChild: story1_1Intro2 cleanup:YES];
                    story1_1Tick = 5;
                }
            }
            else if(story1_1GameTime > 3.5 && story1_1GameTime < 4.5){
                if(story1_1Tick == 5){
                    story1_1Intro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                    story1_1Intro0.position = ccp(240, 160);
                    [self addChild: story1_1Intro0];
                    story1_1Tick = 6;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
                }
                else if(story1_1Tick == 6) {
                    [self removeChild: story1_1Intro1 cleanup:YES];
                    story1_1Tick = 7;
                }
            }
            else{
                if(story1_1Tick == 7){
                    story1_1IntroFinished = YES;
                    [self removeChild: story1_1Intro0 cleanup:YES];
                    story1_1Tick = 8;
                    story1_1AllChange = TRUE;
                }
            }
        }
        else if(story1_1Tick == 8){
            if(story1_1AllChange){
                [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_story_1.mp3"];
                [self drawStory1_1Elements];
                story1_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(story1_1TrollTLInPlay){
                if(story1_1TrollTLTimeInPlay >= 5.5f){
                    story1_1StartTrollTLMissed = TRUE;
                    story1_1TrollTopLeftChat.position = ccp(-1000, -1000);
                    story1_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollTLTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollTLResetTimer -= dt;
                if(story1_1TrollTLResetTimer <= 0){
                    story1_1SpriteTopLeftMenu.position = ccp(80, 250);
                    story1_1TrollTopLeftChat.position = ccp(112, 260);
                    story1_1TrollTLInPlay = TRUE;
                    story1_1TrollTLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollTMInPlay){
                if(story1_1TrollTMTimeInPlay >= 5.5f){
                    story1_1StartTrollTMMissed = TRUE;
                    story1_1TrollTopMidChat.position = ccp(-1000, -1000);
                    story1_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollTMTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollTMResetTimer -= dt;
                if(story1_1TrollTMResetTimer <= 0){
                    story1_1SpriteTopMidMenu.position = ccp(240, 250);
                    story1_1TrollTopMidChat.position = ccp(272, 260);
                    story1_1TrollTMInPlay = TRUE;
                    story1_1TrollTMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollTRInPlay){
                if(story1_1TrollTRTimeInPlay >= 5.5f){
                    story1_1StartTrollTRMissed = TRUE;
                    story1_1TrollTopRightChat.position = ccp(-1000, -1000);
                    story1_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollTRTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollTRResetTimer -= dt;
                if(story1_1TrollTRResetTimer <= 0){
                    story1_1SpriteTopRightMenu.position = ccp(400, 250);
                    story1_1TrollTopRightChat.position = ccp(432, 260);
                    story1_1TrollTRInPlay = TRUE;
                    story1_1TrollTRTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollMLInPlay){
                if(story1_1TrollMLTimeInPlay >= 5.5f){
                    story1_1StartTrollMLMissed = TRUE;
                    story1_1TrollMidLeftChat.position = ccp(-1000, -1000);
                    story1_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollMLTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollMLResetTimer -= dt;
                if(story1_1TrollMLResetTimer <= 0){
                    story1_1SpriteMidLeftMenu.position = ccp(80, 170);
                    story1_1TrollMidLeftChat.position = ccp(112, 180);
                    story1_1TrollMLInPlay = TRUE;
                    story1_1TrollMLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollMMInPlay){
                if(story1_1TrollMMTimeInPlay >= 5.5f){
                    story1_1StartTrollMMMissed = TRUE;
                    story1_1TrollMidMidChat.position = ccp(-1000, -1000);
                    story1_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollMMTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollMMResetTimer -= dt;
                if(story1_1TrollMMResetTimer <= 0){
                    story1_1SpriteMidMidMenu.position = ccp(240, 170);
                    story1_1TrollMidMidChat.position = ccp(272, 180);
                    story1_1TrollMMInPlay = TRUE;
                    story1_1TrollMMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollMRInPlay){
                if(story1_1TrollMRTimeInPlay >= 5.5f){
                    story1_1StartTrollMRMissed = TRUE;
                    story1_1TrollMidRightChat.position = ccp(-1000, -1000);
                    story1_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    
                }
                story1_1TrollMRTimeInPlay += dt;
            }
            else{
                story1_1TrollMRResetTimer -= dt;
                if(story1_1TrollMRResetTimer <= 0){
                    story1_1SpriteMidRightMenu.position = ccp(400, 170);
                    story1_1TrollMidRightChat.position = ccp(432, 180);
                    story1_1TrollMRInPlay = TRUE;
                    story1_1TrollMRTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollBLInPlay){
                if(story1_1TrollBLTimeInPlay >= 5.5f){
                    story1_1StartTrollBLMissed = TRUE;
                    story1_1TrollBotLeftChat.position = ccp(-1000, -1000);
                    story1_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollBLTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollBLResetTimer -= dt;
                if(story1_1TrollBLResetTimer <= 0){
                    story1_1SpriteBotLeftMenu.position = ccp(80, 90);
                    story1_1TrollBotLeftChat.position = ccp(112, 100);
                    story1_1TrollBLInPlay = TRUE;
                    story1_1TrollBLTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollBMInPlay){
                if(story1_1TrollBMTimeInPlay >= 5.5f){
                    story1_1StartTrollBMMissed = TRUE;
                    story1_1TrollBotMidChat.position = ccp(-1000, -1000);
                    story1_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollBMTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollBMResetTimer -= dt;
                if(story1_1TrollBMResetTimer <= 0){
                    story1_1SpriteBotMidMenu.position = ccp(240, 90);
                    story1_1TrollBotMidChat.position = ccp(272, 100);
                    story1_1TrollBMInPlay = TRUE;
                    story1_1TrollBMTimeInPlay = 0.0f;
                }
            }
            
            if(story1_1TrollBRInPlay){
                if(story1_1TrollBRTimeInPlay >= 5.5f){
                    story1_1StartTrollBRMissed = TRUE;
                    story1_1TrollBotRightChat.position = ccp(-1000, -1000);
                    story1_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    story1_1TrollBRTimeInPlay += dt;
                }
            }
            else{
                story1_1TrollBRResetTimer -= dt;
                if(story1_1TrollBRResetTimer <= 0){
                    story1_1SpriteBotRightMenu.position = ccp(400, 90);
                    story1_1TrollBotRightChat.position = ccp(432, 100);
                    story1_1TrollBRInPlay = TRUE;
                    story1_1TrollBRTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(story1_1TrollTLTouched){
                story1_1StartTrollTLDeathAnim = TRUE;
                story1_1TrollTLTouched = FALSE;
                if(story1_1TrollTLColour == 0){
                    [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLDeadGreen];
                }
                else if(story1_1TrollTLColour == 1){
                    [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLDeadGrey];
                }
                else if(story1_1TrollTLColour == 2){
                    [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLDeadPurple];
                }
                
                story1_1TrollTopLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteTopLeft runAction:actionFade1];
            }
            else if(story1_1TrollTMTouched){
                story1_1StartTrollTMDeathAnim = TRUE;
                story1_1TrollTMTouched = FALSE;
                if(story1_1TrollTMColour == 0){
                    [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMDeadGreen];
                }
                else if(story1_1TrollTMColour == 1){
                    [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMDeadGrey];
                }
                else if(story1_1TrollTMColour == 2){
                    [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMDeadPurple];
                }
                
                story1_1TrollTopMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteTopMid runAction:actionFade2];
            }
            else if(story1_1TrollTRTouched){
                story1_1StartTrollTRDeathAnim = TRUE;
                story1_1TrollTRTouched = FALSE;
                if(story1_1TrollTRColour == 0){
                    [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRDeadGreen];
                }
                else if(story1_1TrollTRColour == 1){
                    [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRDeadGrey];
                }
                else if(story1_1TrollTRColour == 2){
                    [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRDeadPurple];
                }
                
                story1_1TrollTopRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteTopRight runAction:actionFade3];
            }
            else if(story1_1TrollMLTouched){
                story1_1StartTrollMLDeathAnim = TRUE;
                story1_1TrollMLTouched = FALSE;
                if(story1_1TrollMLColour == 0){
                    [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLDeadGreen];
                }
                else if(story1_1TrollMLColour == 1){
                    [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLDeadGrey];
                }
                else if(story1_1TrollMLColour == 2){
                    [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLDeadPurple];
                }
                
                story1_1TrollMidLeftChat.position = ccp(-1000, -1000);
                
                id actionFade4 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteMidLeft runAction:actionFade4];
            }
            else if(story1_1TrollMMTouched){
                story1_1StartTrollMMDeathAnim = TRUE;
                story1_1TrollMMTouched = FALSE;
                if(story1_1TrollMMColour == 0){
                    [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMDeadGreen];
                }
                else if(story1_1TrollMMColour == 1){
                    [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMDeadGrey];
                }
                else if(story1_1TrollMMColour == 2){
                    [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMDeadPurple];
                }
                
                story1_1TrollMidMidChat.position = ccp(-1000, -1000);
                
                id actionFade5 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteMidMid runAction:actionFade5];
            }
            else if(story1_1TrollMRTouched){
                story1_1StartTrollMRDeathAnim = TRUE;
                story1_1TrollMRTouched = FALSE;
                if(story1_1TrollMRColour == 0){
                    [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRDeadGreen];
                }
                else if(story1_1TrollMRColour == 1){
                    [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRDeadGrey];
                }
                else if(story1_1TrollMRColour == 2){
                    [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRDeadPurple];
                }
                
                story1_1TrollMidRightChat.position = ccp(-1000, -1000);
                
                id actionFade6 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteMidRight runAction:actionFade6];
            }
            else if(story1_1TrollBLTouched){
                story1_1StartTrollBLDeathAnim = TRUE;
                story1_1TrollBLTouched = FALSE;
                if(story1_1TrollBLColour == 0){
                    [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLDeadGreen];
                }
                else if(story1_1TrollBLColour == 1){
                    [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLDeadGrey];
                }
                else if(story1_1TrollBLColour == 2){
                    [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLDeadPurple];
                }
                
                story1_1TrollBotLeftChat.position = ccp(-1000, -1000);
                
                id actionFade7 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteBotLeft runAction:actionFade7];
            }
            else if(story1_1TrollBMTouched){
                story1_1StartTrollBMDeathAnim = TRUE;
                story1_1TrollBMTouched = FALSE;
                if(story1_1TrollBMColour == 0){
                    [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMDeadGreen];
                }
                else if(story1_1TrollBMColour == 1){
                    [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMDeadGrey];
                }
                else if(story1_1TrollBMColour == 2){
                    [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMDeadPurple];
                }
                
                story1_1TrollBotMidChat.position = ccp(-1000, -1000);
                
                id actionFade8 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteBotMid runAction:actionFade8];
            }
            else if(story1_1TrollBRTouched){
                story1_1StartTrollBRDeathAnim = TRUE;
                story1_1TrollBRTouched = FALSE;
                if(story1_1TrollBRColour == 0){
                    [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRDeadGreen];
                }
                else if(story1_1TrollBRColour == 1){
                    [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRDeadGrey];
                }
                else if(story1_1TrollBRColour == 2){
                    [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRDeadPurple];
                }
                
                story1_1TrollBotRightChat.position = ccp(-1000, -1000);
                
                id actionFade9 = [CCFadeOut actionWithDuration:0.25f];
                [story1_1TrollSpriteBotRight runAction:actionFade9];
            }
            
            //TROLL DEATH ANIMATIONS
            if(story1_1StartTrollTLDeathAnim){
                if(story1_1TrollTLFadingOutTimer < 0.25f){
                    story1_1TrollTLFadingOutTimer += dt;
                    story1_1SpriteTopLeftMenu.position = ccp(story1_1SpriteTopLeftMenu.position.x, story1_1SpriteTopLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollTLDeathAnim = FALSE;
                    story1_1TrollTLTimeInPlay = 0.0f;
                    story1_1TrollTLFadingOutTimer = 0.0f;
                    story1_1TrollTLInPlay = FALSE;
                    story1_1TrollTLResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteTopLeft runAction:actionReset1];
                    
                    if(story1_1TrollTLColour == 0){
                        [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLGreen];
                    }
                    else if(story1_1TrollTLColour == 1){
                        [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLGrey];
                    }
                    else if(story1_1TrollTLColour == 2){
                        [story1_1TrollSpriteTopLeft setNormalImage:story1_1TrollSpriteTLPurple];
                    }
                    
                    story1_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollTMDeathAnim){
                if(story1_1TrollTMFadingOutTimer < 0.25f){
                    story1_1TrollTMFadingOutTimer += dt;
                    story1_1SpriteTopMidMenu.position = ccp(story1_1SpriteTopMidMenu.position.x, story1_1SpriteTopMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollTMDeathAnim = FALSE;
                    story1_1TrollTMTimeInPlay = 0.0f;
                    story1_1TrollTMFadingOutTimer = 0.0f;
                    story1_1TrollTMInPlay = FALSE;
                    story1_1TrollTMResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteTopMid runAction:actionReset2];
                    
                    if(story1_1TrollTMColour == 0){
                        [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMGreen];
                    }
                    else if(story1_1TrollTMColour == 1){
                        [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMGrey];
                    }
                    else if(story1_1TrollTMColour == 2){
                        [story1_1TrollSpriteTopMid setNormalImage:story1_1TrollSpriteTMPurple];
                    }
                    
                    story1_1SpriteTopMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollTRDeathAnim){
                if(story1_1TrollTRFadingOutTimer < 0.25f){
                    story1_1TrollTRFadingOutTimer += dt;
                    story1_1SpriteTopRightMenu.position = ccp(story1_1SpriteTopRightMenu.position.x, story1_1SpriteTopRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollTRDeathAnim = FALSE;
                    story1_1TrollTRTimeInPlay = 0.0f;
                    story1_1TrollTRFadingOutTimer = 0.0f;
                    story1_1TrollTRInPlay = FALSE;
                    story1_1TrollTRResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteTopRight runAction:actionReset3];
                    
                    if(story1_1TrollTRColour == 0){
                        [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRGreen];
                    }
                    else if(story1_1TrollTRColour == 1){
                        [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRGrey];
                    }
                    else if(story1_1TrollTRColour == 2){
                        [story1_1TrollSpriteTopRight setNormalImage:story1_1TrollSpriteTRPurple];
                    }
                    
                    story1_1SpriteTopRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollMLDeathAnim){
                if(story1_1TrollMLFadingOutTimer < 0.25f){
                    story1_1TrollMLFadingOutTimer += dt;
                    story1_1SpriteMidLeftMenu.position = ccp(story1_1SpriteMidLeftMenu.position.x, story1_1SpriteMidLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollMLDeathAnim = FALSE;
                    story1_1TrollMLTimeInPlay = 0.0f;
                    story1_1TrollMLFadingOutTimer = 0.0f;
                    story1_1TrollMLInPlay = FALSE;
                    story1_1TrollMLResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset4 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteMidLeft runAction:actionReset4];
                    
                    if(story1_1TrollMLColour == 0){
                        [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLGreen];
                    }
                    else if(story1_1TrollMLColour == 1){
                        [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLGrey];
                    }
                    else if(story1_1TrollMLColour == 2){
                        [story1_1TrollSpriteMidLeft setNormalImage:story1_1TrollSpriteMLPurple];
                    }
                    
                    story1_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollMMDeathAnim){
                if(story1_1TrollMMFadingOutTimer < 0.25f){
                    story1_1TrollMMFadingOutTimer += dt;
                    story1_1SpriteMidMidMenu.position = ccp(story1_1SpriteMidMidMenu.position.x, story1_1SpriteMidMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollMMDeathAnim = FALSE;
                    story1_1TrollMMTimeInPlay = 0.0f;
                    story1_1TrollMMFadingOutTimer = 0.0f;
                    story1_1TrollMMInPlay = FALSE;
                    story1_1TrollMMResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset5 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteMidMid runAction:actionReset5];
                    
                    if(story1_1TrollMMColour == 0){
                        [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMGreen];
                    }
                    else if(story1_1TrollMMColour == 1){
                        [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMGrey];
                    }
                    else if(story1_1TrollMMColour == 2){
                        [story1_1TrollSpriteMidMid setNormalImage:story1_1TrollSpriteMMPurple];
                    }
                    
                    story1_1SpriteMidMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollMRDeathAnim){
                if(story1_1TrollMRFadingOutTimer < 0.25f){
                    story1_1TrollMRFadingOutTimer += dt;
                    story1_1SpriteMidRightMenu.position = ccp(story1_1SpriteMidRightMenu.position.x, story1_1SpriteMidRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollMRDeathAnim = FALSE;
                    story1_1TrollMRTimeInPlay = 0.0f;
                    story1_1TrollMRFadingOutTimer = 0.0f;
                    story1_1TrollMRInPlay = FALSE;
                    story1_1TrollMRResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset6 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteMidRight runAction:actionReset6];
                    
                    if(story1_1TrollMRColour == 0){
                        [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRGreen];
                    }
                    else if(story1_1TrollMRColour == 1){
                        [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRGrey];
                    }
                    else if(story1_1TrollMRColour == 2){
                        [story1_1TrollSpriteMidRight setNormalImage:story1_1TrollSpriteMRPurple];
                    }
                    
                    story1_1SpriteMidRightMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollBLDeathAnim){
                if(story1_1TrollBLFadingOutTimer < 0.25f){
                    story1_1TrollBLFadingOutTimer += dt;
                    story1_1SpriteBotLeftMenu.position = ccp(story1_1SpriteBotLeftMenu.position.x, story1_1SpriteBotLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollBLDeathAnim = FALSE;
                    story1_1TrollBLTimeInPlay = 0.0f;
                    story1_1TrollBLFadingOutTimer = 0.0f;
                    story1_1TrollBLInPlay = FALSE;
                    story1_1TrollBLResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset7 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteBotLeft runAction:actionReset7];
                    
                    if(story1_1TrollBLColour == 0){
                        [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLGreen];
                    }
                    else if(story1_1TrollBLColour == 1){
                        [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLGrey];
                    }
                    else if(story1_1TrollBLColour == 2){
                        [story1_1TrollSpriteBotLeft setNormalImage:story1_1TrollSpriteBLPurple];
                    }
                    
                    story1_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollBMDeathAnim){
                if(story1_1TrollBMFadingOutTimer < 0.25f){
                    story1_1TrollBMFadingOutTimer += dt;
                    story1_1SpriteBotMidMenu.position = ccp(story1_1SpriteBotMidMenu.position.x, story1_1SpriteBotMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollBMDeathAnim = FALSE;
                    story1_1TrollBMTimeInPlay = 0.0f;
                    story1_1TrollBMFadingOutTimer = 0.0f;
                    story1_1TrollBMInPlay = FALSE;
                    story1_1TrollBMResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset8 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteBotMid runAction:actionReset8];
                    
                    if(story1_1TrollBMColour == 0){
                        [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMGreen];
                    }
                    else if(story1_1TrollBMColour == 1){
                        [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMGrey];
                    }
                    else if(story1_1TrollBMColour == 2){
                        [story1_1TrollSpriteBotMid setNormalImage:story1_1TrollSpriteBMPurple];
                    }
                    
                    story1_1SpriteBotMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(story1_1StartTrollBRDeathAnim){
                if(story1_1TrollBRFadingOutTimer < 0.25f){
                    story1_1TrollBRFadingOutTimer += dt;
                    story1_1SpriteBotRightMenu.position = ccp(story1_1SpriteBotRightMenu.position.x, story1_1SpriteBotRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    story1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    story1_1StartTrollBRDeathAnim = FALSE;
                    story1_1TrollBRTimeInPlay = 0.0f;
                    story1_1TrollBRFadingOutTimer = 0.0f;
                    story1_1TrollBRInPlay = FALSE;
                    story1_1TrollBRResetTimer = story1_1TrollRespawnInterval;
                    
                    id actionReset9 = [CCFadeIn actionWithDuration:0.1f];
                    [story1_1TrollSpriteBotRight runAction:actionReset9];
                    
                    if(story1_1TrollBRColour == 0){
                        [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRGreen];
                    }
                    else if(story1_1TrollBRColour == 1){
                        [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRGrey];
                    }
                    else if(story1_1TrollBRColour == 2){
                        [story1_1TrollSpriteBotRight setNormalImage:story1_1TrollSpriteBRPurple];
                    }
                    
                    story1_1SpriteBotRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(story1_1StartTrollTLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollTLMissed = FALSE;
                story1_1TrollTLTimeInPlay = 0.0f;
                story1_1TrollTLInPlay = FALSE;
                story1_1TrollTLResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollTMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollTMMissed = FALSE;
                story1_1TrollTMTimeInPlay = 0.0f;
                story1_1TrollTMInPlay = FALSE;
                story1_1TrollTMResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollTRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollTRMissed = FALSE;
                story1_1TrollTRTimeInPlay = 0.0f;
                story1_1TrollTRInPlay = FALSE;
                story1_1TrollTRResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollMLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollMLMissed = FALSE;
                story1_1TrollMLTimeInPlay = 0.0f;
                story1_1TrollMLInPlay = FALSE;
                story1_1TrollMLResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollMMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollMMMissed = FALSE;
                story1_1TrollMMTimeInPlay = 0.0f;
                story1_1TrollMMInPlay = FALSE;
                story1_1TrollMMResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollMRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollMRMissed = FALSE;
                story1_1TrollMRTimeInPlay = 0.0f;
                story1_1TrollMRInPlay = FALSE;
                story1_1TrollMRResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollBLMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollBLMissed = FALSE;
                story1_1TrollBLTimeInPlay = 0.0f;
                story1_1TrollBLInPlay = FALSE;
                story1_1TrollBLResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollBMMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollBMMissed = FALSE;
                story1_1TrollBMTimeInPlay = 0.0f;
                story1_1TrollBMInPlay = FALSE;
                story1_1TrollBMResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            if(story1_1StartTrollBRMissed){
                int i = (arc4random() % (301)) + 200;
                story1_1TrollRespawnInterval = (float)i / 100.0f;
                story1_1StartTrollBRMissed = FALSE;
                story1_1TrollBRTimeInPlay = 0.0f;
                story1_1TrollBRInPlay = FALSE;
                story1_1TrollBRResetTimer = story1_1TrollRespawnInterval;
                story1_1LivesRemaining--;
                
                if(story1_1LivesRemaining == 2){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 1){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(story1_1LivesRemaining == 0){
                    story1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    story1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    story1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    story1_1Tick = 9;
                }
            }
            
            story1_1ScoreInt = story1_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(story1_1LivesRemaining >= 0) {
                if(story1_1CurrentScore != story1_1PrevScore){
                    if(story1_1CurrentScore >= 0 && story1_1CurrentScore < 10){
                        if(story1_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber0_4];
                        }
                        else if(story1_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber1_4];
                        }
                        else if(story1_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber2_4];
                        }
                        else if(story1_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber3_4];
                        }
                        else if(story1_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber4_4];
                        }
                        else if(story1_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber5_4];
                        }
                        else if(story1_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber6_4];
                        }
                        else if(story1_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber7_4];
                        }
                        else if(story1_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber8_4];
                        }
                        else if(story1_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber0_3];
                    }
                    
                    else if(story1_1CurrentScore >= 10 && story1_1CurrentScore <= 99){
                        int lSDS = story1_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber9_4];
                        }
                        
                        if(story1_1CurrentScore >= 10 && story1_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber1_3];
                        }
                        else if(story1_1CurrentScore >= 20 && story1_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber2_3];
                        }
                        else if(story1_1CurrentScore >= 30 && story1_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber3_3];
                        }
                        else if(story1_1CurrentScore >= 40 && story1_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber4_3];
                        }
                        else if(story1_1CurrentScore >= 50 && story1_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber5_3];
                        }
                        else if(story1_1CurrentScore >= 60 && story1_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber6_3];
                        }
                        else if(story1_1CurrentScore >= 70 && story1_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber7_3];
                        }
                        else if(story1_1CurrentScore >= 80 && story1_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber8_3];
                        }
                        else if(story1_1CurrentScore >= 90 && story1_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber0_1];
                    }
                    
                    else if(story1_1CurrentScore >= 100 && story1_1CurrentScore <= 999){
                        int story1_1Count = 0;
                        while(story1_1Count < 2){
                            int lSDSs = story1_1ScoreInt % 10;
                            if(story1_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber9_4];
                                }
                            }
                            else if(story1_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber9_3];
                                }
                            }
                            story1_1ScoreInt /= 10;
                            story1_1Count++;
                        }
                        
                        if(story1_1CurrentScore >= 100 && story1_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber1_2];
                        }
                        else if(story1_1CurrentScore >= 200 && story1_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber2_2];
                        }
                        else if(story1_1CurrentScore >= 300 && story1_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber3_2];
                        }
                        else if(story1_1CurrentScore >= 400 && story1_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber4_2];
                        }
                        else if(story1_1CurrentScore >= 500 && story1_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber5_2];
                        }
                        else if(story1_1CurrentScore >= 600 && story1_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber6_2];
                        }
                        else if(story1_1CurrentScore >= 700 && story1_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber7_2];
                        }
                        else if(story1_1CurrentScore >= 800 && story1_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber8_2];
                        }
                        else if(story1_1CurrentScore >= 900 && story1_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber0_1];
                    }
                    
                    else if(story1_1CurrentScore >= 1000 && story1_1CurrentScore <= 9999){
                        int story1_1Count = 0;
                        while(story1_1Count < 3){
                            int lSDSsS = story1_1ScoreInt % 10;
                            if(story1_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber9_4];
                                }
                            }
                            else if(story1_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber9_3];
                                }
                            }
                            else if(story1_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber9_2];
                                }
                            }
                            story1_1ScoreInt /= 10;
                            story1_1Count++;
                            
                            if(story1_1CurrentScore >= 1000 && story1_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber1_1];
                            }
                            else if(story1_1CurrentScore >= 2000 && story1_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber2_1];
                            }
                            else if(story1_1CurrentScore >= 3000 && story1_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber3_1];
                            }
                            else if(story1_1CurrentScore >= 4000 && story1_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber4_1];
                            }
                            else if(story1_1CurrentScore >= 5000 && story1_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber5_1];
                            }
                            else if(story1_1CurrentScore >= 6000 && story1_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber6_1];
                            }
                            else if(story1_1CurrentScore >= 7000 && story1_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber7_1];
                            }
                            else if(story1_1CurrentScore >= 8000 && story1_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber8_1];
                            }
                            else if(story1_1CurrentScore >= 9000 && story1_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(story1_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 104] setNormalImage:story1_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 103] setNormalImage:story1_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 102] setNormalImage:story1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[story1_1ScoreMenu getChildByTag: 101] setNormalImage:story1_1ScoreNumber0_1];
                    }
                }
            }
            
            //TROLLS REMAINING CALCULATIONS
            story1_1TrollsRemInt = story1_1TrollsRemaining;
            
            if(story1_1TrollsRemaining > 0){
                if(story1_1TrollsRemaining != story1_1TrollsPrevRem){
                    if(story1_1TrollsRemaining >= 0 && story1_1TrollsRemaining < 10){
                        if(story1_1TrollsRemaining == 0){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber0_3];
                        }
                        else if(story1_1TrollsRemaining == 1){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber1_2];
                        }
                        else if(story1_1TrollsRemaining == 2){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber2_2];
                        }
                        else if(story1_1TrollsRemaining == 3){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber3_2];
                        }
                        else if(story1_1TrollsRemaining == 4){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber4_2];
                        }
                        else if(story1_1TrollsRemaining == 5){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber5_2];
                        }
                        else if(story1_1TrollsRemaining == 6){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber6_1];
                        }
                        else if(story1_1TrollsRemaining == 7){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber7_1];
                        }
                        else if(story1_1TrollsRemaining == 8){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber8_1];
                        }
                        else if(story1_1TrollsRemaining == 9){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber9_1];
                        }
                        
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_1TrollsLeftNumber0_1];
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber0_2];
                    }
                    
                    else if(story1_1TrollsRemaining >= 10 && story1_1TrollsRemaining <= 99){
                        int lSDS = story1_1TrollsRemInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber1_2];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber2_2];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber3_2];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber4_2];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber5_2];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber6_1];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber7_1];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber8_1];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber9_1];
                        }
                        
                        if(story1_1TrollsRemaining >= 10 && story1_1TrollsRemaining <= 19){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber1_1];
                        }
                        else if(story1_1TrollsRemaining >= 20 && story1_1TrollsRemaining <= 29){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber2_1];
                        }
                        else if(story1_1TrollsRemaining >= 30 && story1_1TrollsRemaining <= 39){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber3_1];
                        }
                        else if(story1_1TrollsRemaining >= 40 && story1_1TrollsRemaining <= 49){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber4_1];
                        }
                        else if(story1_1TrollsRemaining >= 50 && story1_1TrollsRemaining <= 59){
                            [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber5_1];
                        }
                        
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_1TrollsLeftNumber0_1];
                    }
                    
                    else if(story1_1TrollsRemaining <= 0){
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber0_3];
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber0_2];
                        [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_1TrollsLeftNumber0_1];
                    }
                    
                    story1_1TrollsPrevRem = story1_1TrollsRemaining;
                }
            }
            else{
                [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 203] setNormalImage:story1_1TrollsLeftNumber0_3];
                [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 202] setNormalImage:story1_1TrollsLeftNumber0_2];
                [(CCMenuItemSprite*)[story1_1TrollsLeftMenu getChildByTag: 201] setNormalImage:story1_1TrollsLeftNumber0_1];
                story1_1Tick = 10;
            }
            
        }
        else if(story1_1Tick == 9){
            if(!story1_1TimeUpDrawn){
                story1_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                story1_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: story1_1TimeUpSprite];
                [self scheduleOnce:@selector(story1_1GameOver:) delay:2];
                story1_1TimeUpDrawn = TRUE;
            }
            else{
                if(story1_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    story1_1TimeUpSprite.position = ccp(story1_1TimeUpSprite.position.x, story1_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(story1_1Tick == 10){
            //LEVEL COMPLETE
            if(!story1_1AllTrollsDrawn){
                story1_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                story1_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: story1_1AllTrollsSprite];
                [self scheduleOnce:@selector(story1_1LevelComplete:) delay:2];
                story1_1AllTrollsDrawn = TRUE;
            }
            else{
                if(story1_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    story1_1AllTrollsSprite.position = ccp(story1_1AllTrollsSprite.position.x +10, story1_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadStory1_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"database"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"granquier"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"kappa"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"kreytos"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"mantin"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"orksome"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"salty"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"wooferz"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charOne"] isEqualToString:@"zeke"]){
        story1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        story1_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    story1_1DialogueOne = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_story_intro.png"
                                                 selectedImage:NULL
                                                        target:self
                                                      selector:@selector(dialogueOneTouched:)];
    
    story1_1DialogueTwo = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_story_intro_2.png"
                                                 selectedImage:NULL
                                                        target:self
                                                      selector:@selector(dialogueTwoTouched:)];
    
    story1_1DialogueThree = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_story_intro_3.png"
                                                 selectedImage:NULL
                                                        target:self
                                                      selector:@selector(dialogueThreeTouched:)];
    
    story1_1DialogueFour = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_story_intro_4.png"
                                                 selectedImage:NULL
                                                        target:self
                                                      selector:@selector(dialogueFourTouched:)];
    
    story1_1DialogueFive = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_story_intro_5.png"
                                                 selectedImage:NULL
                                                        target:self
                                                      selector:@selector(dialogueFiveTouched:)];
    
    story1_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    story1_1DialogueMenu = [CCMenu menuWithItems: story1_1DialogueOne, story1_1DialogueTwo, story1_1DialogueThree, story1_1DialogueFour, story1_1DialogueFive, nil];
    
    story1_1CharacterSprite.position = ccp(25, 100);
    story1_1CharacterName.position = ccp(120, 86);
    story1_1DialogueOne.position = ccp(0, -120);
    story1_1DialogueTwo.position = ccp(0, -240);
    story1_1DialogueThree.position = ccp(0, -240);
    story1_1DialogueFour.position = ccp(0, -240);
    story1_1DialogueFive.position = ccp(0, -240);
    story1_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: story1_1CharacterSprite];
    [self addChild: story1_1CharacterName];
    [self addChild: story1_1TapToContinue];
    [self addChild: story1_1DialogueMenu];
}

-(void) loadStory1_1Sprites{
    story1_1VolcanoFrontSpriteTopLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteTopMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteTopRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteMidLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteMidMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteMidRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteBotLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteBotMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    story1_1VolcanoFrontSpriteBotRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    story1_1VolcanoBackSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(topLeftExtraTouched:)];
    
    story1_1VolcanoBackSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(topMidExtraTouched:)];
    
    story1_1VolcanoBackSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(topRightExtraTouched:)];
    
    story1_1VolcanoBackSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midLeftExtraTouched:)];
    
    story1_1VolcanoBackSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(midMidExtraTouched:)];
    
    story1_1VolcanoBackSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(midRightExtraTouched:)];
    
    story1_1VolcanoBackSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(botLeftExtraTouched:)];
    
    story1_1VolcanoBackSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                             selectedSprite:NULL
                                                                     target:self
                                                                   selector:@selector(botMidExtraTouched:)];
    
    story1_1VolcanoBackSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(botRightExtraTouched:)];
    
    story1_1VolcanoFrontSpriteTopLeft.position = ccp(80, 230);
    story1_1VolcanoBackSpriteTopLeft.position = ccp(-160, 70);
    story1_1VolcanoFrontSpriteTopMid.position = ccp(240, 230);
    story1_1VolcanoBackSpriteTopMid.position = ccp(0, 70);
    story1_1VolcanoFrontSpriteTopRight.position = ccp(400, 230);
    story1_1VolcanoBackSpriteTopRight.position = ccp(160, 70);
    
    story1_1VolcanoFrontSpriteMidLeft.position = ccp(80, 150);
    story1_1VolcanoBackSpriteMidLeft.position = ccp(-160, -10);
    story1_1VolcanoFrontSpriteMidMid.position = ccp(240, 150);
    story1_1VolcanoBackSpriteMidMid.position = ccp(0, -10);
    story1_1VolcanoFrontSpriteMidRight.position = ccp(400, 150);
    story1_1VolcanoBackSpriteMidRight.position = ccp(160, -10);
    
    story1_1VolcanoFrontSpriteBotLeft.position = ccp(80, 70);
    story1_1VolcanoBackSpriteBotLeft.position = ccp(-160, -90);
    story1_1VolcanoFrontSpriteBotMid.position = ccp(240, 70);
    story1_1VolcanoBackSpriteBotMid.position = ccp(0, -90);
    story1_1VolcanoFrontSpriteBotRight.position = ccp(400, 70);
    story1_1VolcanoBackSpriteBotRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 9){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                story1_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topLeftTouched:)];
                
                story1_1TrollTLColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topLeftTouched:)];
                
                story1_1TrollTLColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteTopLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(topLeftTouched:)];
                
                story1_1TrollTLColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                story1_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                story1_1TrollTMColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                story1_1TrollTMColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteTopMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(topMidTouched:)];
                
                story1_1TrollTMColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                story1_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topRightTouched:)];
                
                story1_1TrollTRColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topRightTouched:)];
                
                story1_1TrollTRColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteTopRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(topRightTouched:)];
                
                story1_1TrollTRColour = 2;
            }
        }
        else if(count == 3){
            if(i == 0){
                story1_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midLeftTouched:)];
                
                story1_1TrollMLColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midLeftTouched:)];
                
                story1_1TrollMLColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteMidLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midLeftTouched:)];
                
                story1_1TrollMLColour = 2;
            }
        }
        else if(count == 4){
            if(i == 0){
                story1_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                story1_1TrollMMColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                story1_1TrollMMColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteMidMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(midMidTouched:)];
                
                story1_1TrollMMColour = 2;
            }
        }
        else if(count == 5){
            if(i == 0){
                story1_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midRightTouched:)];
                story1_1TrollMRColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midRightTouched:)];
                
                story1_1TrollMRColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteMidRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(midRightTouched:)];
                
                story1_1TrollMRColour = 2;
            }
        }
        else if(count == 6){
            if(i == 0){
                story1_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botLeftTouched:)];
                
                story1_1TrollBLColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botLeftTouched:)];
                
                story1_1TrollBLColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteBotLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(botLeftTouched:)];
                
                story1_1TrollBLColour = 2;
            }
        }
        else if(count == 7){
            if(i == 0){
                story1_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                story1_1TrollBMColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                
                story1_1TrollBMColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteBotMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                   selectedSprite:NULL
                                                                           target:self
                                                                         selector:@selector(botMidTouched:)];
                
                story1_1TrollBMColour = 2;
            }
        }
        else if(count == 8){
            if(i == 0){
                story1_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botRightTouched:)];
                story1_1TrollBRColour = 0;
            }
            else if(i == 1){
                story1_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botRightTouched:)];
                
                story1_1TrollBRColour = 1;
            }
            else if(i == 2){
                story1_1TrollSpriteBotRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(botRightTouched:)];
                
                story1_1TrollBRColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 9){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollTopLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollTopMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollTopRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 3){
            if(j == 0){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollMidLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 4){
            if(j == 0){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollMidMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 5){
            if(j == 0){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollMidRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 6){
            if(j == 0){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollBotLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 7){
            if(j == 0){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollBotMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 8){
            if(j == 0){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                story1_1TrollBotRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    story1_1TrollSpriteTLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteTLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteTLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteTMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteTMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteTMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteTRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteTRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteTRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteMLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteMLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteMLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteMMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteMMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteMMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteMRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteMRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteMRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteBLGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteBLGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteBLPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteBMGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteBMGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteBMPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    story1_1TrollSpriteBRGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    story1_1TrollSpriteBRGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    story1_1TrollSpriteBRPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    story1_1TrollSpriteTLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteTLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteTLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteTMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteTMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteTMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteTRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteTRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteTRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteMLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteMLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteMLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteMMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteMMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteMMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteMRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteMRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteMRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteBLDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteBLDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteBLDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteBMDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteBMDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteBMDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    story1_1TrollSpriteBRDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    story1_1TrollSpriteBRDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    story1_1TrollSpriteBRDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    story1_1SpriteTopLeftMenu = [CCMenu menuWithItems: story1_1TrollSpriteTopLeft, nil];
    story1_1SpriteTopMidMenu = [CCMenu menuWithItems: story1_1TrollSpriteTopMid, nil];
    story1_1SpriteTopRightMenu = [CCMenu menuWithItems: story1_1TrollSpriteTopRight, nil];
    story1_1SpriteMidLeftMenu = [CCMenu menuWithItems: story1_1TrollSpriteMidLeft, nil];
    story1_1SpriteMidMidMenu = [CCMenu menuWithItems: story1_1TrollSpriteMidMid, nil];
    story1_1SpriteMidRightMenu = [CCMenu menuWithItems: story1_1TrollSpriteMidRight, nil];
    story1_1SpriteBotLeftMenu = [CCMenu menuWithItems: story1_1TrollSpriteBotLeft, nil];
    story1_1SpriteBotMidMenu = [CCMenu menuWithItems: story1_1TrollSpriteBotMid, nil];
    story1_1SpriteBotRightMenu = [CCMenu menuWithItems: story1_1TrollSpriteBotRight, nil];
    
    story1_1SpriteTopLeftMenu.position = ccp(-1000, -1000);
    story1_1SpriteTopMidMenu.position = ccp(-1000, -1000);
    story1_1SpriteTopRightMenu.position = ccp(-1000, -1000);
    story1_1SpriteMidLeftMenu.position = ccp(-1000, -1000);
    story1_1SpriteMidMidMenu.position = ccp(-1000, -1000);
    story1_1SpriteMidRightMenu.position = ccp(-1000, -1000);
    story1_1SpriteBotLeftMenu.position = ccp(-1000, -1000);
    story1_1SpriteBotMidMenu.position = ccp(-1000, -1000);
    story1_1SpriteBotRightMenu.position = ccp(-1000, -1000);
    
    story1_1TrollTopLeftChat.position = ccp(-1000, -1000);
    story1_1TrollTopMidChat.position = ccp(-1000, -1000);
    story1_1TrollTopRightChat.position = ccp(-1000, -1000);
    story1_1TrollMidLeftChat.position = ccp(-1000, -1000);
    story1_1TrollMidMidChat.position = ccp(-1000, -1000);
    story1_1TrollMidRightChat.position = ccp(-1000, -1000);
    story1_1TrollBotLeftChat.position = ccp(-1000, -1000);
    story1_1TrollBotMidChat.position = ccp(-1000, -1000);
    story1_1TrollBotRightChat.position = ccp(-1000, -1000);
    
    story1_1VolcanoMenu = [CCMenu menuWithItems: story1_1VolcanoBackSpriteTopLeft, story1_1VolcanoBackSpriteTopMid, story1_1VolcanoBackSpriteTopRight,
                          story1_1VolcanoBackSpriteMidLeft, story1_1VolcanoBackSpriteMidMid, story1_1VolcanoBackSpriteMidRight,
                          story1_1VolcanoBackSpriteBotLeft, story1_1VolcanoBackSpriteBotMid, story1_1VolcanoBackSpriteBotRight, nil];
    
    [story1_1SpriteMidLayer addChild: story1_1SpriteTopLeftMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteTopMidMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteTopRightMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteMidLeftMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteMidMidMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteMidRightMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteBotLeftMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteBotMidMenu];
    [story1_1SpriteMidLayer addChild: story1_1SpriteBotRightMenu];
    
    [story1_1SpriteMidLayer addChild: story1_1TrollTopLeftChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollTopMidChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollTopRightChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollMidLeftChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollMidMidChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollMidRightChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollBotLeftChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollBotMidChat];
    [story1_1SpriteMidLayer addChild: story1_1TrollBotRightChat];
    
    [story1_1SpriteBackLayer addChild: story1_1VolcanoMenu];
    
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteTopLeft];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteTopMid];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteTopRight];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteMidLeft];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteMidMid];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteMidRight];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteBotLeft];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteBotMid];
    [story1_1SpriteFrontLayer addChild: story1_1VolcanoFrontSpriteBotRight];
    
    story1_1SpriteBackLayer.position = ccp(-1000, -1000);
    story1_1SpriteMidLayer.position = ccp(-1000, -1000);
    story1_1SpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) loadStory1_1Text{
    story1_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    story1_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    story1_1TrollsLeftNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1TrollsLeftNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1TrollsLeftNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    story1_1TrollsLeftNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1TrollsLeftNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    story1_1TrollsLeftNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1TrollsLeftNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    story1_1TrollsLeftNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1TrollsLeftNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    story1_1TrollsLeftNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1TrollsLeftNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    story1_1TrollsLeftNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1TrollsLeftNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    story1_1TrollsLeftNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    story1_1TrollsLeftNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    story1_1TrollsLeftNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    story1_1TrollsLeftNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    story1_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text.png"
                                              selectedImage:NULL];
    
    story1_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    story1_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    story1_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                           selectedSprite:NULL];
    
    story1_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    story1_1TrollsLeftText = [CCMenuItemImage itemWithNormalImage:@"GameText/trolls_left_text.png"
                                              selectedImage:NULL];
    
    story1_1TrollsLeftSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    story1_1TrollsLeftSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_32.png"]
                                                         selectedSprite:NULL];
    
    story1_1TrollsLeftSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                               selectedSprite:NULL];
    
    story1_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text.png"
                                              selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        story1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        story1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        story1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        story1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    
    story1_1ScoreMenu = [CCMenu menuWithItems:story1_1ScoreText, story1_1ScoreSpriteDigitOne, story1_1ScoreSpriteDigitTwo,
                         story1_1ScoreSpriteDigitThree, story1_1ScoreSpriteDigitFour, nil];
    
    [story1_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    story1_1TrollsLeftMenu = [CCMenu menuWithItems: story1_1TrollsLeftText, story1_1TrollsLeftSpriteDigitOne, story1_1TrollsLeftSpriteDigitTwo, story1_1TrollsLeftSpriteDigitThree, nil];
    [story1_1TrollsLeftMenu alignItemsHorizontallyWithPadding:1];
    
    story1_1LivesMenu = [CCMenu menuWithItems: story1_1LivesText, story1_1LivesSpriteOne, story1_1LivesSpriteTwo, story1_1LivesSpriteThree, nil];
    [story1_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    story1_1ScoreMenu.position = ccp(72, 308);
    story1_1TrollsLeftMenu.position = ccp(100, 286);
    story1_1LivesMenu.position = ccp(400, 308);
    
    [story1_1ScoreSpriteDigitOne setTag: 101];
    [story1_1ScoreSpriteDigitTwo setTag: 102];
    [story1_1ScoreSpriteDigitThree setTag: 103];
    [story1_1ScoreSpriteDigitFour setTag: 104];
    
    [story1_1TrollsLeftSpriteDigitOne setTag: 201];
    [story1_1TrollsLeftSpriteDigitTwo setTag: 202];
    [story1_1TrollsLeftSpriteDigitThree setTag: 203];
    
    [story1_1StatsLayer addChild: story1_1ScoreMenu];
    [story1_1StatsLayer addChild: story1_1TrollsLeftMenu];
    [story1_1StatsLayer addChild: story1_1LivesMenu];
    
    story1_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) drawStory1_1Elements{
    story1_1SpriteBackLayer.position = ccp(0, 0);
    story1_1SpriteMidLayer.position = ccp(0, 0);
    story1_1SpriteFrontLayer.position = ccp(0, 0);
    story1_1StatsLayer.position = ccp(0, 0);
}

-(void) dialogueOneTouched:(id)sender{
    id fadeAction = [CCFadeOut actionWithDuration:0.5f];
    [story1_1DialogueOne runAction: fadeAction];
    
    story1_1DialogueOneTouched = TRUE;
}

-(void) dialogueTwoTouched:(id)sender{
    id fadeAction2 = [CCFadeOut actionWithDuration:0.5f];
    [story1_1DialogueTwo runAction: fadeAction2];
    
    story1_1DialogueTwoTouched = TRUE;
}

-(void) dialogueThreeTouched:(id)sender{
    id fadeAction3 = [CCFadeOut actionWithDuration:0.5f];
    [story1_1DialogueThree runAction: fadeAction3];
    
    story1_1DialogueThreeTouched = TRUE;
}

-(void) dialogueFourTouched:(id)sender{
    id fadeAction4 = [CCFadeOut actionWithDuration:0.5f];
    [story1_1DialogueFour runAction: fadeAction4];
    
    story1_1DialogueFourTouched = TRUE;
}

-(void) dialogueFiveTouched:(id)sender{
    story1_1DialogueFiveTouched = TRUE;
}

-(void) topLeftTouched:(id)sender{
    if(story1_1StartTrollTLDeathAnim || story1_1StartTrollTLMissed || story1_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story1_1TrollTLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) topMidTouched:(id)sender{
    if(story1_1StartTrollTMDeathAnim || story1_1StartTrollTMMissed || story1_1TrollTMResetTimer > 0){
        
    }
    else{
        story1_1TrollTMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) topRightTouched:(id)sender{
    if(story1_1StartTrollTRDeathAnim || story1_1StartTrollTRMissed || story1_1TrollTRResetTimer > 0){
        
    }
    else{
        story1_1TrollTRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midLeftTouched:(id)sender{
    if(story1_1StartTrollMLDeathAnim || story1_1StartTrollMLMissed || story1_1TrollMLResetTimer > 0){
        
    }
    else{
        story1_1TrollMLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midMidTouched:(id)sender{
    if(story1_1StartTrollMMDeathAnim || story1_1StartTrollMMMissed || story1_1TrollMMResetTimer > 0){
        
    }
    else{
        story1_1TrollMMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midRightTouched:(id)sender{
    if(story1_1StartTrollMRDeathAnim || story1_1StartTrollMRMissed || story1_1TrollMRResetTimer > 0){
        
    }
    else{
        story1_1TrollMRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botLeftTouched:(id)sender{
    if(story1_1StartTrollBLDeathAnim || story1_1StartTrollBLMissed || story1_1TrollBLResetTimer > 0){
        
    }
    else{
        story1_1TrollBLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botMidTouched:(id)sender{
    if(story1_1StartTrollBMDeathAnim || story1_1StartTrollBMMissed || story1_1TrollBMResetTimer > 0){
        
    }
    else{
        story1_1TrollBMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botRightTouched:(id)sender{
    if(story1_1StartTrollBRDeathAnim || story1_1StartTrollBRMissed || story1_1TrollBRResetTimer > 0){
        
    }
    else{
        story1_1TrollBRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) topLeftExtraTouched:(id)sender{
    if(story1_1StartTrollTLDeathAnim || story1_1StartTrollTLMissed || story1_1TrollTLResetTimer > 0){
        //DO NOTHING
    }
    else{
        story1_1TrollTLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) topMidExtraTouched:(id)sender{
    if(story1_1StartTrollTMDeathAnim || story1_1StartTrollTMMissed || story1_1TrollTMResetTimer > 0){
        
    }
    else{
        story1_1TrollTMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) topRightExtraTouched:(id)sender{
    if(story1_1StartTrollTRDeathAnim || story1_1StartTrollTRMissed || story1_1TrollTRResetTimer > 0){
        
    }
    else{
        story1_1TrollTRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midLeftExtraTouched:(id)sender{
    if(story1_1StartTrollMLDeathAnim || story1_1StartTrollMLMissed || story1_1TrollMLResetTimer > 0){
        
    }
    else{
        story1_1TrollMLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midMidExtraTouched:(id)sender{
    if(story1_1StartTrollMMDeathAnim || story1_1StartTrollMMMissed || story1_1TrollMMResetTimer > 0){
        
    }
    else{
        story1_1TrollMMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) midRightExtraTouched:(id)sender{
    if(story1_1StartTrollMRDeathAnim || story1_1StartTrollMRMissed || story1_1TrollMRResetTimer > 0){
        
    }
    else{
        story1_1TrollMRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botLeftExtraTouched:(id)sender{
    if(story1_1StartTrollBLDeathAnim || story1_1StartTrollBLMissed || story1_1TrollBLResetTimer > 0){
        
    }
    else{
        story1_1TrollBLTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botMidExtraTouched:(id)sender{
    if(story1_1StartTrollBMDeathAnim || story1_1StartTrollBMMissed || story1_1TrollBMResetTimer > 0){
        
    }
    else{
        story1_1TrollBMTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) botRightExtraTouched:(id)sender{
    if(story1_1StartTrollBRDeathAnim || story1_1StartTrollBRMissed || story1_1TrollBRResetTimer > 0){
        
    }
    else{
        story1_1TrollBRTouched = TRUE;
        story1_1CurrentScore += 2;
        story1_1TrollsRemaining--;
    }
}

-(void) story1_1GameOver:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story1_1CurrentScore forKey:@"storyScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) story1_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:story1_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:story1_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameResults node] withColor:ccWHITE]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [story1_1TrollTopLeftChat release];
    [story1_1TrollTopMidChat release];
    [story1_1TrollTopRightChat release];
    [story1_1TrollMidLeftChat release];
    [story1_1TrollMidMidChat release];
    [story1_1TrollMidRightChat release];
    [story1_1TrollBotLeftChat release];
    [story1_1TrollBotMidChat release];
    [story1_1TrollBotRightChat release];
    [story1_1TrollSpriteTLGreen release];
    [story1_1TrollSpriteTLGrey release];
    [story1_1TrollSpriteTLPurple release];
    [story1_1TrollSpriteTMGreen release];
    [story1_1TrollSpriteTMGrey release];
    [story1_1TrollSpriteTMPurple release];
    [story1_1TrollSpriteTRGreen release];
    [story1_1TrollSpriteTRGrey release];
    [story1_1TrollSpriteTRPurple release];
    [story1_1TrollSpriteMLGreen release];
    [story1_1TrollSpriteMLGrey release];
    [story1_1TrollSpriteMLPurple release];
    [story1_1TrollSpriteMMGreen release];
    [story1_1TrollSpriteMMGrey release];
    [story1_1TrollSpriteMMPurple release];
    [story1_1TrollSpriteMRGreen release];
    [story1_1TrollSpriteMRGrey release];
    [story1_1TrollSpriteMRPurple release];
    [story1_1TrollSpriteBLGreen release];
    [story1_1TrollSpriteBLGrey release];
    [story1_1TrollSpriteBLPurple release];
    [story1_1TrollSpriteBMGreen release];
    [story1_1TrollSpriteBMGrey release];
    [story1_1TrollSpriteBMPurple release];
    [story1_1TrollSpriteBRGreen release];
    [story1_1TrollSpriteBRGrey release];
    [story1_1TrollSpriteBRPurple release];
    [story1_1TrollSpriteTLDeadGreen release];
    [story1_1TrollSpriteTLDeadGrey release];
    [story1_1TrollSpriteTLDeadPurple release];
    [story1_1TrollSpriteTMDeadGreen release];
    [story1_1TrollSpriteTMDeadGrey release];
    [story1_1TrollSpriteTMDeadPurple release];
    [story1_1TrollSpriteTRDeadGreen release];
    [story1_1TrollSpriteTRDeadGrey release];
    [story1_1TrollSpriteTRDeadPurple release];
    [story1_1TrollSpriteMLDeadGreen release];
    [story1_1TrollSpriteMLDeadGrey release];
    [story1_1TrollSpriteMLDeadPurple release];
    [story1_1TrollSpriteMMDeadGreen release];
    [story1_1TrollSpriteMMDeadGrey release];
    [story1_1TrollSpriteMMDeadPurple release];
    [story1_1TrollSpriteMRDeadGreen release];
    [story1_1TrollSpriteMRDeadGrey release];
    [story1_1TrollSpriteMRDeadPurple release];
    [story1_1TrollSpriteBLDeadGreen release];
    [story1_1TrollSpriteBLDeadGrey release];
    [story1_1TrollSpriteBLDeadPurple release];
    [story1_1TrollSpriteBMDeadGreen release];
    [story1_1TrollSpriteBMDeadGrey release];
    [story1_1TrollSpriteBMDeadPurple release];
    [story1_1TrollSpriteBRDeadGreen release];
    [story1_1TrollSpriteBRDeadGrey release];
    [story1_1TrollSpriteBRDeadPurple release];
    [story1_1ScoreNumber0_1 release];
    [story1_1ScoreNumber0_2 release];
    [story1_1ScoreNumber0_3 release];
    [story1_1ScoreNumber0_4 release];
    [story1_1ScoreNumber1_1 release];
    [story1_1ScoreNumber1_2 release];
    [story1_1ScoreNumber1_3 release];
    [story1_1ScoreNumber1_4 release];
    [story1_1ScoreNumber2_1 release];
    [story1_1ScoreNumber2_2 release];
    [story1_1ScoreNumber2_3 release];
    [story1_1ScoreNumber2_4 release];
    [story1_1ScoreNumber3_1 release];
    [story1_1ScoreNumber3_2 release];
    [story1_1ScoreNumber3_3 release];
    [story1_1ScoreNumber3_4 release];
    [story1_1ScoreNumber4_1 release];
    [story1_1ScoreNumber4_2 release];
    [story1_1ScoreNumber4_3 release];
    [story1_1ScoreNumber4_4 release];
    [story1_1ScoreNumber5_1 release];
    [story1_1ScoreNumber5_2 release];
    [story1_1ScoreNumber5_3 release];
    [story1_1ScoreNumber5_4 release];
    [story1_1ScoreNumber6_1 release];
    [story1_1ScoreNumber6_2 release];
    [story1_1ScoreNumber6_3 release];
    [story1_1ScoreNumber6_4 release];
    [story1_1ScoreNumber7_1 release];
    [story1_1ScoreNumber7_2 release];
    [story1_1ScoreNumber7_3 release];
    [story1_1ScoreNumber7_4 release];
    [story1_1ScoreNumber8_1 release];
    [story1_1ScoreNumber8_2 release];
    [story1_1ScoreNumber8_3 release];
    [story1_1ScoreNumber8_4 release];
    [story1_1ScoreNumber9_1 release];
    [story1_1ScoreNumber9_2 release];
    [story1_1ScoreNumber9_3 release];
    [story1_1ScoreNumber9_4 release];
    [story1_1TrollsLeftNumber0_1 release];
    [story1_1TrollsLeftNumber0_2 release];
    [story1_1TrollsLeftNumber0_3 release];
    [story1_1TrollsLeftNumber1_1 release];
    [story1_1TrollsLeftNumber1_2 release];
    [story1_1TrollsLeftNumber2_1 release];
    [story1_1TrollsLeftNumber2_2 release];
    [story1_1TrollsLeftNumber3_1 release];
    [story1_1TrollsLeftNumber3_2 release];
    [story1_1TrollsLeftNumber4_1 release];
    [story1_1TrollsLeftNumber4_2 release];
    [story1_1TrollsLeftNumber5_1 release];
    [story1_1TrollsLeftNumber5_2 release];
    [story1_1TrollsLeftNumber6_1 release];
    [story1_1TrollsLeftNumber7_1 release];
    [story1_1TrollsLeftNumber8_1 release];
    [story1_1TrollsLeftNumber9_1 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
