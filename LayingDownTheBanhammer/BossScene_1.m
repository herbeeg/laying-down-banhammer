//
//  BossScene_1.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 20/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "BossScene_1.h"
#import "GameOver.h"
#import "GameResults.h"
#import "SimpleAudioEngine.h"

#pragma mark - BossScene_1

CCScene *boss1_1Background;

CCLayer *boss1_1StatsLayer;
CCLayer *boss1_1SpriteFrontLayer;
CCLayer *boss1_1SpriteMidLayer;
CCLayer *boss1_1SpriteBackLayer;
CCLayer *boss1_1SpriteBossLayer;
CCLayer *boss1_1HealthBarsLayer;

CCMenu *boss1_1DialogueMenu;
CCMenu *boss1_1BossSpriteMenu;

CCMenu *boss1_1SpriteLeftMenu;
CCMenu *boss1_1SpriteMidMenu;
CCMenu *boss1_1SpriteRightMenu;

CCMenu *boss1_1VolcanoMenu;

CCMenu *boss1_1LivesMenu;
CCMenu *boss1_1ScoreMenu;

CCSprite *boss1_1CharacterSprite;
CCSprite *boss1_1CharacterName;
CCMenuItemImage *boss1_1DialogueSprite;

CCSprite *boss1_1TrollLeftChat;
CCSprite *boss1_1TrollMidChat;
CCSprite *boss1_1TrollRightChat;

CCMenuItemImage *boss1_1SectionTopLeft;
CCMenuItemImage *boss1_1SectionTopRight;
CCMenuItemImage *boss1_1SectionBotLeft;
CCMenuItemImage *boss1_1SectionBotRight;

CCSprite *boss1_1HealthBarTopLeft;
CCSprite *boss1_1HealthBarTopRight;
CCSprite *boss1_1HealthBarBotLeft;
CCSprite *boss1_1HealthBarBotRight;
CCSprite *boss1_1HealthBarTopLeftCover;
CCSprite *boss1_1HealthBarTopRightCover;
CCSprite *boss1_1HealthBarBotLeftCover;
CCSprite *boss1_1HealthBarBotRightCover;

CCSprite *boss1_1VolcanoFrontSpriteLeft;
CCMenuItemSprite *boss1_1VolcanoBackSpriteLeft;
CCSprite *boss1_1VolcanoFrontSpriteMid;
CCMenuItemSprite *boss1_1VolcanoBackSpriteMid;
CCSprite *boss1_1VolcanoFrontSpriteRight;
CCMenuItemSprite *boss1_1VolcanoBackSpriteRight;

CCMenuItemSprite *boss1_1TrollSpriteLeft;
CCMenuItemSprite *boss1_1TrollSpriteMid;
CCMenuItemSprite *boss1_1TrollSpriteRight;

CCMenuItemImage *boss1_1ScoreText;
CCMenuItemSprite *boss1_1ScoreSpriteDigitOne;
CCMenuItemSprite *boss1_1ScoreSpriteDigitTwo;
CCMenuItemSprite *boss1_1ScoreSpriteDigitThree;
CCMenuItemSprite *boss1_1ScoreSpriteDigitFour;

CCSprite *boss1_1TrollLeftChat;
CCSprite *boss1_1TrollMidChat;
CCSprite *boss1_1TrollRightChat;

CCSprite *boss1_1TrollSpriteLeftGreen;
CCSprite *boss1_1TrollSpriteLeftGrey;
CCSprite *boss1_1TrollSpriteLeftPurple;
CCSprite *boss1_1TrollSpriteMidGreen;
CCSprite *boss1_1TrollSpriteMidGrey;
CCSprite *boss1_1TrollSpriteMidPurple;
CCSprite *boss1_1TrollSpriteRightGreen;
CCSprite *boss1_1TrollSpriteRightGrey;
CCSprite *boss1_1TrollSpriteRightPurple;

CCSprite *boss1_1TrollSpriteLeftDeadGreen;
CCSprite *boss1_1TrollSpriteLeftDeadGrey;
CCSprite *boss1_1TrollSpriteLeftDeadPurple;
CCSprite *boss1_1TrollSpriteMidDeadGreen;
CCSprite *boss1_1TrollSpriteMidDeadGrey;
CCSprite *boss1_1TrollSpriteMidDeadPurple;
CCSprite *boss1_1TrollSpriteRightDeadGreen;
CCSprite *boss1_1TrollSpriteRightDeadGrey;
CCSprite *boss1_1TrollSpriteRightDeadPurple;

CCSprite *boss1_1ScoreNumber0_1;
CCSprite *boss1_1ScoreNumber0_2;
CCSprite *boss1_1ScoreNumber0_3;
CCSprite *boss1_1ScoreNumber0_4;
CCSprite *boss1_1ScoreNumber1_1;
CCSprite *boss1_1ScoreNumber1_2;
CCSprite *boss1_1ScoreNumber1_3;
CCSprite *boss1_1ScoreNumber1_4;
CCSprite *boss1_1ScoreNumber2_1;
CCSprite *boss1_1ScoreNumber2_2;
CCSprite *boss1_1ScoreNumber2_3;
CCSprite *boss1_1ScoreNumber2_4;
CCSprite *boss1_1ScoreNumber3_1;
CCSprite *boss1_1ScoreNumber3_2;
CCSprite *boss1_1ScoreNumber3_3;
CCSprite *boss1_1ScoreNumber3_4;
CCSprite *boss1_1ScoreNumber4_1;
CCSprite *boss1_1ScoreNumber4_2;
CCSprite *boss1_1ScoreNumber4_3;
CCSprite *boss1_1ScoreNumber4_4;
CCSprite *boss1_1ScoreNumber5_1;
CCSprite *boss1_1ScoreNumber5_2;
CCSprite *boss1_1ScoreNumber5_3;
CCSprite *boss1_1ScoreNumber5_4;
CCSprite *boss1_1ScoreNumber6_1;
CCSprite *boss1_1ScoreNumber6_2;
CCSprite *boss1_1ScoreNumber6_3;
CCSprite *boss1_1ScoreNumber6_4;
CCSprite *boss1_1ScoreNumber7_1;
CCSprite *boss1_1ScoreNumber7_2;
CCSprite *boss1_1ScoreNumber7_3;
CCSprite *boss1_1ScoreNumber7_4;
CCSprite *boss1_1ScoreNumber8_1;
CCSprite *boss1_1ScoreNumber8_2;
CCSprite *boss1_1ScoreNumber8_3;
CCSprite *boss1_1ScoreNumber8_4;
CCSprite *boss1_1ScoreNumber9_1;
CCSprite *boss1_1ScoreNumber9_2;
CCSprite *boss1_1ScoreNumber9_3;
CCSprite *boss1_1ScoreNumber9_4;

CCMenuItemImage *boss1_1LivesText;
CCMenuItemSprite *boss1_1LivesSpriteOne;
CCMenuItemSprite *boss1_1LivesSpriteTwo;
CCMenuItemSprite *boss1_1LivesSpriteThree;

CCSprite *boss1_1TapToContinue;

CCSprite *boss1_1TimeUpSprite;
BOOL boss1_1TimeUpDrawn = FALSE;

CCSprite *boss1_1AllTrollsSprite;
BOOL boss1_1AllTrollsDrawn = FALSE;

int boss1_1TrollLeftColour = -1;
int boss1_1TrollMidColour = -1;
int boss1_1TrollRightColour = -1;

