//
//  BossSceneFinal.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "BossSceneFinal.h"
#import "GameResults.h"
#import "GameOver.h"
#import "SimpleAudioEngine.h"

#pragma mark - BossSceneFinal

CCScene *boss3_1Background;

CCLayer *boss3_1StatsLayer;
CCLayer *boss3_1SpriteFrontLayer;
CCLayer *boss3_1SpriteMidLayer;
CCLayer *boss3_1SpriteBackLayer;
CCLayer *boss3_1SpriteBossLayer;
CCLayer *boss3_1HealthBarsLayer;

CCMenu *boss3_1DialogueMenu;
CCMenu *boss3_1BossSpriteMenu;

CCMenu *boss3_1SpriteLeftMenu;
CCMenu *boss3_1SpriteMidMenu;
CCMenu *boss3_1SpriteRightMenu;

CCMenu *boss3_1VolcanoMenu;

CCMenu *boss3_1LivesMenu;
CCMenu *boss3_1ScoreMenu;

CCSprite *boss3_1CharacterSprite;
CCSprite *boss3_1CharacterName;
CCMenuItemImage *boss3_1DialogueSprite;

CCSprite *boss3_1TrollLeftChat;
CCSprite *boss3_1TrollMidChat;
CCSprite *boss3_1TrollRightChat;

CCMenuItemImage *boss3_1SectionTopLeft;
CCMenuItemImage *boss3_1SectionTopRight;
CCMenuItemImage *boss3_1SectionBotLeft;
CCMenuItemImage *boss3_1SectionBotRight;

CCSprite *boss3_1HealthBarTopLeft;
CCSprite *boss3_1HealthBarTopRight;
CCSprite *boss3_1HealthBarBotLeft;
CCSprite *boss3_1HealthBarBotRight;
CCSprite *boss3_1HealthBarTopLeftCover;
CCSprite *boss3_1HealthBarTopRightCover;
CCSprite *boss3_1HealthBarBotLeftCover;
CCSprite *boss3_1HealthBarBotRightCover;

CCSprite *boss3_1VolcanoFrontSpriteLeft;
CCMenuItemSprite *boss3_1VolcanoBackSpriteLeft;
CCSprite *boss3_1VolcanoFrontSpriteMid;
CCMenuItemSprite *boss3_1VolcanoBackSpriteMid;
CCSprite *boss3_1VolcanoFrontSpriteRight;
CCMenuItemSprite *boss3_1VolcanoBackSpriteRight;

CCMenuItemSprite *boss3_1TrollSpriteLeft;
CCMenuItemSprite *boss3_1TrollSpriteMid;
CCMenuItemSprite *boss3_1TrollSpriteRight;

CCMenuItemImage *boss3_1ScoreText;
CCMenuItemSprite *boss3_1ScoreSpriteDigitOne;
CCMenuItemSprite *boss3_1ScoreSpriteDigitTwo;
CCMenuItemSprite *boss3_1ScoreSpriteDigitThree;
CCMenuItemSprite *boss3_1ScoreSpriteDigitFour;

CCSprite *boss3_1TrollLeftChat;
CCSprite *boss3_1TrollMidChat;
CCSprite *boss3_1TrollRightChat;

CCSprite *boss3_1TrollSpriteLeftGreen;
CCSprite *boss3_1TrollSpriteLeftGrey;
CCSprite *boss3_1TrollSpriteLeftPurple;
CCSprite *boss3_1TrollSpriteMidGreen;
CCSprite *boss3_1TrollSpriteMidGrey;
CCSprite *boss3_1TrollSpriteMidPurple;
CCSprite *boss3_1TrollSpriteRightGreen;
CCSprite *boss3_1TrollSpriteRightGrey;
CCSprite *boss3_1TrollSpriteRightPurple;

CCSprite *boss3_1TrollSpriteLeftDeadGreen;
CCSprite *boss3_1TrollSpriteLeftDeadGrey;
CCSprite *boss3_1TrollSpriteLeftDeadPurple;
CCSprite *boss3_1TrollSpriteMidDeadGreen;
CCSprite *boss3_1TrollSpriteMidDeadGrey;
CCSprite *boss3_1TrollSpriteMidDeadPurple;
CCSprite *boss3_1TrollSpriteRightDeadGreen;
CCSprite *boss3_1TrollSpriteRightDeadGrey;
CCSprite *boss3_1TrollSpriteRightDeadPurple;

CCSprite *boss3_1ScoreNumber0_1;
CCSprite *boss3_1ScoreNumber0_2;
CCSprite *boss3_1ScoreNumber0_3;
CCSprite *boss3_1ScoreNumber0_4;
CCSprite *boss3_1ScoreNumber1_1;
CCSprite *boss3_1ScoreNumber1_2;
CCSprite *boss3_1ScoreNumber1_3;
CCSprite *boss3_1ScoreNumber1_4;
CCSprite *boss3_1ScoreNumber2_1;
CCSprite *boss3_1ScoreNumber2_2;
CCSprite *boss3_1ScoreNumber2_3;
CCSprite *boss3_1ScoreNumber2_4;
CCSprite *boss3_1ScoreNumber3_1;
CCSprite *boss3_1ScoreNumber3_2;
CCSprite *boss3_1ScoreNumber3_3;
CCSprite *boss3_1ScoreNumber3_4;
CCSprite *boss3_1ScoreNumber4_1;
CCSprite *boss3_1ScoreNumber4_2;
CCSprite *boss3_1ScoreNumber4_3;
CCSprite *boss3_1ScoreNumber4_4;
CCSprite *boss3_1ScoreNumber5_1;
CCSprite *boss3_1ScoreNumber5_2;
CCSprite *boss3_1ScoreNumber5_3;
CCSprite *boss3_1ScoreNumber5_4;
CCSprite *boss3_1ScoreNumber6_1;
CCSprite *boss3_1ScoreNumber6_2;
CCSprite *boss3_1ScoreNumber6_3;
CCSprite *boss3_1ScoreNumber6_4;
CCSprite *boss3_1ScoreNumber7_1;
CCSprite *boss3_1ScoreNumber7_2;
CCSprite *boss3_1ScoreNumber7_3;
CCSprite *boss3_1ScoreNumber7_4;
CCSprite *boss3_1ScoreNumber8_1;
CCSprite *boss3_1ScoreNumber8_2;
CCSprite *boss3_1ScoreNumber8_3;
CCSprite *boss3_1ScoreNumber8_4;
CCSprite *boss3_1ScoreNumber9_1;
CCSprite *boss3_1ScoreNumber9_2;
CCSprite *boss3_1ScoreNumber9_3;
CCSprite *boss3_1ScoreNumber9_4;

CCMenuItemImage *boss3_1LivesText;
CCMenuItemSprite *boss3_1LivesSpriteOne;
CCMenuItemSprite *boss3_1LivesSpriteTwo;
CCMenuItemSprite *boss3_1LivesSpriteThree;

CCSprite *boss3_1TapToContinue;

CCSprite *boss3_1TimeUpSprite;
BOOL boss3_1TimeUpDrawn = FALSE;

CCSprite *boss3_1AllTrollsSprite;
BOOL boss3_1AllTrollsDrawn = FALSE;

int boss3_1TrollLeftColour = -1;
int boss3_1TrollMidColour = -1;
int boss3_1TrollRightColour = -1;