int boss1_1BossTopLeftHealth = 25;
int boss1_1BossTopRightHealth = 25;
int boss1_1BossBotLeftHealth = 25;
int boss1_1BossBotRightHealth = 25;

BOOL boss1_1BossTopLeftDead = FALSE;
BOOL boss1_1BossTopRightDead = FALSE;
BOOL boss1_1BossBotLeftDead = FALSE;
BOOL boss1_1BossBotRightDead = FALSE;

BOOL boss1_1BossTopLeftFadeScheduled = FALSE;
BOOL boss1_1BossTopRightFadeScheduled = FALSE;
BOOL boss1_1BossBotLeftFadeScheduled = FALSE;
BOOL boss1_1BossBotRightFadeScheduled = FALSE;

float boss1_1BossTopLeftFadeOutTimer = 0.0f;
float boss1_1BossTopRightFadeOutTimer = 0.0f;
float boss1_1BossBotLeftFadeOutTimer = 0.0f;
float boss1_1BossBotRightFadeOutTimer = 0.0f;

float boss1_1TrollRespawnInterval = 0.0f;

float boss1_1TrollLeftResetTimer = 0.5f;
float boss1_1TrollMidResetTimer = 0.8f;
float boss1_1TrollRightResetTimer = 0.2f;

float boss1_1TrollLeftTimeInPlay = 0.0f;
float boss1_1TrollMidTimeInPlay = 0.0f;
float boss1_1TrollRightTimeInPlay = 0.0f;

float boss1_1TrollLeftFadingOutTimer = 0.0f;
float boss1_1TrollMidFadingOutTimer = 0.0f;
float boss1_1TrollRightFadingOutTimer = 0.0f;

BOOL boss1_1TrollLeftTouched = FALSE;
BOOL boss1_1TrollMidTouched = FALSE;
BOOL boss1_1TrollRightTouched = FALSE;
BOOL boss1_1BossTopLeftTouched = FALSE;
BOOL boss1_1BossTopRightTouched = FALSE;
BOOL boss1_1BossBotLeftTouched = FALSE;
BOOL boss1_1BossBotRightTouched = FALSE;

BOOL boss1_1TrollLeftInPlay = FALSE;
BOOL boss1_1TrollMidInPlay = FALSE;
BOOL boss1_1TrollRightInPlay = FALSE;

BOOL boss1_1StartTrollLeftDeathAnim = FALSE;
BOOL boss1_1StartTrollMidDeathAnim = FALSE;
BOOL boss1_1StartTrollRightDeathAnim = FALSE;

BOOL boss1_1StartTrollLeftMissed = FALSE;
BOOL boss1_1StartTrollMidMissed = FALSE;
BOOL boss1_1StartTrollRightMissed = FALSE;

int boss1_1ScoreInt = 0;
int boss1_1CurrentScore = 0;
int boss1_1PrevScore = 0;
int boss1_1LivesRemaining = 0;

BOOL boss1_1StartRound = FALSE;
BOOL boss1_1DialogueTouched = FALSE;

ccTime boss1_1GameTime = 0.0f;
BOOL boss1_1AllChange = TRUE;
int boss1_1Tick = 0;