int boss3_1BossTopLeftHealth = 25;
int boss3_1BossTopRightHealth = 25;
int boss3_1BossBotLeftHealth = 25;
int boss3_1BossBotRightHealth = 25;

BOOL boss3_1BossTopLeftDead = FALSE;
BOOL boss3_1BossTopRightDead = FALSE;
BOOL boss3_1BossBotLeftDead = FALSE;
BOOL boss3_1BossBotRightDead = FALSE;

BOOL boss3_1BossTopLeftFadeScheduled = FALSE;
BOOL boss3_1BossTopRightFadeScheduled = FALSE;
BOOL boss3_1BossBotLeftFadeScheduled = FALSE;
BOOL boss3_1BossBotRightFadeScheduled = FALSE;

float boss3_1BossTopLeftFadeOutTimer = 0.0f;
float boss3_1BossTopRightFadeOutTimer = 0.0f;
float boss3_1BossBotLeftFadeOutTimer = 0.0f;
float boss3_1BossBotRightFadeOutTimer = 0.0f;

float boss3_1TrollRespawnInterval = 0.0f;

float boss3_1TrollLeftResetTimer = 0.5f;
float boss3_1TrollMidResetTimer = 0.8f;
float boss3_1TrollRightResetTimer = 0.2f;

float boss3_1TrollLeftTimeInPlay = 0.0f;
float boss3_1TrollMidTimeInPlay = 0.0f;
float boss3_1TrollRightTimeInPlay = 0.0f;

float boss3_1TrollLeftFadingOutTimer = 0.0f;
float boss3_1TrollMidFadingOutTimer = 0.0f;
float boss3_1TrollRightFadingOutTimer = 0.0f;

BOOL boss3_1TrollLeftTouched = FALSE;
BOOL boss3_1TrollMidTouched = FALSE;
BOOL boss3_1TrollRightTouched = FALSE;
BOOL boss3_1BossTopLeftTouched = FALSE;
BOOL boss3_1BossTopRightTouched = FALSE;
BOOL boss3_1BossBotLeftTouched = FALSE;
BOOL boss3_1BossBotRightTouched = FALSE;

BOOL boss3_1TrollLeftInPlay = FALSE;
BOOL boss3_1TrollMidInPlay = FALSE;
BOOL boss3_1TrollRightInPlay = FALSE;

BOOL boss3_1StartTrollLeftDeathAnim = FALSE;
BOOL boss3_1StartTrollMidDeathAnim = FALSE;
BOOL boss3_1StartTrollRightDeathAnim = FALSE;

BOOL boss3_1StartTrollLeftMissed = FALSE;
BOOL boss3_1StartTrollMidMissed = FALSE;
BOOL boss3_1StartTrollRightMissed = FALSE;

int boss3_1ScoreInt = 0;
int boss3_1CurrentScore = 0;
int boss3_1PrevScore = 0;
int boss3_1LivesRemaining = 0;

BOOL boss3_1StartRound = FALSE;
BOOL boss3_1DialogueTouched = FALSE;

ccTime boss3_1GameTime = 0.0f;
BOOL boss3_1AllChange = TRUE;
int boss3_1Tick = 0;