@implementation BossScene_1

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	BossScene_1 *layer = [BossScene_1 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        boss1_1StatsLayer = [CCLayer node];
        boss1_1SpriteFrontLayer = [CCLayer node];
        boss1_1SpriteMidLayer = [CCLayer node];
        boss1_1SpriteBackLayer = [CCLayer node];
        boss1_1SpriteBossLayer = [CCLayer node];
        boss1_1HealthBarsLayer = [CCLayer node];
        
        boss1_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        boss1_1Background.position = ccp(240, 160);
        
        [self addChild: boss1_1Background];
        [self addChild: boss1_1StatsLayer];
        [self addChild: boss1_1SpriteBackLayer];
        [self addChild: boss1_1SpriteFrontLayer];
        [self addChild: boss1_1SpriteMidLayer];
        [self addChild: boss1_1SpriteBossLayer];
        [self addChild: boss1_1HealthBarsLayer];
        
        [self loadBoss1_1Sprites];
        [self loadBoss1_1Text];
        [self loadBoss1_1Dialogue];
    }
    
    boss1_1TimeUpDrawn = FALSE;
    boss1_1AllTrollsDrawn = FALSE;
    boss1_1TrollLeftColour = -1;
    boss1_1TrollMidColour = -1;
    boss1_1TrollRightColour = -1;
    boss1_1BossTopLeftHealth = 25;
    boss1_1BossTopRightHealth = 25;
    boss1_1BossBotLeftHealth = 25;
    boss1_1BossBotRightHealth = 25;
    boss1_1BossTopLeftDead = FALSE;
    boss1_1BossTopRightDead = FALSE;
    boss1_1BossBotLeftDead = FALSE;
    boss1_1BossBotRightDead = FALSE;
    boss1_1BossTopLeftFadeScheduled = FALSE;
    boss1_1BossTopRightFadeScheduled = FALSE;
    boss1_1BossBotLeftFadeScheduled = FALSE;
    boss1_1BossBotRightFadeScheduled = FALSE;
    boss1_1BossTopLeftFadeOutTimer = 0.0f;
    boss1_1BossTopRightFadeOutTimer = 0.0f;
    boss1_1BossBotLeftFadeOutTimer = 0.0f;
    boss1_1BossBotRightFadeOutTimer = 0.0f;
    boss1_1TrollRespawnInterval = 0.0f;
    boss1_1TrollLeftResetTimer = 0.5f;
    boss1_1TrollMidResetTimer = 0.8f;
    boss1_1TrollRightResetTimer = 0.2f;
    boss1_1TrollLeftTimeInPlay = 0.0f;
    boss1_1TrollMidTimeInPlay = 0.0f;
    boss1_1TrollRightTimeInPlay = 0.0f;
    boss1_1TrollLeftFadingOutTimer = 0.0f;
    boss1_1TrollMidFadingOutTimer = 0.0f;
    boss1_1TrollRightFadingOutTimer = 0.0f;
    boss1_1TrollLeftTouched = FALSE;
    boss1_1TrollMidTouched = FALSE;
    boss1_1TrollRightTouched = FALSE;
    boss1_1BossTopLeftTouched = FALSE;
    boss1_1BossTopRightTouched = FALSE;
    boss1_1BossBotLeftTouched = FALSE;
    boss1_1BossBotRightTouched = FALSE;
    boss1_1TrollLeftInPlay = FALSE;
    boss1_1TrollMidInPlay = FALSE;
    boss1_1TrollRightInPlay = FALSE;
    boss1_1StartTrollLeftDeathAnim = FALSE;
    boss1_1StartTrollMidDeathAnim = FALSE;
    boss1_1StartTrollRightDeathAnim = FALSE;
    boss1_1StartTrollLeftMissed = FALSE;
    boss1_1StartTrollMidMissed = FALSE;
    boss1_1StartTrollRightMissed = FALSE;
    boss1_1ScoreInt = 0;
    boss1_1StartRound = FALSE;
    boss1_1DialogueTouched = FALSE;
    boss1_1AllChange = TRUE;
    boss1_1Tick = 0;
    boss1_1GameTime = 0.0f;
    
    boss1_1CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss1_1PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss1_1LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!boss1_1StartRound){
        if(boss1_1DialogueTouched){
            boss1_1DialogueSprite.position = ccp(-1000, -1000);
            boss1_1CharacterSprite.position = ccp(-1000, -1000);
            boss1_1CharacterName.position = ccp(-1000, -1000);
            boss1_1TapToContinue.position = ccp(-1000, -1000);
            boss1_1DialogueTouched = FALSE;
            boss1_1StartRound = TRUE;
        }
    }
    else{
        boss1_1GameTime += dt;
        
        if(boss1_1Tick == 0){
            if(boss1_1AllChange){
                [self drawBoss1_1Elements];
                boss1_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(boss1_1TrollLeftInPlay){
                if(boss1_1TrollLeftTimeInPlay >= 4.5f){
                    boss1_1StartTrollLeftMissed = TRUE;
                    boss1_1TrollLeftChat.position = ccp(-1000, -1000);
                    boss1_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss1_1TrollLeftTimeInPlay += dt;
                }
            }
            else{
                boss1_1TrollLeftResetTimer -= dt;
                if(boss1_1TrollLeftResetTimer <= 0){
                    boss1_1SpriteLeftMenu.position = ccp(80, 90);
                    boss1_1TrollLeftChat.position = ccp(112, 100);
                    boss1_1TrollLeftInPlay = TRUE;
                    boss1_1TrollLeftTimeInPlay = 0.0f;
                }
            }
            
            if(boss1_1TrollMidInPlay){
                if(boss1_1TrollMidTimeInPlay >= 4.5f){
                    boss1_1StartTrollMidMissed = TRUE;
                    boss1_1TrollMidChat.position = ccp(-1000, -1000);
                    boss1_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss1_1TrollMidTimeInPlay += dt;
                }
            }
            else{
                boss1_1TrollMidResetTimer -= dt;
                if(boss1_1TrollMidResetTimer <= 0){
                    boss1_1SpriteMidMenu.position = ccp(240, 90);
                    boss1_1TrollMidChat.position = ccp(272, 100);
                    boss1_1TrollMidInPlay = TRUE;
                    boss1_1TrollMidTimeInPlay = 0.0f;
                }
            }
            
            if(boss1_1TrollRightInPlay){
                if(boss1_1TrollRightTimeInPlay >= 4.5f){
                    boss1_1StartTrollRightMissed = TRUE;
                    boss1_1TrollRightChat.position = ccp(-1000, -1000);
                    boss1_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss1_1TrollRightTimeInPlay += dt;
                }
            }
            else{
                boss1_1TrollRightResetTimer -= dt;
                if(boss1_1TrollRightResetTimer <= 0){
                    boss1_1SpriteRightMenu.position = ccp(400, 90);
                    boss1_1TrollRightChat.position = ccp(432, 100);
                    boss1_1TrollRightInPlay = TRUE;
                    boss1_1TrollRightTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(boss1_1TrollLeftTouched){
                boss1_1StartTrollLeftDeathAnim = TRUE;
                boss1_1TrollLeftTouched = FALSE;
                if(boss1_1TrollLeftColour == 0){
                    [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftDeadGreen];
                }
                else if(boss1_1TrollLeftColour == 1){
                    [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftDeadGrey];
                }
                else if(boss1_1TrollLeftColour == 2){
                    [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftDeadPurple];
                }
                
                boss1_1TrollLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [boss1_1TrollSpriteLeft runAction:actionFade1];
            }
            else if(boss1_1TrollMidTouched){
                boss1_1StartTrollMidDeathAnim = TRUE;
                boss1_1TrollMidTouched = FALSE;
                if(boss1_1TrollMidColour == 0){
                    [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidDeadGreen];
                }
                else if(boss1_1TrollMidColour == 1){
                    [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidDeadGrey];
                }
                else if(boss1_1TrollMidColour == 2){
                    [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidDeadPurple];
                }
                
                boss1_1TrollMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [boss1_1TrollSpriteMid runAction:actionFade2];
            }
            else if(boss1_1TrollRightTouched){
                boss1_1StartTrollRightDeathAnim = TRUE;
                boss1_1TrollRightTouched = FALSE;
                if(boss1_1TrollRightColour == 0){
                    [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightDeadGreen];
                }
                else if(boss1_1TrollRightColour == 1){
                    [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightDeadGrey];
                }
                else if(boss1_1TrollRightColour == 2){
                    [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightDeadPurple];
                }
                
                boss1_1TrollRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [boss1_1TrollSpriteRight runAction:actionFade3];
            }
            else if(boss1_1BossTopLeftTouched){
                if(boss1_1BossTopLeftHealth <= 25 && boss1_1BossTopLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss1_1BossTopLeftHealth <= 20 && boss1_1BossTopLeftHealth > 15){
                    boss1_1HealthBarTopLeftCover.position = ccp(122, 270);
                }
                else if(boss1_1BossTopLeftHealth <= 15 && boss1_1BossTopLeftHealth > 10){
                    boss1_1HealthBarTopLeftCover.position = ccp(127, 270);
                }
                else if(boss1_1BossTopLeftHealth <= 10 && boss1_1BossTopLeftHealth > 5){
                    boss1_1HealthBarTopLeftCover.position = ccp(132, 270);
                }
                else if(boss1_1BossTopLeftHealth <= 5 && boss1_1BossTopLeftHealth > 0){
                    boss1_1HealthBarTopLeftCover.position = ccp(137, 270);
                }
                else if(boss1_1BossTopLeftHealth <= 0){
                    boss1_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss1_1BossTopLeftDead = TRUE;
                }
                boss1_1BossTopLeftTouched = FALSE;
            }
            else if(boss1_1BossTopRightTouched){
                if(boss1_1BossTopRightHealth <= 25 && boss1_1BossTopRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss1_1BossTopRightHealth <= 20 && boss1_1BossTopRightHealth > 15){
                    boss1_1HealthBarTopRightCover.position = ccp(358, 270);
                }
                else if(boss1_1BossTopRightHealth <= 15 && boss1_1BossTopRightHealth > 10){
                    boss1_1HealthBarTopRightCover.position = ccp(353, 270);
                }
                else if(boss1_1BossTopRightHealth <= 10 && boss1_1BossTopRightHealth > 5){
                    boss1_1HealthBarTopRightCover.position = ccp(348, 270);
                }
                else if(boss1_1BossTopRightHealth <= 5 && boss1_1BossTopRightHealth > 0){
                    boss1_1HealthBarTopRightCover.position = ccp(343, 270);
                }
                else if(boss1_1BossTopRightHealth <= 0){
                    boss1_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss1_1BossTopRightDead = TRUE;
                }
                boss1_1BossTopRightTouched = FALSE;
            }
            else if(boss1_1BossBotLeftTouched){
                if(boss1_1BossBotLeftHealth <= 25 && boss1_1BossBotLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss1_1BossBotLeftHealth <= 20 && boss1_1BossBotLeftHealth > 15){
                    boss1_1HealthBarBotLeftCover.position = ccp(122, 160);
                }
                else if(boss1_1BossBotLeftHealth <= 15 && boss1_1BossBotLeftHealth > 10){
                    boss1_1HealthBarBotLeftCover.position = ccp(127, 160);
                }
                else if(boss1_1BossBotLeftHealth <= 10 && boss1_1BossBotLeftHealth > 5){
                    boss1_1HealthBarBotLeftCover.position = ccp(132, 160);
                }
                else if(boss1_1BossBotLeftHealth <= 5 && boss1_1BossBotLeftHealth > 0){
                    boss1_1HealthBarBotLeftCover.position = ccp(137, 160);
                }
                else if(boss1_1BossBotLeftHealth <= 0){
                    boss1_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss1_1BossBotLeftDead = TRUE;
                }
                boss1_1BossBotLeftTouched = FALSE;
            }
            else if(boss1_1BossBotRightTouched){
                if(boss1_1BossBotRightHealth <= 25 && boss1_1BossBotRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss1_1BossBotRightHealth <= 20 && boss1_1BossBotRightHealth > 15){
                    boss1_1HealthBarBotRightCover.position = ccp(358, 160);
                }
                else if(boss1_1BossBotRightHealth <= 15 && boss1_1BossBotRightHealth > 10){
                    boss1_1HealthBarBotRightCover.position = ccp(353, 160);
                }
                else if(boss1_1BossBotRightHealth <= 10 && boss1_1BossBotRightHealth > 5){
                    boss1_1HealthBarBotRightCover.position = ccp(348, 160);
                }
                else if(boss1_1BossBotRightHealth <= 5 && boss1_1BossBotRightHealth > 0){
                    boss1_1HealthBarBotRightCover.position = ccp(343, 160);
                }
                else if(boss1_1BossBotRightHealth <= 0){
                    boss1_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss1_1BossBotRightDead = TRUE;
                }
                boss1_1BossBotRightTouched = FALSE;
            }
            
            //TROLL DEATH ANIMATIONS
            if(boss1_1StartTrollLeftDeathAnim){
                if(boss1_1TrollLeftFadingOutTimer < 0.25f){
                    boss1_1TrollLeftFadingOutTimer += dt;
                    boss1_1SpriteLeftMenu.position = ccp(boss1_1SpriteLeftMenu.position.x, boss1_1SpriteLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    boss1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss1_1StartTrollLeftDeathAnim = FALSE;
                    boss1_1TrollLeftTimeInPlay = 0.0f;
                    boss1_1TrollLeftFadingOutTimer = 0.0f;
                    boss1_1TrollLeftInPlay = FALSE;
                    boss1_1TrollLeftResetTimer = boss1_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [boss1_1TrollSpriteLeft runAction:actionReset1];
                    
                    if(boss1_1TrollLeftColour == 0){
                        [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftGreen];
                    }
                    else if(boss1_1TrollLeftColour == 1){
                        [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftGrey];
                    }
                    else if(boss1_1TrollLeftColour == 2){
                        [boss1_1TrollSpriteLeft setNormalImage:boss1_1TrollSpriteLeftPurple];
                    }
                    
                    boss1_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss1_1StartTrollMidDeathAnim){
                if(boss1_1TrollMidFadingOutTimer < 0.25f){
                    boss1_1TrollMidFadingOutTimer += dt;
                    boss1_1SpriteMidMenu.position = ccp(boss1_1SpriteMidMenu.position.x, boss1_1SpriteMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    boss1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss1_1StartTrollMidDeathAnim = FALSE;
                    boss1_1TrollMidTimeInPlay = 0.0f;
                    boss1_1TrollMidFadingOutTimer = 0.0f;
                    boss1_1TrollMidInPlay = FALSE;
                    boss1_1TrollMidResetTimer = boss1_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [boss1_1TrollSpriteMid runAction:actionReset2];
                    
                    if(boss1_1TrollMidColour == 0){
                        [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidGreen];
                    }
                    else if(boss1_1TrollMidColour == 1){
                        [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidGrey];
                    }
                    else if(boss1_1TrollMidColour == 2){
                        [boss1_1TrollSpriteMid setNormalImage:boss1_1TrollSpriteMidPurple];
                    }
                    
                    boss1_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss1_1StartTrollRightDeathAnim){
                if(boss1_1TrollRightFadingOutTimer < 0.25f){
                    boss1_1TrollRightFadingOutTimer += dt;
                    boss1_1SpriteRightMenu.position = ccp(boss1_1SpriteRightMenu.position.x, boss1_1SpriteRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (301)) + 200;
                    boss1_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss1_1StartTrollRightDeathAnim = FALSE;
                    boss1_1TrollRightTimeInPlay = 0.0f;
                    boss1_1TrollRightFadingOutTimer = 0.0f;
                    boss1_1TrollRightInPlay = FALSE;
                    boss1_1TrollRightResetTimer = boss1_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [boss1_1TrollSpriteRight runAction:actionReset3];
                    
                    if(boss1_1TrollRightColour == 0){
                        [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightGreen];
                    }
                    else if(boss1_1TrollRightColour == 1){
                        [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightGrey];
                    }
                    else if(boss1_1TrollRightColour == 2){
                        [boss1_1TrollSpriteRight setNormalImage:boss1_1TrollSpriteRightPurple];
                    }
                    
                    boss1_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(boss1_1StartTrollLeftMissed){
                int i = (arc4random() % (301)) + 200;
                boss1_1TrollRespawnInterval = (float)i / 100.0f;
                boss1_1StartTrollLeftMissed = FALSE;
                boss1_1TrollLeftTimeInPlay = 0.0f;
                boss1_1TrollLeftInPlay = FALSE;
                boss1_1TrollLeftResetTimer = boss1_1TrollRespawnInterval;
                boss1_1LivesRemaining--;
                
                if(boss1_1LivesRemaining == 2){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 1){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 0){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss1_1Tick = 1;
                }
            }
            if(boss1_1StartTrollMidMissed){
                int i = (arc4random() % (301)) + 200;
                boss1_1TrollRespawnInterval = (float)i / 100.0f;
                boss1_1StartTrollMidMissed = FALSE;
                boss1_1TrollMidTimeInPlay = 0.0f;
                boss1_1TrollMidInPlay = FALSE;
                boss1_1TrollMidResetTimer = boss1_1TrollRespawnInterval;
                boss1_1LivesRemaining--;
                
                if(boss1_1LivesRemaining == 2){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 1){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 0){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss1_1Tick = 1;
                }
            }
            if(boss1_1StartTrollRightMissed){
                int i = (arc4random() % (301)) + 200;
                boss1_1TrollRespawnInterval = (float)i / 100.0f;
                boss1_1StartTrollRightMissed = FALSE;
                boss1_1TrollRightTimeInPlay = 0.0f;
                boss1_1TrollRightInPlay = FALSE;
                boss1_1TrollRightResetTimer = boss1_1TrollRespawnInterval;
                boss1_1LivesRemaining--;
                
                if(boss1_1LivesRemaining == 2){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 1){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss1_1LivesRemaining == 0){
                    boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss1_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss1_1Tick = 1;
                }
            }
            
            if(boss1_1BossTopLeftDead){
                if(!boss1_1BossTopLeftFadeScheduled){
                    id actionBossFade1 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss1_1SectionTopLeft runAction:actionBossFade1];
                    boss1_1HealthBarTopLeft.position = ccp(-1000, -1000);
                    boss1_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss1_1BossTopLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss1_1BossTopLeftFadeOutTimer < 2.0f){
                        boss1_1BossTopLeftFadeOutTimer += dt;
                    }
                    else{
                        boss1_1SectionTopLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss1_1BossTopRightDead){
                if(!boss1_1BossTopRightFadeScheduled){
                    id actionBossFade2 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss1_1SectionTopRight runAction:actionBossFade2];
                    boss1_1HealthBarTopRight.position = ccp(-1000, -1000);
                    boss1_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss1_1BossTopRightFadeScheduled = TRUE;
                }
                else{
                    if(boss1_1BossTopRightFadeOutTimer < 2.0f){
                        boss1_1BossTopRightFadeOutTimer += dt;
                    }
                    else{
                        boss1_1SectionTopRight.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss1_1BossBotLeftDead){
                if(!boss1_1BossBotLeftFadeScheduled){
                    id actionBossFade3 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss1_1SectionBotLeft runAction:actionBossFade3];
                    boss1_1HealthBarBotLeft.position = ccp(-1000, -1000);
                    boss1_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss1_1BossBotLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss1_1BossBotLeftFadeOutTimer < 2.0f){
                        boss1_1BossBotLeftFadeOutTimer += dt;
                    }
                    else{
                        boss1_1SectionBotLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss1_1BossBotRightDead){
                if(!boss1_1BossBotRightFadeScheduled){
                    id actionBossFade4 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss1_1SectionBotRight runAction:actionBossFade4];
                    boss1_1HealthBarBotRight.position = ccp(-1000, -1000);
                    boss1_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss1_1BossBotRightFadeScheduled = TRUE;
                }
                else{
                    if(boss1_1BossBotRightFadeOutTimer < 2.0f){
                        boss1_1BossBotRightFadeOutTimer += dt;
                    }
                    else{
                        boss1_1SectionBotRight.position = ccp(-1000, -1000);
                    }
                }
            }
            
            //LIVES CALCULATIONS
            if(boss1_1LivesRemaining == 3){
                //DO NOTHING
            }
            else if(boss1_1LivesRemaining == 2){
                boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(boss1_1LivesRemaining == 1){
                boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(boss1_1LivesRemaining == 0){
                boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
                boss1_1LivesSpriteOne.position = ccp(-1000, -1000);
            }
            else if(boss1_1LivesRemaining <= -1){
                boss1_1Tick = 1;
            }
            
            if(boss1_1BossTopLeftDead && boss1_1BossTopRightDead && boss1_1BossBotLeftDead && boss1_1BossBotRightDead){
                //A WINNER IS YOU
                boss1_1Tick = 2;
            }
            
            boss1_1ScoreInt = boss1_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(boss1_1LivesRemaining >= 0) {
                if(boss1_1CurrentScore != boss1_1PrevScore){
                    if(boss1_1CurrentScore >= 0 && boss1_1CurrentScore < 10){
                        if(boss1_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                        }
                        else if(boss1_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                        }
                        else if(boss1_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                        }
                        else if(boss1_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                        }
                        else if(boss1_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                        }
                        else if(boss1_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                        }
                        else if(boss1_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                        }
                        else if(boss1_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                        }
                        else if(boss1_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                        }
                        else if(boss1_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                    }
                    
                    else if(boss1_1CurrentScore >= 10 && boss1_1CurrentScore <= 99){
                        int lSDS = boss1_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                        }
                        
                        if(boss1_1CurrentScore >= 10 && boss1_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
                        }
                        else if(boss1_1CurrentScore >= 20 && boss1_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
                        }
                        else if(boss1_1CurrentScore >= 30 && boss1_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
                        }
                        else if(boss1_1CurrentScore >= 40 && boss1_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
                        }
                        else if(boss1_1CurrentScore >= 50 && boss1_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
                        }
                        else if(boss1_1CurrentScore >= 60 && boss1_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
                        }
                        else if(boss1_1CurrentScore >= 70 && boss1_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
                        }
                        else if(boss1_1CurrentScore >= 80 && boss1_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
                        }
                        else if(boss1_1CurrentScore >= 90 && boss1_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
                    }
                    
                    else if(boss1_1CurrentScore >= 100 && boss1_1CurrentScore <= 999){
                        int boss1_1Count = 0;
                        while(boss1_1Count < 2){
                            int lSDSs = boss1_1ScoreInt % 10;
                            if(boss1_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                                }
                            }
                            else if(boss1_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
                                }
                            }
                            boss1_1ScoreInt /= 10;
                            boss1_1Count++;
                        }
                        
                        if(boss1_1CurrentScore >= 100 && boss1_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber1_2];
                        }
                        else if(boss1_1CurrentScore >= 200 && boss1_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber2_2];
                        }
                        else if(boss1_1CurrentScore >= 300 && boss1_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber3_2];
                        }
                        else if(boss1_1CurrentScore >= 400 && boss1_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber4_2];
                        }
                        else if(boss1_1CurrentScore >= 500 && boss1_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber5_2];
                        }
                        else if(boss1_1CurrentScore >= 600 && boss1_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber6_2];
                        }
                        else if(boss1_1CurrentScore >= 700 && boss1_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber7_2];
                        }
                        else if(boss1_1CurrentScore >= 800 && boss1_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber8_2];
                        }
                        else if(boss1_1CurrentScore >= 900 && boss1_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
                    }
                    
                    else if(boss1_1CurrentScore >= 1000 && boss1_1CurrentScore <= 9999){
                        int boss1_1Count = 0;
                        while(boss1_1Count < 3){
                            int lSDSsS = boss1_1ScoreInt % 10;
                            if(boss1_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                                }
                            }
                            else if(boss1_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
                                }
                            }
                            else if(boss1_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber9_2];
                                }
                            }
                            boss1_1ScoreInt /= 10;
                            boss1_1Count++;
                            
                            if(boss1_1CurrentScore >= 1000 && boss1_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber1_1];
                            }
                            else if(boss1_1CurrentScore >= 2000 && boss1_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber2_1];
                            }
                            else if(boss1_1CurrentScore >= 3000 && boss1_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber3_1];
                            }
                            else if(boss1_1CurrentScore >= 4000 && boss1_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber4_1];
                            }
                            else if(boss1_1CurrentScore >= 5000 && boss1_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber5_1];
                            }
                            else if(boss1_1CurrentScore >= 6000 && boss1_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber6_1];
                            }
                            else if(boss1_1CurrentScore >= 7000 && boss1_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber7_1];
                            }
                            else if(boss1_1CurrentScore >= 8000 && boss1_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber8_1];
                            }
                            else if(boss1_1CurrentScore >= 9000 && boss1_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(boss1_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
                    }
                }
            }
        }
        else if(boss1_1Tick == 1){
            //GAME OVER
            if(!boss1_1TimeUpDrawn){
                boss1_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                boss1_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: boss1_1TimeUpSprite];
                [self scheduleOnce:@selector(boss1_1GameOver:) delay:2];
                boss1_1TimeUpDrawn = TRUE;
            }
            else{
                if(boss1_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    boss1_1TimeUpSprite.position = ccp(boss1_1TimeUpSprite.position.x, boss1_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(boss1_1Tick == 2){
            //LEVEL COMPLETE
            if(!boss1_1AllTrollsDrawn){
                boss1_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                boss1_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: boss1_1AllTrollsSprite];
                [self scheduleOnce:@selector(boss1_1LevelComplete:) delay:2];
                boss1_1AllTrollsDrawn = TRUE;
            }
            else{
                if(boss1_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    boss1_1AllTrollsSprite.position = ccp(boss1_1AllTrollsSprite.position.x +10, boss1_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadBoss1_1Sprites{
    boss1_1VolcanoFrontSpriteLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss1_1VolcanoFrontSpriteMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss1_1VolcanoFrontSpriteRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    boss1_1VolcanoBackSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                               selectedSprite:NULL
                                                                       target:self
                                                                     selector:@selector(leftExtraTouched:)];
    
    boss1_1VolcanoBackSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                              selectedSprite:NULL
                                                                      target:self
                                                                    selector:@selector(midExtraTouched:)];
    
    boss1_1VolcanoBackSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(rightExtraTouched:)];
    
    boss1_1VolcanoFrontSpriteLeft.position = ccp(80, 70);
    boss1_1VolcanoBackSpriteLeft.position = ccp(-160, -90);
    boss1_1VolcanoFrontSpriteMid.position = ccp(240, 70);
    boss1_1VolcanoBackSpriteMid.position = ccp(0, -90);
    boss1_1VolcanoFrontSpriteRight.position = ccp(400, 70);
    boss1_1VolcanoBackSpriteRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 3){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                boss1_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(leftTouched:)];
                
                boss1_1TrollLeftColour = 0;
            }
            else if(i == 1){
                boss1_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(leftTouched:)];
                
                boss1_1TrollLeftColour = 1;
            }
            else if(i == 2){
                boss1_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                     selectedSprite:NULL
                                                                             target:self
                                                                           selector:@selector(leftTouched:)];
                
                boss1_1TrollLeftColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                boss1_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midTouched:)];
                
                boss1_1TrollMidColour = 0;
            }
            else if(i == 1){
                boss1_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midTouched:)];
                
                boss1_1TrollMidColour = 1;
            }
            else if(i == 2){
                boss1_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                    selectedSprite:NULL
                                                                            target:self
                                                                          selector:@selector(midTouched:)];
                
                boss1_1TrollMidColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                boss1_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(rightTouched:)];
                
                boss1_1TrollRightColour = 0;
            }
            else if(i == 1){
                boss1_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(rightTouched:)];
                
                boss1_1TrollRightColour = 1;
            }
            else if(i == 2){
                boss1_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                      selectedSprite:NULL
                                                                              target:self
                                                                            selector:@selector(rightTouched:)];
                
                boss1_1TrollRightColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 3){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss1_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss1_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss1_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    boss1_1SectionTopLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossTopLeftTouched:)];
    
    boss1_1SectionTopRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_right_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossTopRightTouched:)];
    
    boss1_1SectionBotLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossBotLeftTouched:)];
    
    boss1_1SectionBotRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_right_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossBotRightTouched:)];
    
    boss1_1SectionTopLeft.position = ccp(-36, 94);
    boss1_1SectionTopRight.position = ccp(36, 94);
    boss1_1SectionBotLeft.position = ccp(-36, 22);
    boss1_1SectionBotRight.position = ccp(36, 22);
    
    boss1_1BossSpriteMenu = [CCMenu menuWithItems: boss1_1SectionTopLeft, boss1_1SectionTopRight, boss1_1SectionBotLeft, boss1_1SectionBotRight, nil];
    
    boss1_1HealthBarTopLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss1_1HealthBarTopRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss1_1HealthBarBotLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss1_1HealthBarBotRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    
    boss1_1HealthBarTopLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss1_1HealthBarTopRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss1_1HealthBarBotLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss1_1HealthBarBotRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    
    boss1_1HealthBarTopLeft.position = ccp(140, 270);
    boss1_1HealthBarTopRight.position = ccp(340, 270);
    boss1_1HealthBarBotLeft.position = ccp(140, 160);
    boss1_1HealthBarBotRight.position = ccp(340, 160);
    
    boss1_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
    boss1_1HealthBarTopRightCover.position = ccp(-1000, -1000);
    boss1_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
    boss1_1HealthBarBotRightCover.position = ccp(-1000, -1000);
    
    boss1_1TrollSpriteLeftGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss1_1TrollSpriteLeftGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss1_1TrollSpriteLeftPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss1_1TrollSpriteMidGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss1_1TrollSpriteMidGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss1_1TrollSpriteMidPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss1_1TrollSpriteRightGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss1_1TrollSpriteRightGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss1_1TrollSpriteRightPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    boss1_1TrollSpriteLeftDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss1_1TrollSpriteLeftDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss1_1TrollSpriteLeftDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss1_1TrollSpriteMidDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss1_1TrollSpriteMidDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss1_1TrollSpriteMidDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss1_1TrollSpriteRightDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss1_1TrollSpriteRightDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss1_1TrollSpriteRightDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    boss1_1SpriteLeftMenu = [CCMenu menuWithItems: boss1_1TrollSpriteLeft, nil];
    boss1_1SpriteMidMenu = [CCMenu menuWithItems: boss1_1TrollSpriteMid, nil];
    boss1_1SpriteRightMenu = [CCMenu menuWithItems: boss1_1TrollSpriteRight, nil];
    
    boss1_1SpriteLeftMenu.position = ccp(-1000, -1000);
    boss1_1SpriteMidMenu.position = ccp(-1000, -1000);
    boss1_1SpriteRightMenu.position = ccp(-1000, -1000);
    
    boss1_1TrollLeftChat.position = ccp(-1000, -1000);
    boss1_1TrollMidChat.position = ccp(-1000, -1000);
    boss1_1TrollRightChat.position = ccp(-1000, -1000);
    
    boss1_1VolcanoMenu = [CCMenu menuWithItems: boss1_1VolcanoBackSpriteLeft, boss1_1VolcanoBackSpriteMid, boss1_1VolcanoBackSpriteRight, nil];
    
    [boss1_1SpriteMidLayer addChild: boss1_1SpriteLeftMenu];
    [boss1_1SpriteMidLayer addChild: boss1_1SpriteMidMenu];
    [boss1_1SpriteMidLayer addChild: boss1_1SpriteRightMenu];
    
    [boss1_1SpriteMidLayer addChild: boss1_1TrollLeftChat];
    [boss1_1SpriteMidLayer addChild: boss1_1TrollMidChat];
    [boss1_1SpriteMidLayer addChild: boss1_1TrollRightChat];
    
    [boss1_1SpriteBackLayer addChild: boss1_1VolcanoMenu];
    
    [boss1_1SpriteFrontLayer addChild: boss1_1VolcanoFrontSpriteLeft];
    [boss1_1SpriteFrontLayer addChild: boss1_1VolcanoFrontSpriteMid];
    [boss1_1SpriteFrontLayer addChild: boss1_1VolcanoFrontSpriteRight];
    
    [boss1_1SpriteBossLayer addChild: boss1_1BossSpriteMenu];
    
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarTopLeft];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarTopRight];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarBotLeft];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarBotRight];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarTopLeftCover];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarTopRightCover];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarBotLeftCover];
    [boss1_1HealthBarsLayer addChild: boss1_1HealthBarBotRightCover];
    
    boss1_1SpriteBackLayer.position = ccp(-1000, -1000);
    boss1_1SpriteMidLayer.position = ccp(-1000, -1000);
    boss1_1SpriteFrontLayer.position = ccp(-1000, -1000);
    boss1_1SpriteBossLayer.position = ccp(0, 0);
    boss1_1HealthBarsLayer.position = ccp(-1000, -1000);
}