@implementation BossSceneFinal

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	BossSceneFinal *layer = [BossSceneFinal node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        boss3_1StatsLayer = [CCLayer node];
        boss3_1SpriteFrontLayer = [CCLayer node];
        boss3_1SpriteMidLayer = [CCLayer node];
        boss3_1SpriteBackLayer = [CCLayer node];
        boss3_1SpriteBossLayer = [CCLayer node];
        boss3_1HealthBarsLayer = [CCLayer node];
        
        boss3_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_3_background_640.png"];
        boss3_1Background.position = ccp(240, 160);
        
        [self addChild: boss3_1Background];
        [self addChild: boss3_1StatsLayer];
        [self addChild: boss3_1SpriteBackLayer];
        [self addChild: boss3_1SpriteFrontLayer];
        [self addChild: boss3_1SpriteMidLayer];
        [self addChild: boss3_1SpriteBossLayer];
        [self addChild: boss3_1HealthBarsLayer];
        
        [self loadboss3_1Sprites];
        [self loadboss3_1Text];
        [self loadboss3_1Dialogue];
    }
    
    boss3_1TimeUpDrawn = FALSE;
    boss3_1AllTrollsDrawn = FALSE;
    boss3_1TrollLeftColour = -1;
    boss3_1TrollMidColour = -1;
    boss3_1TrollRightColour = -1;
    boss3_1BossTopLeftHealth = 25;
    boss3_1BossTopRightHealth = 25;
    boss3_1BossBotLeftHealth = 25;
    boss3_1BossBotRightHealth = 25;
    boss3_1BossTopLeftDead = FALSE;
    boss3_1BossTopRightDead = FALSE;
    boss3_1BossBotLeftDead = FALSE;
    boss3_1BossBotRightDead = FALSE;
    boss3_1BossTopLeftFadeScheduled = FALSE;
    boss3_1BossTopRightFadeScheduled = FALSE;
    boss3_1BossBotLeftFadeScheduled = FALSE;
    boss3_1BossBotRightFadeScheduled = FALSE;
    boss3_1BossTopLeftFadeOutTimer = 0.0f;
    boss3_1BossTopRightFadeOutTimer = 0.0f;
    boss3_1BossBotLeftFadeOutTimer = 0.0f;
    boss3_1BossBotRightFadeOutTimer = 0.0f;
    boss3_1TrollRespawnInterval = 0.0f;
    boss3_1TrollLeftResetTimer = 0.5f;
    boss3_1TrollMidResetTimer = 0.8f;
    boss3_1TrollRightResetTimer = 0.2f;
    boss3_1TrollLeftTimeInPlay = 0.0f;
    boss3_1TrollMidTimeInPlay = 0.0f;
    boss3_1TrollRightTimeInPlay = 0.0f;
    boss3_1TrollLeftFadingOutTimer = 0.0f;
    boss3_1TrollMidFadingOutTimer = 0.0f;
    boss3_1TrollRightFadingOutTimer = 0.0f;
    boss3_1TrollLeftTouched = FALSE;
    boss3_1TrollMidTouched = FALSE;
    boss3_1TrollRightTouched = FALSE;
    boss3_1BossTopLeftTouched = FALSE;
    boss3_1BossTopRightTouched = FALSE;
    boss3_1BossBotLeftTouched = FALSE;
    boss3_1BossBotRightTouched = FALSE;
    boss3_1TrollLeftInPlay = FALSE;
    boss3_1TrollMidInPlay = FALSE;
    boss3_1TrollRightInPlay = FALSE;
    boss3_1StartTrollLeftDeathAnim = FALSE;
    boss3_1StartTrollMidDeathAnim = FALSE;
    boss3_1StartTrollRightDeathAnim = FALSE;
    boss3_1StartTrollLeftMissed = FALSE;
    boss3_1StartTrollMidMissed = FALSE;
    boss3_1StartTrollRightMissed = FALSE;
    boss3_1ScoreInt = 0;
    boss3_1StartRound = FALSE;
    boss3_1DialogueTouched = FALSE;
    boss3_1AllChange = TRUE;
    boss3_1Tick = 0;
    boss3_1GameTime = 0.0f;
    
    boss3_1CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss3_1PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss3_1LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!boss3_1StartRound){
        if(boss3_1DialogueTouched){
            boss3_1DialogueSprite.position = ccp(-1000, -1000);
            boss3_1CharacterSprite.position = ccp(-1000, -1000);
            boss3_1CharacterName.position = ccp(-1000, -1000);
            boss3_1TapToContinue.position = ccp(-1000, -1000);
            boss3_1DialogueTouched = FALSE;
            boss3_1StartRound = TRUE;
        }
    }
    else{
        boss3_1GameTime += dt;
        
        if(boss3_1Tick == 0){
            if(boss3_1AllChange){
                [self drawboss3_1Elements];
                boss3_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(boss3_1TrollLeftInPlay){
                if(boss3_1TrollLeftTimeInPlay >= 1.5f){
                    boss3_1StartTrollLeftMissed = TRUE;
                    boss3_1TrollLeftChat.position = ccp(-1000, -1000);
                    boss3_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss3_1TrollLeftTimeInPlay += dt;
                }
            }
            else{
                boss3_1TrollLeftResetTimer -= dt;
                if(boss3_1TrollLeftResetTimer <= 0){
                    boss3_1SpriteLeftMenu.position = ccp(80, 90);
                    boss3_1TrollLeftChat.position = ccp(112, 100);
                    boss3_1TrollLeftInPlay = TRUE;
                    boss3_1TrollLeftTimeInPlay = 0.0f;
                }
            }
            
            if(boss3_1TrollMidInPlay){
                if(boss3_1TrollMidTimeInPlay >= 1.5f){
                    boss3_1StartTrollMidMissed = TRUE;
                    boss3_1TrollMidChat.position = ccp(-1000, -1000);
                    boss3_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss3_1TrollMidTimeInPlay += dt;
                }
            }
            else{
                boss3_1TrollMidResetTimer -= dt;
                if(boss3_1TrollMidResetTimer <= 0){
                    boss3_1SpriteMidMenu.position = ccp(240, 90);
                    boss3_1TrollMidChat.position = ccp(272, 100);
                    boss3_1TrollMidInPlay = TRUE;
                    boss3_1TrollMidTimeInPlay = 0.0f;
                }
            }
            
            if(boss3_1TrollRightInPlay){
                if(boss3_1TrollRightTimeInPlay >= 1.5f){
                    boss3_1StartTrollRightMissed = TRUE;
                    boss3_1TrollRightChat.position = ccp(-1000, -1000);
                    boss3_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss3_1TrollRightTimeInPlay += dt;
                }
            }
            else{
                boss3_1TrollRightResetTimer -= dt;
                if(boss3_1TrollRightResetTimer <= 0){
                    boss3_1SpriteRightMenu.position = ccp(400, 90);
                    boss3_1TrollRightChat.position = ccp(432, 100);
                    boss3_1TrollRightInPlay = TRUE;
                    boss3_1TrollRightTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(boss3_1TrollLeftTouched){
                boss3_1StartTrollLeftDeathAnim = TRUE;
                boss3_1TrollLeftTouched = FALSE;
                if(boss3_1TrollLeftColour == 0){
                    [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftDeadGreen];
                }
                else if(boss3_1TrollLeftColour == 1){
                    [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftDeadGrey];
                }
                else if(boss3_1TrollLeftColour == 2){
                    [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftDeadPurple];
                }
                
                boss3_1TrollLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [boss3_1TrollSpriteLeft runAction:actionFade1];
            }
            else if(boss3_1TrollMidTouched){
                boss3_1StartTrollMidDeathAnim = TRUE;
                boss3_1TrollMidTouched = FALSE;
                if(boss3_1TrollMidColour == 0){
                    [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidDeadGreen];
                }
                else if(boss3_1TrollMidColour == 1){
                    [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidDeadGrey];
                }
                else if(boss3_1TrollMidColour == 2){
                    [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidDeadPurple];
                }
                
                boss3_1TrollMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [boss3_1TrollSpriteMid runAction:actionFade2];
            }
            else if(boss3_1TrollRightTouched){
                boss3_1StartTrollRightDeathAnim = TRUE;
                boss3_1TrollRightTouched = FALSE;
                if(boss3_1TrollRightColour == 0){
                    [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightDeadGreen];
                }
                else if(boss3_1TrollRightColour == 1){
                    [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightDeadGrey];
                }
                else if(boss3_1TrollRightColour == 2){
                    [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightDeadPurple];
                }
                
                boss3_1TrollRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [boss3_1TrollSpriteRight runAction:actionFade3];
            }
            else if(boss3_1BossTopLeftTouched){
                if(boss3_1BossTopLeftHealth <= 25 && boss3_1BossTopLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss3_1BossTopLeftHealth <= 20 && boss3_1BossTopLeftHealth > 15){
                    boss3_1HealthBarTopLeftCover.position = ccp(122, 270);
                }
                else if(boss3_1BossTopLeftHealth <= 15 && boss3_1BossTopLeftHealth > 10){
                    boss3_1HealthBarTopLeftCover.position = ccp(127, 270);
                }
                else if(boss3_1BossTopLeftHealth <= 10 && boss3_1BossTopLeftHealth > 5){
                    boss3_1HealthBarTopLeftCover.position = ccp(132, 270);
                }
                else if(boss3_1BossTopLeftHealth <= 5 && boss3_1BossTopLeftHealth > 0){
                    boss3_1HealthBarTopLeftCover.position = ccp(137, 270);
                }
                else if(boss3_1BossTopLeftHealth <= 0){
                    boss3_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss3_1BossTopLeftDead = TRUE;
                }
                boss3_1BossTopLeftTouched = FALSE;
            }
            else if(boss3_1BossTopRightTouched){
                if(boss3_1BossTopRightHealth <= 25 && boss3_1BossTopRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss3_1BossTopRightHealth <= 20 && boss3_1BossTopRightHealth > 15){
                    boss3_1HealthBarTopRightCover.position = ccp(358, 270);
                }
                else if(boss3_1BossTopRightHealth <= 15 && boss3_1BossTopRightHealth > 10){
                    boss3_1HealthBarTopRightCover.position = ccp(353, 270);
                }
                else if(boss3_1BossTopRightHealth <= 10 && boss3_1BossTopRightHealth > 5){
                    boss3_1HealthBarTopRightCover.position = ccp(348, 270);
                }
                else if(boss3_1BossTopRightHealth <= 5 && boss3_1BossTopRightHealth > 0){
                    boss3_1HealthBarTopRightCover.position = ccp(343, 270);
                }
                else if(boss3_1BossTopRightHealth <= 0){
                    boss3_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss3_1BossTopRightDead = TRUE;
                }
                boss3_1BossTopRightTouched = FALSE;
            }
            else if(boss3_1BossBotLeftTouched){
                if(boss3_1BossBotLeftHealth <= 25 && boss3_1BossBotLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss3_1BossBotLeftHealth <= 20 && boss3_1BossBotLeftHealth > 15){
                    boss3_1HealthBarBotLeftCover.position = ccp(122, 160);
                }
                else if(boss3_1BossBotLeftHealth <= 15 && boss3_1BossBotLeftHealth > 10){
                    boss3_1HealthBarBotLeftCover.position = ccp(127, 160);
                }
                else if(boss3_1BossBotLeftHealth <= 10 && boss3_1BossBotLeftHealth > 5){
                    boss3_1HealthBarBotLeftCover.position = ccp(132, 160);
                }
                else if(boss3_1BossBotLeftHealth <= 5 && boss3_1BossBotLeftHealth > 0){
                    boss3_1HealthBarBotLeftCover.position = ccp(137, 160);
                }
                else if(boss3_1BossBotLeftHealth <= 0){
                    boss3_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss3_1BossBotLeftDead = TRUE;
                }
                boss3_1BossBotLeftTouched = FALSE;
            }
            else if(boss3_1BossBotRightTouched){
                if(boss3_1BossBotRightHealth <= 25 && boss3_1BossBotRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss3_1BossBotRightHealth <= 20 && boss3_1BossBotRightHealth > 15){
                    boss3_1HealthBarBotRightCover.position = ccp(358, 160);
                }
                else if(boss3_1BossBotRightHealth <= 15 && boss3_1BossBotRightHealth > 10){
                    boss3_1HealthBarBotRightCover.position = ccp(353, 160);
                }
                else if(boss3_1BossBotRightHealth <= 10 && boss3_1BossBotRightHealth > 5){
                    boss3_1HealthBarBotRightCover.position = ccp(348, 160);
                }
                else if(boss3_1BossBotRightHealth <= 5 && boss3_1BossBotRightHealth > 0){
                    boss3_1HealthBarBotRightCover.position = ccp(343, 160);
                }
                else if(boss3_1BossBotRightHealth <= 0){
                    boss3_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss3_1BossBotRightDead = TRUE;
                }
                boss3_1BossBotRightTouched = FALSE;
            }
            
            //TROLL DEATH ANIMATIONS
            if(boss3_1StartTrollLeftDeathAnim){
                if(boss3_1TrollLeftFadingOutTimer < 0.25f){
                    boss3_1TrollLeftFadingOutTimer += dt;
                    boss3_1SpriteLeftMenu.position = ccp(boss3_1SpriteLeftMenu.position.x, boss3_1SpriteLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    boss3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss3_1StartTrollLeftDeathAnim = FALSE;
                    boss3_1TrollLeftTimeInPlay = 0.0f;
                    boss3_1TrollLeftFadingOutTimer = 0.0f;
                    boss3_1TrollLeftInPlay = FALSE;
                    boss3_1TrollLeftResetTimer = boss3_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [boss3_1TrollSpriteLeft runAction:actionReset1];
                    
                    if(boss3_1TrollLeftColour == 0){
                        [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftGreen];
                    }
                    else if(boss3_1TrollLeftColour == 1){
                        [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftGrey];
                    }
                    else if(boss3_1TrollLeftColour == 2){
                        [boss3_1TrollSpriteLeft setNormalImage:boss3_1TrollSpriteLeftPurple];
                    }
                    
                    boss3_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss3_1StartTrollMidDeathAnim){
                if(boss3_1TrollMidFadingOutTimer < 0.25f){
                    boss3_1TrollMidFadingOutTimer += dt;
                    boss3_1SpriteMidMenu.position = ccp(boss3_1SpriteMidMenu.position.x, boss3_1SpriteMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    boss3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss3_1StartTrollMidDeathAnim = FALSE;
                    boss3_1TrollMidTimeInPlay = 0.0f;
                    boss3_1TrollMidFadingOutTimer = 0.0f;
                    boss3_1TrollMidInPlay = FALSE;
                    boss3_1TrollMidResetTimer = boss3_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [boss3_1TrollSpriteMid runAction:actionReset2];
                    
                    if(boss3_1TrollMidColour == 0){
                        [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidGreen];
                    }
                    else if(boss3_1TrollMidColour == 1){
                        [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidGrey];
                    }
                    else if(boss3_1TrollMidColour == 2){
                        [boss3_1TrollSpriteMid setNormalImage:boss3_1TrollSpriteMidPurple];
                    }
                    
                    boss3_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss3_1StartTrollRightDeathAnim){
                if(boss3_1TrollRightFadingOutTimer < 0.25f){
                    boss3_1TrollRightFadingOutTimer += dt;
                    boss3_1SpriteRightMenu.position = ccp(boss3_1SpriteRightMenu.position.x, boss3_1SpriteRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 100;
                    boss3_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss3_1StartTrollRightDeathAnim = FALSE;
                    boss3_1TrollRightTimeInPlay = 0.0f;
                    boss3_1TrollRightFadingOutTimer = 0.0f;
                    boss3_1TrollRightInPlay = FALSE;
                    boss3_1TrollRightResetTimer = boss3_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [boss3_1TrollSpriteRight runAction:actionReset3];
                    
                    if(boss3_1TrollRightColour == 0){
                        [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightGreen];
                    }
                    else if(boss3_1TrollRightColour == 1){
                        [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightGrey];
                    }
                    else if(boss3_1TrollRightColour == 2){
                        [boss3_1TrollSpriteRight setNormalImage:boss3_1TrollSpriteRightPurple];
                    }
                    
                    boss3_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(boss3_1StartTrollLeftMissed){
                int i = (arc4random() % (151)) + 100;
                boss3_1TrollRespawnInterval = (float)i / 100.0f;
                boss3_1StartTrollLeftMissed = FALSE;
                boss3_1TrollLeftTimeInPlay = 0.0f;
                boss3_1TrollLeftInPlay = FALSE;
                boss3_1TrollLeftResetTimer = boss3_1TrollRespawnInterval;
                boss3_1LivesRemaining--;
                
                if(boss3_1LivesRemaining == 2){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 1){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 0){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss3_1Tick = 1;
                }
            }
            if(boss3_1StartTrollMidMissed){
                int i = (arc4random() % (151)) + 100;
                boss3_1TrollRespawnInterval = (float)i / 100.0f;
                boss3_1StartTrollMidMissed = FALSE;
                boss3_1TrollMidTimeInPlay = 0.0f;
                boss3_1TrollMidInPlay = FALSE;
                boss3_1TrollMidResetTimer = boss3_1TrollRespawnInterval;
                boss3_1LivesRemaining--;
                
                if(boss3_1LivesRemaining == 2){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 1){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 0){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss3_1Tick = 1;
                }
            }
            if(boss3_1StartTrollRightMissed){
                int i = (arc4random() % (151)) + 100;
                boss3_1TrollRespawnInterval = (float)i / 100.0f;
                boss3_1StartTrollRightMissed = FALSE;
                boss3_1TrollRightTimeInPlay = 0.0f;
                boss3_1TrollRightInPlay = FALSE;
                boss3_1TrollRightResetTimer = boss3_1TrollRespawnInterval;
                boss3_1LivesRemaining--;
                
                if(boss3_1LivesRemaining == 2){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 1){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss3_1LivesRemaining == 0){
                    boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss3_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss3_1Tick = 1;
                }
            }
            
            if(boss3_1BossTopLeftDead){
                if(!boss3_1BossTopLeftFadeScheduled){
                    id actionBossFade1 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss3_1SectionTopLeft runAction:actionBossFade1];
                    boss3_1HealthBarTopLeft.position = ccp(-1000, -1000);
                    boss3_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss3_1BossTopLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss3_1BossTopLeftFadeOutTimer < 2.0f){
                        boss3_1BossTopLeftFadeOutTimer += dt;
                    }
                    else{
                        boss3_1SectionTopLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss3_1BossTopRightDead){
                if(!boss3_1BossTopRightFadeScheduled){
                    id actionBossFade2 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss3_1SectionTopRight runAction:actionBossFade2];
                    boss3_1HealthBarTopRight.position = ccp(-1000, -1000);
                    boss3_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss3_1BossTopRightFadeScheduled = TRUE;
                }
                else{
                    if(boss3_1BossTopRightFadeOutTimer < 2.0f){
                        boss3_1BossTopRightFadeOutTimer += dt;
                    }
                    else{
                        boss3_1SectionTopRight.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss3_1BossBotLeftDead){
                if(!boss3_1BossBotLeftFadeScheduled){
                    id actionBossFade3 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss3_1SectionBotLeft runAction:actionBossFade3];
                    boss3_1HealthBarBotLeft.position = ccp(-1000, -1000);
                    boss3_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss3_1BossBotLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss3_1BossBotLeftFadeOutTimer < 2.0f){
                        boss3_1BossBotLeftFadeOutTimer += dt;
                    }
                    else{
                        boss3_1SectionBotLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss3_1BossBotRightDead){
                if(!boss3_1BossBotRightFadeScheduled){
                    id actionBossFade4 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss3_1SectionBotRight runAction:actionBossFade4];
                    boss3_1HealthBarBotRight.position = ccp(-1000, -1000);
                    boss3_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss3_1BossBotRightFadeScheduled = TRUE;
                }
                else{
                    if(boss3_1BossBotRightFadeOutTimer < 2.0f){
                        boss3_1BossBotRightFadeOutTimer += dt;
                    }
                    else{
                        boss3_1SectionBotRight.position = ccp(-1000, -1000);
                    }
                }
            }
            
            //LIVES CALCULATIONS
            if(boss3_1LivesRemaining == 3){
                //DO NOTHING
            }
            else if(boss3_1LivesRemaining == 2){
                boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(boss3_1LivesRemaining == 1){
                boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(boss3_1LivesRemaining == 0){
                boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
                boss3_1LivesSpriteOne.position = ccp(-1000, -1000);
            }
            else if(boss3_1LivesRemaining <= -1){
                boss3_1Tick = 1;
            }
            
            if(boss3_1BossTopLeftDead && boss3_1BossTopRightDead && boss3_1BossBotLeftDead && boss3_1BossBotRightDead){
                //A WINNER IS YOU
                boss3_1Tick = 2;
            }
            
            boss3_1ScoreInt = boss3_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(boss3_1LivesRemaining >= 0) {
                if(boss3_1CurrentScore != boss3_1PrevScore){
                    if(boss3_1CurrentScore >= 0 && boss3_1CurrentScore < 10){
                        if(boss3_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                        }
                        else if(boss3_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                        }
                        else if(boss3_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                        }
                        else if(boss3_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                        }
                        else if(boss3_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                        }
                        else if(boss3_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                        }
                        else if(boss3_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                        }
                        else if(boss3_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                        }
                        else if(boss3_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                        }
                        else if(boss3_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                    }
                    
                    else if(boss3_1CurrentScore >= 10 && boss3_1CurrentScore <= 99){
                        int lSDS = boss3_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                        }
                        
                        if(boss3_1CurrentScore >= 10 && boss3_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
                        }
                        else if(boss3_1CurrentScore >= 20 && boss3_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
                        }
                        else if(boss3_1CurrentScore >= 30 && boss3_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
                        }
                        else if(boss3_1CurrentScore >= 40 && boss3_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
                        }
                        else if(boss3_1CurrentScore >= 50 && boss3_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
                        }
                        else if(boss3_1CurrentScore >= 60 && boss3_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
                        }
                        else if(boss3_1CurrentScore >= 70 && boss3_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
                        }
                        else if(boss3_1CurrentScore >= 80 && boss3_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
                        }
                        else if(boss3_1CurrentScore >= 90 && boss3_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
                    }
                    
                    else if(boss3_1CurrentScore >= 100 && boss3_1CurrentScore <= 999){
                        int boss3_1Count = 0;
                        while(boss3_1Count < 2){
                            int lSDSs = boss3_1ScoreInt % 10;
                            if(boss3_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                                }
                            }
                            else if(boss3_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
                                }
                            }
                            boss3_1ScoreInt /= 10;
                            boss3_1Count++;
                        }
                        
                        if(boss3_1CurrentScore >= 100 && boss3_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber1_2];
                        }
                        else if(boss3_1CurrentScore >= 200 && boss3_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber2_2];
                        }
                        else if(boss3_1CurrentScore >= 300 && boss3_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber3_2];
                        }
                        else if(boss3_1CurrentScore >= 400 && boss3_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber4_2];
                        }
                        else if(boss3_1CurrentScore >= 500 && boss3_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber5_2];
                        }
                        else if(boss3_1CurrentScore >= 600 && boss3_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber6_2];
                        }
                        else if(boss3_1CurrentScore >= 700 && boss3_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber7_2];
                        }
                        else if(boss3_1CurrentScore >= 800 && boss3_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber8_2];
                        }
                        else if(boss3_1CurrentScore >= 900 && boss3_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
                    }
                    
                    else if(boss3_1CurrentScore >= 1000 && boss3_1CurrentScore <= 9999){
                        int boss3_1Count = 0;
                        while(boss3_1Count < 3){
                            int lSDSsS = boss3_1ScoreInt % 10;
                            if(boss3_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                                }
                            }
                            else if(boss3_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
                                }
                            }
                            else if(boss3_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber9_2];
                                }
                            }
                            boss3_1ScoreInt /= 10;
                            boss3_1Count++;
                            
                            if(boss3_1CurrentScore >= 1000 && boss3_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber1_1];
                            }
                            else if(boss3_1CurrentScore >= 2000 && boss3_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber2_1];
                            }
                            else if(boss3_1CurrentScore >= 3000 && boss3_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber3_1];
                            }
                            else if(boss3_1CurrentScore >= 4000 && boss3_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber4_1];
                            }
                            else if(boss3_1CurrentScore >= 5000 && boss3_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber5_1];
                            }
                            else if(boss3_1CurrentScore >= 6000 && boss3_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber6_1];
                            }
                            else if(boss3_1CurrentScore >= 7000 && boss3_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber7_1];
                            }
                            else if(boss3_1CurrentScore >= 8000 && boss3_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber8_1];
                            }
                            else if(boss3_1CurrentScore >= 9000 && boss3_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(boss3_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
                    }
                }
            }
        }
        else if(boss3_1Tick == 1){
            //GAME OVER
            if(!boss3_1TimeUpDrawn){
                boss3_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                boss3_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: boss3_1TimeUpSprite];
                [self scheduleOnce:@selector(boss3_1GameOver:) delay:2];
                boss3_1TimeUpDrawn = TRUE;
            }
            else{
                if(boss3_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    boss3_1TimeUpSprite.position = ccp(boss3_1TimeUpSprite.position.x, boss3_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(boss3_1Tick == 2){
            //LEVEL COMPLETE
            if(!boss3_1AllTrollsDrawn){
                boss3_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                boss3_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: boss3_1AllTrollsSprite];
                [self scheduleOnce:@selector(boss3_1LevelComplete:) delay:2];
                boss3_1AllTrollsDrawn = TRUE;
            }
            else{
                if(boss3_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    boss3_1AllTrollsSprite.position = ccp(boss3_1AllTrollsSprite.position.x +10, boss3_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadboss3_1Sprites{
    boss3_1VolcanoFrontSpriteLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss3_1VolcanoFrontSpriteMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss3_1VolcanoFrontSpriteRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    boss3_1VolcanoBackSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(leftExtraTouched:)];
    
    boss3_1VolcanoBackSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                          selectedSprite:NULL
                                                                  target:self
                                                                selector:@selector(midExtraTouched:)];
    
    boss3_1VolcanoBackSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                            selectedSprite:NULL
                                                                    target:self
                                                                  selector:@selector(rightExtraTouched:)];
    
    boss3_1VolcanoFrontSpriteLeft.position = ccp(80, 70);
    boss3_1VolcanoBackSpriteLeft.position = ccp(-160, -90);
    boss3_1VolcanoFrontSpriteMid.position = ccp(240, 70);
    boss3_1VolcanoBackSpriteMid.position = ccp(0, -90);
    boss3_1VolcanoFrontSpriteRight.position = ccp(400, 70);
    boss3_1VolcanoBackSpriteRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 3){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                boss3_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss3_1TrollLeftColour = 0;
            }
            else if(i == 1){
                boss3_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss3_1TrollLeftColour = 1;
            }
            else if(i == 2){
                boss3_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss3_1TrollLeftColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                boss3_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss3_1TrollMidColour = 0;
            }
            else if(i == 1){
                boss3_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss3_1TrollMidColour = 1;
            }
            else if(i == 2){
                boss3_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss3_1TrollMidColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                boss3_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss3_1TrollRightColour = 0;
            }
            else if(i == 1){
                boss3_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss3_1TrollRightColour = 1;
            }
            else if(i == 2){
                boss3_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss3_1TrollRightColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 3){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss3_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss3_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss3_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    boss3_1SectionTopLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossTopLeftTouched:)];
    
    boss3_1SectionTopRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_right_128.png"
                                                    selectedImage:NULL
                                                           target:self
                                                         selector:@selector(bossTopRightTouched:)];
    
    boss3_1SectionBotLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossBotLeftTouched:)];
    
    boss3_1SectionBotRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_right_128.png"
                                                    selectedImage:NULL
                                                           target:self
                                                         selector:@selector(bossBotRightTouched:)];
    
    boss3_1SectionTopLeft.position = ccp(-36, 94);
    boss3_1SectionTopRight.position = ccp(36, 94);
    boss3_1SectionBotLeft.position = ccp(-36, 22);
    boss3_1SectionBotRight.position = ccp(36, 22);
    
    boss3_1BossSpriteMenu = [CCMenu menuWithItems: boss3_1SectionTopLeft, boss3_1SectionTopRight, boss3_1SectionBotLeft, boss3_1SectionBotRight, nil];
    
    boss3_1HealthBarTopLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss3_1HealthBarTopRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss3_1HealthBarBotLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss3_1HealthBarBotRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    
    boss3_1HealthBarTopLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss3_1HealthBarTopRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss3_1HealthBarBotLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss3_1HealthBarBotRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    
    boss3_1HealthBarTopLeft.position = ccp(140, 270);
    boss3_1HealthBarTopRight.position = ccp(340, 270);
    boss3_1HealthBarBotLeft.position = ccp(140, 160);
    boss3_1HealthBarBotRight.position = ccp(340, 160);
    
    boss3_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
    boss3_1HealthBarTopRightCover.position = ccp(-1000, -1000);
    boss3_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
    boss3_1HealthBarBotRightCover.position = ccp(-1000, -1000);
    
    boss3_1TrollSpriteLeftGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss3_1TrollSpriteLeftGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss3_1TrollSpriteLeftPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss3_1TrollSpriteMidGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss3_1TrollSpriteMidGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss3_1TrollSpriteMidPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss3_1TrollSpriteRightGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss3_1TrollSpriteRightGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss3_1TrollSpriteRightPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    boss3_1TrollSpriteLeftDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss3_1TrollSpriteLeftDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss3_1TrollSpriteLeftDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss3_1TrollSpriteMidDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss3_1TrollSpriteMidDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss3_1TrollSpriteMidDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss3_1TrollSpriteRightDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss3_1TrollSpriteRightDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss3_1TrollSpriteRightDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    boss3_1SpriteLeftMenu = [CCMenu menuWithItems: boss3_1TrollSpriteLeft, nil];
    boss3_1SpriteMidMenu = [CCMenu menuWithItems: boss3_1TrollSpriteMid, nil];
    boss3_1SpriteRightMenu = [CCMenu menuWithItems: boss3_1TrollSpriteRight, nil];
    
    boss3_1SpriteLeftMenu.position = ccp(-1000, -1000);
    boss3_1SpriteMidMenu.position = ccp(-1000, -1000);
    boss3_1SpriteRightMenu.position = ccp(-1000, -1000);
    
    boss3_1TrollLeftChat.position = ccp(-1000, -1000);
    boss3_1TrollMidChat.position = ccp(-1000, -1000);
    boss3_1TrollRightChat.position = ccp(-1000, -1000);
    
    boss3_1VolcanoMenu = [CCMenu menuWithItems: boss3_1VolcanoBackSpriteLeft, boss3_1VolcanoBackSpriteMid, boss3_1VolcanoBackSpriteRight, nil];
    
    [boss3_1SpriteMidLayer addChild: boss3_1SpriteLeftMenu];
    [boss3_1SpriteMidLayer addChild: boss3_1SpriteMidMenu];
    [boss3_1SpriteMidLayer addChild: boss3_1SpriteRightMenu];
    
    [boss3_1SpriteMidLayer addChild: boss3_1TrollLeftChat];
    [boss3_1SpriteMidLayer addChild: boss3_1TrollMidChat];
    [boss3_1SpriteMidLayer addChild: boss3_1TrollRightChat];
    
    [boss3_1SpriteBackLayer addChild: boss3_1VolcanoMenu];
    
    [boss3_1SpriteFrontLayer addChild: boss3_1VolcanoFrontSpriteLeft];
    [boss3_1SpriteFrontLayer addChild: boss3_1VolcanoFrontSpriteMid];
    [boss3_1SpriteFrontLayer addChild: boss3_1VolcanoFrontSpriteRight];
    
    [boss3_1SpriteBossLayer addChild: boss3_1BossSpriteMenu];
    
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarTopLeft];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarTopRight];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarBotLeft];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarBotRight];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarTopLeftCover];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarTopRightCover];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarBotLeftCover];
    [boss3_1HealthBarsLayer addChild: boss3_1HealthBarBotRightCover];
    
    boss3_1SpriteBackLayer.position = ccp(-1000, -1000);
    boss3_1SpriteMidLayer.position = ccp(-1000, -1000);
    boss3_1SpriteFrontLayer.position = ccp(-1000, -1000);
    boss3_1SpriteBossLayer.position = ccp(0, 0);
    boss3_1HealthBarsLayer.position = ccp(-1000, -1000);
}

-(void) loadboss3_1Text{
    boss3_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss3_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss3_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss3_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss3_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss3_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss3_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss3_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss3_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss3_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss3_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss3_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss3_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss3_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss3_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss3_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss3_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss3_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss3_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss3_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss3_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss3_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss3_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss3_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss3_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss3_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss3_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss3_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss3_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss3_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss3_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss3_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss3_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss3_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss3_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss3_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss3_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss3_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss3_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss3_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    boss3_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                              selectedImage:NULL];
    
    boss3_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                         selectedSprite:NULL];
    
    boss3_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                         selectedSprite:NULL];
    
    boss3_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    boss3_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    boss3_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                              selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        boss3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        boss3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        boss3_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss3_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    
    boss3_1ScoreMenu = [CCMenu menuWithItems:boss3_1ScoreText, boss3_1ScoreSpriteDigitOne, boss3_1ScoreSpriteDigitTwo,
                        boss3_1ScoreSpriteDigitThree, boss3_1ScoreSpriteDigitFour, nil];
    
    [boss3_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    boss3_1ScoreMenu.position = ccp(72, 308);
    
    [boss3_1ScoreSpriteDigitOne setTag: 101];
    [boss3_1ScoreSpriteDigitTwo setTag: 102];
    [boss3_1ScoreSpriteDigitThree setTag: 103];
    [boss3_1ScoreSpriteDigitFour setTag: 104];
    
    boss3_1LivesMenu = [CCMenu menuWithItems: boss3_1LivesText, boss3_1LivesSpriteOne, boss3_1LivesSpriteTwo, boss3_1LivesSpriteThree, nil];
    [boss3_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    boss3_1LivesMenu.position = ccp(400, 308);
    
    [boss3_1StatsLayer addChild: boss3_1ScoreMenu];
    [boss3_1StatsLayer addChild: boss3_1LivesMenu];
    
    boss3_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) loadboss3_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"database"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"granquier"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"kappa"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"kreytos"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"mantin"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"orksome"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"salty"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"wooferz"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charNine"] isEqualToString:@"zeke"]){
        boss3_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        boss3_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        boss3_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    boss3_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    boss3_1DialogueMenu = [CCMenu menuWithItems: boss3_1DialogueSprite, nil];
    
    boss3_1CharacterSprite.position = ccp(25, 100);
    boss3_1CharacterName.position = ccp(120, 86);
    boss3_1DialogueSprite.position = ccp(0, -120);
    boss3_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: boss3_1CharacterSprite];
    [self addChild: boss3_1CharacterName];
    [self addChild: boss3_1TapToContinue];
    [self addChild: boss3_1DialogueMenu];
}