-(void) loadBoss1_1Text{
    boss1_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    boss1_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    boss1_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    boss1_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    boss1_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    boss1_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    boss1_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    boss1_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    boss1_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    boss1_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    boss1_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    boss1_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    boss1_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    boss1_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    boss1_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    boss1_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    boss1_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    boss1_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    boss1_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    boss1_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    boss1_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    boss1_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    boss1_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    boss1_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    boss1_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    boss1_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    boss1_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    boss1_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    boss1_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    boss1_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    boss1_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    boss1_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    boss1_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    boss1_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    boss1_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    boss1_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    boss1_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    boss1_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    boss1_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    boss1_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    boss1_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text.png"
                                               selectedImage:NULL];
    
    boss1_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    boss1_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    boss1_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                            selectedSprite:NULL];
    
    boss1_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                           selectedSprite:NULL];
    
    boss1_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text.png"
                                               selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        boss1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        boss1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        boss1_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                         selectedSprite:NULL];
        
        boss1_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                           selectedSprite:NULL];
    }
    
    boss1_1ScoreMenu = [CCMenu menuWithItems:boss1_1ScoreText, boss1_1ScoreSpriteDigitOne, boss1_1ScoreSpriteDigitTwo,
                         boss1_1ScoreSpriteDigitThree, boss1_1ScoreSpriteDigitFour, nil];
    
    [boss1_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    boss1_1ScoreMenu.position = ccp(72, 308);
    
    [boss1_1ScoreSpriteDigitOne setTag: 101];
    [boss1_1ScoreSpriteDigitTwo setTag: 102];
    [boss1_1ScoreSpriteDigitThree setTag: 103];
    [boss1_1ScoreSpriteDigitFour setTag: 104];
    
    boss1_1LivesMenu = [CCMenu menuWithItems: boss1_1LivesText, boss1_1LivesSpriteOne, boss1_1LivesSpriteTwo, boss1_1LivesSpriteThree, nil];
    [boss1_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    boss1_1LivesMenu.position = ccp(400, 308);
    
    [boss1_1StatsLayer addChild: boss1_1ScoreMenu];
    [boss1_1StatsLayer addChild: boss1_1LivesMenu];
    
    boss1_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) loadBoss1_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"database"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"granquier"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"kappa"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"kreytos"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"mantin"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"orksome"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"salty"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"wooferz"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charThree"] isEqualToString:@"zeke"]){
        boss1_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        boss1_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        boss1_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_3.png"
                                                        selectedImage:NULL
                                                               target:self
                                                             selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    boss1_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    boss1_1DialogueMenu = [CCMenu menuWithItems: boss1_1DialogueSprite, nil];
    
    boss1_1CharacterSprite.position = ccp(25, 100);
    boss1_1CharacterName.position = ccp(120, 86);
    boss1_1DialogueSprite.position = ccp(0, -120);
    boss1_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: boss1_1CharacterSprite];
    [self addChild: boss1_1CharacterName];
    [self addChild: boss1_1TapToContinue];
    [self addChild: boss1_1DialogueMenu];
}

-(void) drawBoss1_1Elements{
    boss1_1StatsLayer.position = ccp(0, 0);
    boss1_1SpriteBackLayer.position = ccp(0, 0);
    boss1_1SpriteMidLayer.position = ccp(0, 0);
    boss1_1SpriteFrontLayer.position = ccp(0, 0);
    boss1_1SpriteBossLayer.position = ccp(0, 0);
    boss1_1HealthBarsLayer.position = ccp(0, 0);
    
    if(boss1_1LivesRemaining == 2){
        boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(boss1_1LivesRemaining == 1){
        boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(boss1_1LivesRemaining == 0){
        boss1_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss1_1LivesSpriteTwo.position = ccp(-1000, -1000);
        boss1_1LivesSpriteOne.position = ccp(-1000, -1000);
    }
    
    boss1_1ScoreInt = boss1_1CurrentScore;
    
    if(boss1_1CurrentScore >= 0 && boss1_1CurrentScore < 10){
        if(boss1_1CurrentScore == 0){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
        }
        else if(boss1_1CurrentScore == 1){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
        }
        else if(boss1_1CurrentScore == 2){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
        }
        else if(boss1_1CurrentScore == 3){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
        }
        else if(boss1_1CurrentScore == 4){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
        }
        else if(boss1_1CurrentScore == 5){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
        }
        else if(boss1_1CurrentScore == 6){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
        }
        else if(boss1_1CurrentScore == 7){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
        }
        else if(boss1_1CurrentScore == 8){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
        }
        else if(boss1_1CurrentScore == 9){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
    }
    
    else if(boss1_1CurrentScore >= 10 && boss1_1CurrentScore <= 99){
        int lSDS = boss1_1ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
        }
        
        if(boss1_1CurrentScore >= 10 && boss1_1CurrentScore <= 19){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
        }
        else if(boss1_1CurrentScore >= 20 && boss1_1CurrentScore <= 29){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
        }
        else if(boss1_1CurrentScore >= 30 && boss1_1CurrentScore <= 39){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
        }
        else if(boss1_1CurrentScore >= 40 && boss1_1CurrentScore <= 49){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
        }
        else if(boss1_1CurrentScore >= 50 && boss1_1CurrentScore <= 59){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
        }
        else if(boss1_1CurrentScore >= 60 && boss1_1CurrentScore <= 69){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
        }
        else if(boss1_1CurrentScore >= 70 && boss1_1CurrentScore <= 79){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
        }
        else if(boss1_1CurrentScore >= 80 && boss1_1CurrentScore <= 89){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
        }
        else if(boss1_1CurrentScore >= 90 && boss1_1CurrentScore <= 99){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
    }
    
    else if(boss1_1CurrentScore >= 100 && boss1_1CurrentScore <= 999){
        int boss1_1Count = 0;
        while(boss1_1Count < 2){
            int lSDSs = boss1_1ScoreInt % 10;
            if(boss1_1Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                }
            }
            else if(boss1_1Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
                }
            }
            boss1_1ScoreInt /= 10;
            boss1_1Count++;
        }
        
        if(boss1_1CurrentScore >= 100 && boss1_1CurrentScore <= 199){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber1_2];
        }
        else if(boss1_1CurrentScore >= 200 && boss1_1CurrentScore <= 299){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber2_2];
        }
        else if(boss1_1CurrentScore >= 300 && boss1_1CurrentScore <= 399){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber3_2];
        }
        else if(boss1_1CurrentScore >= 400 && boss1_1CurrentScore <= 499){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber4_2];
        }
        else if(boss1_1CurrentScore >= 500 && boss1_1CurrentScore <= 599){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber5_2];
        }
        else if(boss1_1CurrentScore >= 600 && boss1_1CurrentScore <= 699){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber6_2];
        }
        else if(boss1_1CurrentScore >= 700 && boss1_1CurrentScore <= 799){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber7_2];
        }
        else if(boss1_1CurrentScore >= 800 && boss1_1CurrentScore <= 899){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber8_2];
        }
        else if(boss1_1CurrentScore >= 900 && boss1_1CurrentScore <= 999){
            [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
    }
    
    else if(boss1_1CurrentScore >= 1000 && boss1_1CurrentScore <= 9999){
        int boss1_1Count = 0;
        while(boss1_1Count < 3){
            int lSDSsS = boss1_1ScoreInt % 10;
            if(boss1_1Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber9_4];
                }
            }
            else if(boss1_1Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber9_3];
                }
            }
            else if(boss1_1Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber9_2];
                }
            }
            boss1_1ScoreInt /= 10;
            boss1_1Count++;
            
            if(boss1_1CurrentScore >= 1000 && boss1_1CurrentScore <= 1999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber1_1];
            }
            else if(boss1_1CurrentScore >= 2000 && boss1_1CurrentScore <= 2999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber2_1];
            }
            else if(boss1_1CurrentScore >= 3000 && boss1_1CurrentScore <= 3999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber3_1];
            }
            else if(boss1_1CurrentScore >= 4000 && boss1_1CurrentScore <= 4999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber4_1];
            }
            else if(boss1_1CurrentScore >= 5000 && boss1_1CurrentScore <= 5999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber5_1];
            }
            else if(boss1_1CurrentScore >= 6000 && boss1_1CurrentScore <= 6999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber6_1];
            }
            else if(boss1_1CurrentScore >= 7000 && boss1_1CurrentScore <= 7999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber7_1];
            }
            else if(boss1_1CurrentScore >= 8000 && boss1_1CurrentScore <= 8999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber8_1];
            }
            else if(boss1_1CurrentScore >= 9000 && boss1_1CurrentScore <= 9999){
                [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber9_1];
            }
        }
    }
    
    else if(boss1_1CurrentScore <= 0){
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 104] setNormalImage:boss1_1ScoreNumber0_4];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 103] setNormalImage:boss1_1ScoreNumber0_3];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 102] setNormalImage:boss1_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss1_1ScoreMenu getChildByTag: 101] setNormalImage:boss1_1ScoreNumber0_1];
    }
}