-(void) drawboss3_1Elements{
    boss3_1StatsLayer.position = ccp(0, 0);
    boss3_1SpriteBackLayer.position = ccp(0, 0);
    boss3_1SpriteMidLayer.position = ccp(0, 0);
    boss3_1SpriteFrontLayer.position = ccp(0, 0);
    boss3_1SpriteBossLayer.position = ccp(0, 0);
    boss3_1HealthBarsLayer.position = ccp(0, 0);
    
    if(boss3_1LivesRemaining == 2){
        boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(boss3_1LivesRemaining == 1){
        boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(boss3_1LivesRemaining == 0){
        boss3_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss3_1LivesSpriteTwo.position = ccp(-1000, -1000);
        boss3_1LivesSpriteOne.position = ccp(-1000, -1000);
    }
    
    boss3_1ScoreInt = boss3_1CurrentScore;
    
    if(boss3_1CurrentScore >= 0 && boss3_1CurrentScore < 10){
        if(boss3_1CurrentScore == 0){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
        }
        else if(boss3_1CurrentScore == 1){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
        }
        else if(boss3_1CurrentScore == 2){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
        }
        else if(boss3_1CurrentScore == 3){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
        }
        else if(boss3_1CurrentScore == 4){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
        }
        else if(boss3_1CurrentScore == 5){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
        }
        else if(boss3_1CurrentScore == 6){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
        }
        else if(boss3_1CurrentScore == 7){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
        }
        else if(boss3_1CurrentScore == 8){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
        }
        else if(boss3_1CurrentScore == 9){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
    }
    
    else if(boss3_1CurrentScore >= 10 && boss3_1CurrentScore <= 99){
        int lSDS = boss3_1ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
        }
        
        if(boss3_1CurrentScore >= 10 && boss3_1CurrentScore <= 19){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
        }
        else if(boss3_1CurrentScore >= 20 && boss3_1CurrentScore <= 29){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
        }
        else if(boss3_1CurrentScore >= 30 && boss3_1CurrentScore <= 39){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
        }
        else if(boss3_1CurrentScore >= 40 && boss3_1CurrentScore <= 49){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
        }
        else if(boss3_1CurrentScore >= 50 && boss3_1CurrentScore <= 59){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
        }
        else if(boss3_1CurrentScore >= 60 && boss3_1CurrentScore <= 69){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
        }
        else if(boss3_1CurrentScore >= 70 && boss3_1CurrentScore <= 79){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
        }
        else if(boss3_1CurrentScore >= 80 && boss3_1CurrentScore <= 89){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
        }
        else if(boss3_1CurrentScore >= 90 && boss3_1CurrentScore <= 99){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
    }
    
    else if(boss3_1CurrentScore >= 100 && boss3_1CurrentScore <= 999){
        int boss3_1Count = 0;
        while(boss3_1Count < 2){
            int lSDSs = boss3_1ScoreInt % 10;
            if(boss3_1Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                }
            }
            else if(boss3_1Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
                }
            }
            boss3_1ScoreInt /= 10;
            boss3_1Count++;
        }
        
        if(boss3_1CurrentScore >= 100 && boss3_1CurrentScore <= 199){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber1_2];
        }
        else if(boss3_1CurrentScore >= 200 && boss3_1CurrentScore <= 299){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber2_2];
        }
        else if(boss3_1CurrentScore >= 300 && boss3_1CurrentScore <= 399){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber3_2];
        }
        else if(boss3_1CurrentScore >= 400 && boss3_1CurrentScore <= 499){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber4_2];
        }
        else if(boss3_1CurrentScore >= 500 && boss3_1CurrentScore <= 599){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber5_2];
        }
        else if(boss3_1CurrentScore >= 600 && boss3_1CurrentScore <= 699){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber6_2];
        }
        else if(boss3_1CurrentScore >= 700 && boss3_1CurrentScore <= 799){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber7_2];
        }
        else if(boss3_1CurrentScore >= 800 && boss3_1CurrentScore <= 899){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber8_2];
        }
        else if(boss3_1CurrentScore >= 900 && boss3_1CurrentScore <= 999){
            [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
    }
    
    else if(boss3_1CurrentScore >= 1000 && boss3_1CurrentScore <= 9999){
        int boss3_1Count = 0;
        while(boss3_1Count < 3){
            int lSDSsS = boss3_1ScoreInt % 10;
            if(boss3_1Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber9_4];
                }
            }
            else if(boss3_1Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber9_3];
                }
            }
            else if(boss3_1Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber9_2];
                }
            }
            boss3_1ScoreInt /= 10;
            boss3_1Count++;
            
            if(boss3_1CurrentScore >= 1000 && boss3_1CurrentScore <= 1999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber1_1];
            }
            else if(boss3_1CurrentScore >= 2000 && boss3_1CurrentScore <= 2999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber2_1];
            }
            else if(boss3_1CurrentScore >= 3000 && boss3_1CurrentScore <= 3999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber3_1];
            }
            else if(boss3_1CurrentScore >= 4000 && boss3_1CurrentScore <= 4999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber4_1];
            }
            else if(boss3_1CurrentScore >= 5000 && boss3_1CurrentScore <= 5999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber5_1];
            }
            else if(boss3_1CurrentScore >= 6000 && boss3_1CurrentScore <= 6999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber6_1];
            }
            else if(boss3_1CurrentScore >= 7000 && boss3_1CurrentScore <= 7999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber7_1];
            }
            else if(boss3_1CurrentScore >= 8000 && boss3_1CurrentScore <= 8999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber8_1];
            }
            else if(boss3_1CurrentScore >= 9000 && boss3_1CurrentScore <= 9999){
                [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber9_1];
            }
        }
    }
    
    else if(boss3_1CurrentScore <= 0){
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 104] setNormalImage:boss3_1ScoreNumber0_4];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 103] setNormalImage:boss3_1ScoreNumber0_3];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 102] setNormalImage:boss3_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss3_1ScoreMenu getChildByTag: 101] setNormalImage:boss3_1ScoreNumber0_1];
    }
}

-(void) leftTouched:(id)sender{
    if(boss3_1StartTrollLeftDeathAnim || boss3_1StartTrollLeftMissed || boss3_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollLeftTouched = TRUE;
    }
}

-(void) midTouched:(id)sender{
    if(boss3_1StartTrollMidDeathAnim || boss3_1StartTrollMidMissed || boss3_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollMidTouched = TRUE;
    }
}

-(void) rightTouched:(id)sender{
    if(boss3_1StartTrollRightDeathAnim || boss3_1StartTrollRightMissed || boss3_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollRightTouched = TRUE;
    }
}

-(void) leftExtraTouched:(id)sender{
    if(boss3_1StartTrollLeftDeathAnim || boss3_1StartTrollLeftMissed || boss3_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollLeftTouched = TRUE;
    }
}

-(void) midExtraTouched:(id)sender{
    if(boss3_1StartTrollMidDeathAnim || boss3_1StartTrollMidMissed || boss3_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollMidTouched = TRUE;
    }
}

-(void) rightExtraTouched:(id)sender{
    if(boss3_1StartTrollRightDeathAnim || boss3_1StartTrollRightMissed || boss3_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss3_1TrollRightTouched = TRUE;
    }
}

-(void) bossTopLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss3_1TrollLeftInPlay){
        if(!boss3_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollMidInPlay){
        if(!boss3_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollRightInPlay){
        if(!boss3_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss3_1LivesRemaining--;
    }
    else{
        boss3_1BossTopLeftTouched = TRUE;
        boss3_1CurrentScore += 5;
        boss3_1BossTopLeftHealth--;
    }
}

-(void) bossTopRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss3_1TrollLeftInPlay){
        if(!boss3_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollMidInPlay){
        if(!boss3_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollRightInPlay){
        if(!boss3_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss3_1LivesRemaining--;
    }
    else{
        boss3_1BossTopRightTouched = TRUE;
        boss3_1CurrentScore += 5;
        boss3_1BossTopRightHealth--;
    }
}

-(void) bossBotLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss3_1TrollLeftInPlay){
        if(!boss3_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollMidInPlay){
        if(!boss3_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollRightInPlay){
        if(!boss3_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss3_1LivesRemaining--;
    }
    else{
        boss3_1BossBotLeftTouched = TRUE;
        boss3_1CurrentScore += 5;
        boss3_1BossBotLeftHealth--;
    }
}

-(void) bossBotRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss3_1TrollLeftInPlay){
        if(!boss3_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollMidInPlay){
        if(!boss3_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss3_1TrollRightInPlay){
        if(!boss3_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss3_1LivesRemaining--;
    }
    else{
        boss3_1BossBotRightTouched = TRUE;
        boss3_1CurrentScore += 5;
        boss3_1BossBotRightHealth--;
    }
}

-(void) boss3_1GameOver:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) boss3_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:boss3_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:boss3_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:9 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameOver node] withColor:ccWHITE]];
}