-(void) leftTouched:(id)sender{
    if(boss1_1StartTrollLeftDeathAnim || boss1_1StartTrollLeftMissed || boss1_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollLeftTouched = TRUE;
    }
}

-(void) midTouched:(id)sender{
    if(boss1_1StartTrollMidDeathAnim || boss1_1StartTrollMidMissed || boss1_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollMidTouched = TRUE;
    }
}

-(void) rightTouched:(id)sender{
    if(boss1_1StartTrollRightDeathAnim || boss1_1StartTrollRightMissed || boss1_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollRightTouched = TRUE;
    }
}

-(void) leftExtraTouched:(id)sender{
    if(boss1_1StartTrollLeftDeathAnim || boss1_1StartTrollLeftMissed || boss1_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollLeftTouched = TRUE;
    }
}

-(void) midExtraTouched:(id)sender{
    if(boss1_1StartTrollMidDeathAnim || boss1_1StartTrollMidMissed || boss1_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollMidTouched = TRUE;
    }
}

-(void) rightExtraTouched:(id)sender{
    if(boss1_1StartTrollRightDeathAnim || boss1_1StartTrollRightMissed || boss1_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss1_1TrollRightTouched = TRUE;
    }
}

-(void) bossTopLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss1_1TrollLeftInPlay){
        if(!boss1_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollMidInPlay){
        if(!boss1_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollRightInPlay){
        if(!boss1_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }

    if(badTouch){
        boss1_1LivesRemaining--;
    }
    else{
        boss1_1BossTopLeftTouched = TRUE;
        boss1_1CurrentScore += 5;
        boss1_1BossTopLeftHealth--;
    }
}

-(void) bossTopRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss1_1TrollLeftInPlay){
        if(!boss1_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollMidInPlay){
        if(!boss1_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollRightInPlay){
        if(!boss1_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss1_1LivesRemaining--;
    }
    else{
        boss1_1BossTopRightTouched = TRUE;
        boss1_1CurrentScore += 5;
        boss1_1BossTopRightHealth--;
    }
}

-(void) bossBotLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss1_1TrollLeftInPlay){
        if(!boss1_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollMidInPlay){
        if(!boss1_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollRightInPlay){
        if(!boss1_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss1_1LivesRemaining--;
    }
    else{
        boss1_1BossBotLeftTouched = TRUE;
        boss1_1CurrentScore += 5;
        boss1_1BossBotLeftHealth--;
    }
}

-(void) bossBotRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss1_1TrollLeftInPlay){
        if(!boss1_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollMidInPlay){
        if(!boss1_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss1_1TrollRightInPlay){
        if(!boss1_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss1_1LivesRemaining--;
    }
    else{
        boss1_1BossBotRightTouched = TRUE;
        boss1_1CurrentScore += 5;
        boss1_1BossBotRightHealth--;
    }
}

-(void) boss1_1GameOver:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) boss1_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:boss1_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:boss1_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameResults node] withColor:ccWHITE]];
}

-(void) dialogueTouched:(id)sender{
    boss1_1DialogueTouched = TRUE;
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [boss1_1TrollLeftChat release];
    [boss1_1TrollMidChat release];
    [boss1_1TrollRightChat release];
    [boss1_1HealthBarTopLeft release];
    [boss1_1HealthBarTopRight release];
    [boss1_1HealthBarBotLeft release];
    [boss1_1HealthBarBotRight release];
    [boss1_1HealthBarTopLeftCover release];
    [boss1_1HealthBarTopRightCover release];
    [boss1_1HealthBarBotLeftCover release];
    [boss1_1HealthBarBotRightCover release];
    [boss1_1TrollSpriteLeftGreen release];
    [boss1_1TrollSpriteLeftGrey release];
    [boss1_1TrollSpriteLeftPurple release];
    [boss1_1TrollSpriteMidGreen release];
    [boss1_1TrollSpriteMidGrey release];
    [boss1_1TrollSpriteMidPurple release];
    [boss1_1TrollSpriteRightGreen release];
    [boss1_1TrollSpriteRightGrey release];
    [boss1_1TrollSpriteRightPurple release];
    [boss1_1TrollSpriteLeftDeadGreen release];
    [boss1_1TrollSpriteLeftDeadGrey release];
    [boss1_1TrollSpriteLeftDeadPurple release];
    [boss1_1TrollSpriteMidDeadGreen release];
    [boss1_1TrollSpriteMidDeadGrey release];
    [boss1_1TrollSpriteMidDeadPurple release];
    [boss1_1TrollSpriteRightDeadGreen release];
    [boss1_1TrollSpriteRightDeadGrey release];
    [boss1_1TrollSpriteRightDeadPurple release];
    [boss1_1ScoreNumber0_1 release];
    [boss1_1ScoreNumber0_2 release];
    [boss1_1ScoreNumber0_3 release];
    [boss1_1ScoreNumber0_4 release];
    [boss1_1ScoreNumber1_1 release];
    [boss1_1ScoreNumber1_2 release];
    [boss1_1ScoreNumber1_3 release];
    [boss1_1ScoreNumber1_4 release];
    [boss1_1ScoreNumber2_1 release];
    [boss1_1ScoreNumber2_2 release];
    [boss1_1ScoreNumber2_3 release];
    [boss1_1ScoreNumber2_4 release];
    [boss1_1ScoreNumber3_1 release];
    [boss1_1ScoreNumber3_2 release];
    [boss1_1ScoreNumber3_3 release];
    [boss1_1ScoreNumber3_4 release];
    [boss1_1ScoreNumber4_1 release];
    [boss1_1ScoreNumber4_2 release];
    [boss1_1ScoreNumber4_3 release];
    [boss1_1ScoreNumber4_4 release];
    [boss1_1ScoreNumber5_1 release];
    [boss1_1ScoreNumber5_2 release];
    [boss1_1ScoreNumber5_3 release];
    [boss1_1ScoreNumber5_4 release];
    [boss1_1ScoreNumber6_1 release];
    [boss1_1ScoreNumber6_2 release];
    [boss1_1ScoreNumber6_3 release];
    [boss1_1ScoreNumber6_4 release];
    [boss1_1ScoreNumber7_1 release];
    [boss1_1ScoreNumber7_2 release];
    [boss1_1ScoreNumber7_3 release];
    [boss1_1ScoreNumber7_4 release];
    [boss1_1ScoreNumber8_1 release];
    [boss1_1ScoreNumber8_2 release];
    [boss1_1ScoreNumber8_3 release];
    [boss1_1ScoreNumber8_4 release];
    [boss1_1ScoreNumber9_1 release];
    [boss1_1ScoreNumber9_2 release];
    [boss1_1ScoreNumber9_3 release];
    [boss1_1ScoreNumber9_4 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