-(void) dialogueTouched:(id)sender{
    boss3_1DialogueTouched = TRUE;
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [boss3_1TrollLeftChat release];
    [boss3_1TrollMidChat release];
    [boss3_1TrollRightChat release];
    [boss3_1HealthBarTopLeft release];
    [boss3_1HealthBarTopRight release];
    [boss3_1HealthBarBotLeft release];
    [boss3_1HealthBarBotRight release];
    [boss3_1HealthBarTopLeftCover release];
    [boss3_1HealthBarTopRightCover release];
    [boss3_1HealthBarBotLeftCover release];
    [boss3_1HealthBarBotRightCover release];
    [boss3_1TrollSpriteLeftGreen release];
    [boss3_1TrollSpriteLeftGrey release];
    [boss3_1TrollSpriteLeftPurple release];
    [boss3_1TrollSpriteMidGreen release];
    [boss3_1TrollSpriteMidGrey release];
    [boss3_1TrollSpriteMidPurple release];
    [boss3_1TrollSpriteRightGreen release];
    [boss3_1TrollSpriteRightGrey release];
    [boss3_1TrollSpriteRightPurple release];
    [boss3_1TrollSpriteLeftDeadGreen release];
    [boss3_1TrollSpriteLeftDeadGrey release];
    [boss3_1TrollSpriteLeftDeadPurple release];
    [boss3_1TrollSpriteMidDeadGreen release];
    [boss3_1TrollSpriteMidDeadGrey release];
    [boss3_1TrollSpriteMidDeadPurple release];
    [boss3_1TrollSpriteRightDeadGreen release];
    [boss3_1TrollSpriteRightDeadGrey release];
    [boss3_1TrollSpriteRightDeadPurple release];
    [boss3_1ScoreNumber0_1 release];
    [boss3_1ScoreNumber0_2 release];
    [boss3_1ScoreNumber0_3 release];
    [boss3_1ScoreNumber0_4 release];
    [boss3_1ScoreNumber1_1 release];
    [boss3_1ScoreNumber1_2 release];
    [boss3_1ScoreNumber1_3 release];
    [boss3_1ScoreNumber1_4 release];
    [boss3_1ScoreNumber2_1 release];
    [boss3_1ScoreNumber2_2 release];
    [boss3_1ScoreNumber2_3 release];
    [boss3_1ScoreNumber2_4 release];
    [boss3_1ScoreNumber3_1 release];
    [boss3_1ScoreNumber3_2 release];
    [boss3_1ScoreNumber3_3 release];
    [boss3_1ScoreNumber3_4 release];
    [boss3_1ScoreNumber4_1 release];
    [boss3_1ScoreNumber4_2 release];
    [boss3_1ScoreNumber4_3 release];
    [boss3_1ScoreNumber4_4 release];
    [boss3_1ScoreNumber5_1 release];
    [boss3_1ScoreNumber5_2 release];
    [boss3_1ScoreNumber5_3 release];
    [boss3_1ScoreNumber5_4 release];
    [boss3_1ScoreNumber6_1 release];
    [boss3_1ScoreNumber6_2 release];
    [boss3_1ScoreNumber6_3 release];
    [boss3_1ScoreNumber6_4 release];
    [boss3_1ScoreNumber7_1 release];
    [boss3_1ScoreNumber7_2 release];
    [boss3_1ScoreNumber7_3 release];
    [boss3_1ScoreNumber7_4 release];
    [boss3_1ScoreNumber8_1 release];
    [boss3_1ScoreNumber8_2 release];
    [boss3_1ScoreNumber8_3 release];
    [boss3_1ScoreNumber8_4 release];
    [boss3_1ScoreNumber9_1 release];
    [boss3_1ScoreNumber9_2 release];
    [boss3_1ScoreNumber9_3 release];
    [boss3_1ScoreNumber9_4 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
