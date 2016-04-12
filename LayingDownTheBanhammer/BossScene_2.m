//
//  BossScene_2.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 08/02/2013.
//  Last Edited - 20/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "BossScene_2.h"
#import "GameOver.h"
#import "GameResults.h"
#import "SimpleAudioEngine.h"

#pragma mark - BossScene_2

CCScene *boss2_1Background;

CCLayer *boss2_1StatsLayer;
CCLayer *boss2_1SpriteFrontLayer;
CCLayer *boss2_1SpriteMidLayer;
CCLayer *boss2_1SpriteBackLayer;
CCLayer *boss2_1SpriteBossLayer;
CCLayer *boss2_1HealthBarsLayer;

CCMenu *boss2_1DialogueMenu;
CCMenu *boss2_1BossSpriteMenu;

CCMenu *boss2_1SpriteLeftMenu;
CCMenu *boss2_1SpriteMidMenu;
CCMenu *boss2_1SpriteRightMenu;

CCMenu *boss2_1VolcanoMenu;

CCMenu *boss2_1LivesMenu;
CCMenu *boss2_1ScoreMenu;

CCSprite *boss2_1CharacterSprite;
CCSprite *boss2_1CharacterName;
CCMenuItemImage *boss2_1DialogueSprite;

CCSprite *boss2_1TrollLeftChat;
CCSprite *boss2_1TrollMidChat;
CCSprite *boss2_1TrollRightChat;

CCMenuItemImage *boss2_1SectionTopLeft;
CCMenuItemImage *boss2_1SectionTopRight;
CCMenuItemImage *boss2_1SectionBotLeft;
CCMenuItemImage *boss2_1SectionBotRight;

CCSprite *boss2_1HealthBarTopLeft;
CCSprite *boss2_1HealthBarTopRight;
CCSprite *boss2_1HealthBarBotLeft;
CCSprite *boss2_1HealthBarBotRight;
CCSprite *boss2_1HealthBarTopLeftCover;
CCSprite *boss2_1HealthBarTopRightCover;
CCSprite *boss2_1HealthBarBotLeftCover;
CCSprite *boss2_1HealthBarBotRightCover;

CCSprite *boss2_1VolcanoFrontSpriteLeft;
CCMenuItemSprite *boss2_1VolcanoBackSpriteLeft;
CCSprite *boss2_1VolcanoFrontSpriteMid;
CCMenuItemSprite *boss2_1VolcanoBackSpriteMid;
CCSprite *boss2_1VolcanoFrontSpriteRight;
CCMenuItemSprite *boss2_1VolcanoBackSpriteRight;

CCMenuItemSprite *boss2_1TrollSpriteLeft;
CCMenuItemSprite *boss2_1TrollSpriteMid;
CCMenuItemSprite *boss2_1TrollSpriteRight;

CCMenuItemImage *boss2_1ScoreText;
CCMenuItemSprite *boss2_1ScoreSpriteDigitOne;
CCMenuItemSprite *boss2_1ScoreSpriteDigitTwo;
CCMenuItemSprite *boss2_1ScoreSpriteDigitThree;
CCMenuItemSprite *boss2_1ScoreSpriteDigitFour;

CCSprite *boss2_1TrollLeftChat;
CCSprite *boss2_1TrollMidChat;
CCSprite *boss2_1TrollRightChat;

CCSprite *boss2_1TrollSpriteLeftGreen;
CCSprite *boss2_1TrollSpriteLeftGrey;
CCSprite *boss2_1TrollSpriteLeftPurple;
CCSprite *boss2_1TrollSpriteMidGreen;
CCSprite *boss2_1TrollSpriteMidGrey;
CCSprite *boss2_1TrollSpriteMidPurple;
CCSprite *boss2_1TrollSpriteRightGreen;
CCSprite *boss2_1TrollSpriteRightGrey;
CCSprite *boss2_1TrollSpriteRightPurple;

CCSprite *boss2_1TrollSpriteLeftDeadGreen;
CCSprite *boss2_1TrollSpriteLeftDeadGrey;
CCSprite *boss2_1TrollSpriteLeftDeadPurple;
CCSprite *boss2_1TrollSpriteMidDeadGreen;
CCSprite *boss2_1TrollSpriteMidDeadGrey;
CCSprite *boss2_1TrollSpriteMidDeadPurple;
CCSprite *boss2_1TrollSpriteRightDeadGreen;
CCSprite *boss2_1TrollSpriteRightDeadGrey;
CCSprite *boss2_1TrollSpriteRightDeadPurple;

CCSprite *boss2_1ScoreNumber0_1;
CCSprite *boss2_1ScoreNumber0_2;
CCSprite *boss2_1ScoreNumber0_3;
CCSprite *boss2_1ScoreNumber0_4;
CCSprite *boss2_1ScoreNumber1_1;
CCSprite *boss2_1ScoreNumber1_2;
CCSprite *boss2_1ScoreNumber1_3;
CCSprite *boss2_1ScoreNumber1_4;
CCSprite *boss2_1ScoreNumber2_1;
CCSprite *boss2_1ScoreNumber2_2;
CCSprite *boss2_1ScoreNumber2_3;
CCSprite *boss2_1ScoreNumber2_4;
CCSprite *boss2_1ScoreNumber3_1;
CCSprite *boss2_1ScoreNumber3_2;
CCSprite *boss2_1ScoreNumber3_3;
CCSprite *boss2_1ScoreNumber3_4;
CCSprite *boss2_1ScoreNumber4_1;
CCSprite *boss2_1ScoreNumber4_2;
CCSprite *boss2_1ScoreNumber4_3;
CCSprite *boss2_1ScoreNumber4_4;
CCSprite *boss2_1ScoreNumber5_1;
CCSprite *boss2_1ScoreNumber5_2;
CCSprite *boss2_1ScoreNumber5_3;
CCSprite *boss2_1ScoreNumber5_4;
CCSprite *boss2_1ScoreNumber6_1;
CCSprite *boss2_1ScoreNumber6_2;
CCSprite *boss2_1ScoreNumber6_3;
CCSprite *boss2_1ScoreNumber6_4;
CCSprite *boss2_1ScoreNumber7_1;
CCSprite *boss2_1ScoreNumber7_2;
CCSprite *boss2_1ScoreNumber7_3;
CCSprite *boss2_1ScoreNumber7_4;
CCSprite *boss2_1ScoreNumber8_1;
CCSprite *boss2_1ScoreNumber8_2;
CCSprite *boss2_1ScoreNumber8_3;
CCSprite *boss2_1ScoreNumber8_4;
CCSprite *boss2_1ScoreNumber9_1;
CCSprite *boss2_1ScoreNumber9_2;
CCSprite *boss2_1ScoreNumber9_3;
CCSprite *boss2_1ScoreNumber9_4;

CCMenuItemImage *boss2_1LivesText;
CCMenuItemSprite *boss2_1LivesSpriteOne;
CCMenuItemSprite *boss2_1LivesSpriteTwo;
CCMenuItemSprite *boss2_1LivesSpriteThree;

CCSprite *boss2_1TapToContinue;

CCSprite *boss2_1TimeUpSprite;
BOOL boss2_1TimeUpDrawn = FALSE;

CCSprite *boss2_1AllTrollsSprite;
BOOL boss2_1AllTrollsDrawn = FALSE;

int boss2_1TrollLeftColour = -1;
int boss2_1TrollMidColour = -1;
int boss2_1TrollRightColour = -1;

int boss2_1BossTopLeftHealth = 25;
int boss2_1BossTopRightHealth = 25;
int boss2_1BossBotLeftHealth = 25;
int boss2_1BossBotRightHealth = 25;

BOOL boss2_1BossTopLeftDead = FALSE;
BOOL boss2_1BossTopRightDead = FALSE;
BOOL boss2_1BossBotLeftDead = FALSE;
BOOL boss2_1BossBotRightDead = FALSE;

BOOL boss2_1BossTopLeftFadeScheduled = FALSE;
BOOL boss2_1BossTopRightFadeScheduled = FALSE;
BOOL boss2_1BossBotLeftFadeScheduled = FALSE;
BOOL boss2_1BossBotRightFadeScheduled = FALSE;

float boss2_1BossTopLeftFadeOutTimer = 0.0f;
float boss2_1BossTopRightFadeOutTimer = 0.0f;
float boss2_1BossBotLeftFadeOutTimer = 0.0f;
float boss2_1BossBotRightFadeOutTimer = 0.0f;

float boss2_1TrollRespawnInterval = 0.0f;

float boss2_1TrollLeftResetTimer = 0.5f;
float boss2_1TrollMidResetTimer = 0.8f;
float boss2_1TrollRightResetTimer = 0.2f;

float boss2_1TrollLeftTimeInPlay = 0.0f;
float boss2_1TrollMidTimeInPlay = 0.0f;
float boss2_1TrollRightTimeInPlay = 0.0f;

float boss2_1TrollLeftFadingOutTimer = 0.0f;
float boss2_1TrollMidFadingOutTimer = 0.0f;
float boss2_1TrollRightFadingOutTimer = 0.0f;

BOOL boss2_1TrollLeftTouched = FALSE;
BOOL boss2_1TrollMidTouched = FALSE;
BOOL boss2_1TrollRightTouched = FALSE;
BOOL boss2_1BossTopLeftTouched = FALSE;
BOOL boss2_1BossTopRightTouched = FALSE;
BOOL boss2_1BossBotLeftTouched = FALSE;
BOOL boss2_1BossBotRightTouched = FALSE;

BOOL boss2_1TrollLeftInPlay = FALSE;
BOOL boss2_1TrollMidInPlay = FALSE;
BOOL boss2_1TrollRightInPlay = FALSE;

BOOL boss2_1StartTrollLeftDeathAnim = FALSE;
BOOL boss2_1StartTrollMidDeathAnim = FALSE;
BOOL boss2_1StartTrollRightDeathAnim = FALSE;

BOOL boss2_1StartTrollLeftMissed = FALSE;
BOOL boss2_1StartTrollMidMissed = FALSE;
BOOL boss2_1StartTrollRightMissed = FALSE;

int boss2_1ScoreInt = 0;
int boss2_1CurrentScore = 0;
int boss2_1PrevScore = 0;
int boss2_1LivesRemaining = 0;

BOOL boss2_1StartRound = FALSE;
BOOL boss2_1DialogueTouched = FALSE;

ccTime boss2_1GameTime = 0.0f;
BOOL boss2_1AllChange = TRUE;
int boss2_1Tick = 0;

@implementation BossScene_2

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	BossScene_2 *layer = [BossScene_2 node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        boss2_1StatsLayer = [CCLayer node];
        boss2_1SpriteFrontLayer = [CCLayer node];
        boss2_1SpriteMidLayer = [CCLayer node];
        boss2_1SpriteBackLayer = [CCLayer node];
        boss2_1SpriteBossLayer = [CCLayer node];
        boss2_1HealthBarsLayer = [CCLayer node];
        
        boss2_1Background = [CCSprite spriteWithFile:@"BackgroundImages/level_2_background_640.png"];
        boss2_1Background.position = ccp(240, 160);
        
        [self addChild: boss2_1Background];
        [self addChild: boss2_1StatsLayer];
        [self addChild: boss2_1SpriteBackLayer];
        [self addChild: boss2_1SpriteFrontLayer];
        [self addChild: boss2_1SpriteMidLayer];
        [self addChild: boss2_1SpriteBossLayer];
        [self addChild: boss2_1HealthBarsLayer];
        
        [self loadboss2_1Sprites];
        [self loadboss2_1Text];
        [self loadboss2_1Dialogue];
    }
    
    boss2_1TimeUpDrawn = FALSE;
    boss2_1AllTrollsDrawn = FALSE;
    boss2_1TrollLeftColour = -1;
    boss2_1TrollMidColour = -1;
    boss2_1TrollRightColour = -1;
    boss2_1BossTopLeftHealth = 25;
    boss2_1BossTopRightHealth = 25;
    boss2_1BossBotLeftHealth = 25;
    boss2_1BossBotRightHealth = 25;
    boss2_1BossTopLeftDead = FALSE;
    boss2_1BossTopRightDead = FALSE;
    boss2_1BossBotLeftDead = FALSE;
    boss2_1BossBotRightDead = FALSE;
    boss2_1BossTopLeftFadeScheduled = FALSE;
    boss2_1BossTopRightFadeScheduled = FALSE;
    boss2_1BossBotLeftFadeScheduled = FALSE;
    boss2_1BossBotRightFadeScheduled = FALSE;
    boss2_1BossTopLeftFadeOutTimer = 0.0f;
    boss2_1BossTopRightFadeOutTimer = 0.0f;
    boss2_1BossBotLeftFadeOutTimer = 0.0f;
    boss2_1BossBotRightFadeOutTimer = 0.0f;
    boss2_1TrollRespawnInterval = 0.0f;
    boss2_1TrollLeftResetTimer = 0.5f;
    boss2_1TrollMidResetTimer = 0.8f;
    boss2_1TrollRightResetTimer = 0.2f;
    boss2_1TrollLeftTimeInPlay = 0.0f;
    boss2_1TrollMidTimeInPlay = 0.0f;
    boss2_1TrollRightTimeInPlay = 0.0f;
    boss2_1TrollLeftFadingOutTimer = 0.0f;
    boss2_1TrollMidFadingOutTimer = 0.0f;
    boss2_1TrollRightFadingOutTimer = 0.0f;
    boss2_1TrollLeftTouched = FALSE;
    boss2_1TrollMidTouched = FALSE;
    boss2_1TrollRightTouched = FALSE;
    boss2_1BossTopLeftTouched = FALSE;
    boss2_1BossTopRightTouched = FALSE;
    boss2_1BossBotLeftTouched = FALSE;
    boss2_1BossBotRightTouched = FALSE;
    boss2_1TrollLeftInPlay = FALSE;
    boss2_1TrollMidInPlay = FALSE;
    boss2_1TrollRightInPlay = FALSE;
    boss2_1StartTrollLeftDeathAnim = FALSE;
    boss2_1StartTrollMidDeathAnim = FALSE;
    boss2_1StartTrollRightDeathAnim = FALSE;
    boss2_1StartTrollLeftMissed = FALSE;
    boss2_1StartTrollMidMissed = FALSE;
    boss2_1StartTrollRightMissed = FALSE;
    boss2_1ScoreInt = 0;
    boss2_1StartRound = FALSE;
    boss2_1DialogueTouched = FALSE;
    boss2_1AllChange = TRUE;
    boss2_1Tick = 0;
    boss2_1GameTime = 0.0f;
    
    boss2_1CurrentScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss2_1PrevScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    boss2_1LivesRemaining = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyLives"];
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!boss2_1StartRound){
        if(boss2_1DialogueTouched){
            boss2_1DialogueSprite.position = ccp(-1000, -1000);
            boss2_1CharacterSprite.position = ccp(-1000, -1000);
            boss2_1CharacterName.position = ccp(-1000, -1000);
            boss2_1TapToContinue.position = ccp(-1000, -1000);
            boss2_1DialogueTouched = FALSE;
            boss2_1StartRound = TRUE;
        }
    }
    else{
        boss2_1GameTime += dt;
        
        if(boss2_1Tick == 0){
            if(boss2_1AllChange){
                [self drawboss2_1Elements];
                boss2_1AllChange = FALSE;
            }
            
            //TIME MECHANIC CALCULATIONS
            if(boss2_1TrollLeftInPlay){
                if(boss2_1TrollLeftTimeInPlay >= 3.0f){
                    boss2_1StartTrollLeftMissed = TRUE;
                    boss2_1TrollLeftChat.position = ccp(-1000, -1000);
                    boss2_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss2_1TrollLeftTimeInPlay += dt;
                }
            }
            else{
                boss2_1TrollLeftResetTimer -= dt;
                if(boss2_1TrollLeftResetTimer <= 0){
                    boss2_1SpriteLeftMenu.position = ccp(80, 90);
                    boss2_1TrollLeftChat.position = ccp(112, 100);
                    boss2_1TrollLeftInPlay = TRUE;
                    boss2_1TrollLeftTimeInPlay = 0.0f;
                }
            }
            
            if(boss2_1TrollMidInPlay){
                if(boss2_1TrollMidTimeInPlay >= 3.0f){
                    boss2_1StartTrollMidMissed = TRUE;
                    boss2_1TrollMidChat.position = ccp(-1000, -1000);
                    boss2_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss2_1TrollMidTimeInPlay += dt;
                }
            }
            else{
                boss2_1TrollMidResetTimer -= dt;
                if(boss2_1TrollMidResetTimer <= 0){
                    boss2_1SpriteMidMenu.position = ccp(240, 90);
                    boss2_1TrollMidChat.position = ccp(272, 100);
                    boss2_1TrollMidInPlay = TRUE;
                    boss2_1TrollMidTimeInPlay = 0.0f;
                }
            }
            
            if(boss2_1TrollRightInPlay){
                if(boss2_1TrollRightTimeInPlay >= 3.0f){
                    boss2_1StartTrollRightMissed = TRUE;
                    boss2_1TrollRightChat.position = ccp(-1000, -1000);
                    boss2_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
                else{
                    boss2_1TrollRightTimeInPlay += dt;
                }
            }
            else{
                boss2_1TrollRightResetTimer -= dt;
                if(boss2_1TrollRightResetTimer <= 0){
                    boss2_1SpriteRightMenu.position = ccp(400, 90);
                    boss2_1TrollRightChat.position = ccp(432, 100);
                    boss2_1TrollRightInPlay = TRUE;
                    boss2_1TrollRightTimeInPlay = 0.0f;
                }
            }
            
            //TOUCH MECHANICS
            if(boss2_1TrollLeftTouched){
                boss2_1StartTrollLeftDeathAnim = TRUE;
                boss2_1TrollLeftTouched = FALSE;
                if(boss2_1TrollLeftColour == 0){
                    [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftDeadGreen];
                }
                else if(boss2_1TrollLeftColour == 1){
                    [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftDeadGrey];
                }
                else if(boss2_1TrollLeftColour == 2){
                    [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftDeadPurple];
                }
                
                boss2_1TrollLeftChat.position = ccp(-1000, -1000);
                
                id actionFade1 = [CCFadeOut actionWithDuration:0.25f];
                [boss2_1TrollSpriteLeft runAction:actionFade1];
            }
            else if(boss2_1TrollMidTouched){
                boss2_1StartTrollMidDeathAnim = TRUE;
                boss2_1TrollMidTouched = FALSE;
                if(boss2_1TrollMidColour == 0){
                    [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidDeadGreen];
                }
                else if(boss2_1TrollMidColour == 1){
                    [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidDeadGrey];
                }
                else if(boss2_1TrollMidColour == 2){
                    [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidDeadPurple];
                }
                
                boss2_1TrollMidChat.position = ccp(-1000, -1000);
                
                id actionFade2 = [CCFadeOut actionWithDuration:0.25f];
                [boss2_1TrollSpriteMid runAction:actionFade2];
            }
            else if(boss2_1TrollRightTouched){
                boss2_1StartTrollRightDeathAnim = TRUE;
                boss2_1TrollRightTouched = FALSE;
                if(boss2_1TrollRightColour == 0){
                    [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightDeadGreen];
                }
                else if(boss2_1TrollRightColour == 1){
                    [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightDeadGrey];
                }
                else if(boss2_1TrollRightColour == 2){
                    [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightDeadPurple];
                }
                
                boss2_1TrollRightChat.position = ccp(-1000, -1000);
                
                id actionFade3 = [CCFadeOut actionWithDuration:0.25f];
                [boss2_1TrollSpriteRight runAction:actionFade3];
            }
            else if(boss2_1BossTopLeftTouched){
                if(boss2_1BossTopLeftHealth <= 25 && boss2_1BossTopLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss2_1BossTopLeftHealth <= 20 && boss2_1BossTopLeftHealth > 15){
                    boss2_1HealthBarTopLeftCover.position = ccp(122, 270);
                }
                else if(boss2_1BossTopLeftHealth <= 15 && boss2_1BossTopLeftHealth > 10){
                    boss2_1HealthBarTopLeftCover.position = ccp(127, 270);
                }
                else if(boss2_1BossTopLeftHealth <= 10 && boss2_1BossTopLeftHealth > 5){
                    boss2_1HealthBarTopLeftCover.position = ccp(132, 270);
                }
                else if(boss2_1BossTopLeftHealth <= 5 && boss2_1BossTopLeftHealth > 0){
                    boss2_1HealthBarTopLeftCover.position = ccp(137, 270);
                }
                else if(boss2_1BossTopLeftHealth <= 0){
                    boss2_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss2_1BossTopLeftDead = TRUE;
                }
                boss2_1BossTopLeftTouched = FALSE;
            }
            else if(boss2_1BossTopRightTouched){
                if(boss2_1BossTopRightHealth <= 25 && boss2_1BossTopRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss2_1BossTopRightHealth <= 20 && boss2_1BossTopRightHealth > 15){
                    boss2_1HealthBarTopRightCover.position = ccp(358, 270);
                }
                else if(boss2_1BossTopRightHealth <= 15 && boss2_1BossTopRightHealth > 10){
                    boss2_1HealthBarTopRightCover.position = ccp(353, 270);
                }
                else if(boss2_1BossTopRightHealth <= 10 && boss2_1BossTopRightHealth > 5){
                    boss2_1HealthBarTopRightCover.position = ccp(348, 270);
                }
                else if(boss2_1BossTopRightHealth <= 5 && boss2_1BossTopRightHealth > 0){
                    boss2_1HealthBarTopRightCover.position = ccp(343, 270);
                }
                else if(boss2_1BossTopRightHealth <= 0){
                    boss2_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss2_1BossTopRightDead = TRUE;
                }
                boss2_1BossTopRightTouched = FALSE;
            }
            else if(boss2_1BossBotLeftTouched){
                if(boss2_1BossBotLeftHealth <= 25 && boss2_1BossBotLeftHealth > 20){
                    //DO NOTHING
                }
                else if(boss2_1BossBotLeftHealth <= 20 && boss2_1BossBotLeftHealth > 15){
                    boss2_1HealthBarBotLeftCover.position = ccp(122, 160);
                }
                else if(boss2_1BossBotLeftHealth <= 15 && boss2_1BossBotLeftHealth > 10){
                    boss2_1HealthBarBotLeftCover.position = ccp(127, 160);
                }
                else if(boss2_1BossBotLeftHealth <= 10 && boss2_1BossBotLeftHealth > 5){
                    boss2_1HealthBarBotLeftCover.position = ccp(132, 160);
                }
                else if(boss2_1BossBotLeftHealth <= 5 && boss2_1BossBotLeftHealth > 0){
                    boss2_1HealthBarBotLeftCover.position = ccp(137, 160);
                }
                else if(boss2_1BossBotLeftHealth <= 0){
                    boss2_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss2_1BossBotLeftDead = TRUE;
                }
                boss2_1BossBotLeftTouched = FALSE;
            }
            else if(boss2_1BossBotRightTouched){
                if(boss2_1BossBotRightHealth <= 25 && boss2_1BossBotRightHealth > 20){
                    //DO NOTHING
                }
                else if(boss2_1BossBotRightHealth <= 20 && boss2_1BossBotRightHealth > 15){
                    boss2_1HealthBarBotRightCover.position = ccp(358, 160);
                }
                else if(boss2_1BossBotRightHealth <= 15 && boss2_1BossBotRightHealth > 10){
                    boss2_1HealthBarBotRightCover.position = ccp(353, 160);
                }
                else if(boss2_1BossBotRightHealth <= 10 && boss2_1BossBotRightHealth > 5){
                    boss2_1HealthBarBotRightCover.position = ccp(348, 160);
                }
                else if(boss2_1BossBotRightHealth <= 5 && boss2_1BossBotRightHealth > 0){
                    boss2_1HealthBarBotRightCover.position = ccp(343, 160);
                }
                else if(boss2_1BossBotRightHealth <= 0){
                    boss2_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss2_1BossBotRightDead = TRUE;
                }
                boss2_1BossBotRightTouched = FALSE;
            }
            
            //TROLL DEATH ANIMATIONS
            if(boss2_1StartTrollLeftDeathAnim){
                if(boss2_1TrollLeftFadingOutTimer < 0.25f){
                    boss2_1TrollLeftFadingOutTimer += dt;
                    boss2_1SpriteLeftMenu.position = ccp(boss2_1SpriteLeftMenu.position.x, boss2_1SpriteLeftMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    boss2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss2_1StartTrollLeftDeathAnim = FALSE;
                    boss2_1TrollLeftTimeInPlay = 0.0f;
                    boss2_1TrollLeftFadingOutTimer = 0.0f;
                    boss2_1TrollLeftInPlay = FALSE;
                    boss2_1TrollLeftResetTimer = boss2_1TrollRespawnInterval;
                    
                    id actionReset1 = [CCFadeIn actionWithDuration:0.1f];
                    [boss2_1TrollSpriteLeft runAction:actionReset1];
                    
                    if(boss2_1TrollLeftColour == 0){
                        [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftGreen];
                    }
                    else if(boss2_1TrollLeftColour == 1){
                        [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftGrey];
                    }
                    else if(boss2_1TrollLeftColour == 2){
                        [boss2_1TrollSpriteLeft setNormalImage:boss2_1TrollSpriteLeftPurple];
                    }
                    
                    boss2_1SpriteLeftMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss2_1StartTrollMidDeathAnim){
                if(boss2_1TrollMidFadingOutTimer < 0.25f){
                    boss2_1TrollMidFadingOutTimer += dt;
                    boss2_1SpriteMidMenu.position = ccp(boss2_1SpriteMidMenu.position.x, boss2_1SpriteMidMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    boss2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss2_1StartTrollMidDeathAnim = FALSE;
                    boss2_1TrollMidTimeInPlay = 0.0f;
                    boss2_1TrollMidFadingOutTimer = 0.0f;
                    boss2_1TrollMidInPlay = FALSE;
                    boss2_1TrollMidResetTimer = boss2_1TrollRespawnInterval;
                    
                    id actionReset2 = [CCFadeIn actionWithDuration:0.1f];
                    [boss2_1TrollSpriteMid runAction:actionReset2];
                    
                    if(boss2_1TrollMidColour == 0){
                        [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidGreen];
                    }
                    else if(boss2_1TrollMidColour == 1){
                        [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidGrey];
                    }
                    else if(boss2_1TrollMidColour == 2){
                        [boss2_1TrollSpriteMid setNormalImage:boss2_1TrollSpriteMidPurple];
                    }
                    
                    boss2_1SpriteMidMenu.position = ccp(-1000, -1000);
                }
            }
            if(boss2_1StartTrollRightDeathAnim){
                if(boss2_1TrollRightFadingOutTimer < 0.25f){
                    boss2_1TrollRightFadingOutTimer += dt;
                    boss2_1SpriteRightMenu.position = ccp(boss2_1SpriteRightMenu.position.x, boss2_1SpriteRightMenu.position.y -5);
                }
                else{
                    int i = (arc4random() % (151)) + 200;
                    boss2_1TrollRespawnInterval = (float)i / 100.0f;
                    
                    boss2_1StartTrollRightDeathAnim = FALSE;
                    boss2_1TrollRightTimeInPlay = 0.0f;
                    boss2_1TrollRightFadingOutTimer = 0.0f;
                    boss2_1TrollRightInPlay = FALSE;
                    boss2_1TrollRightResetTimer = boss2_1TrollRespawnInterval;
                    
                    id actionReset3 = [CCFadeIn actionWithDuration:0.1f];
                    [boss2_1TrollSpriteRight runAction:actionReset3];
                    
                    if(boss2_1TrollRightColour == 0){
                        [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightGreen];
                    }
                    else if(boss2_1TrollRightColour == 1){
                        [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightGrey];
                    }
                    else if(boss2_1TrollRightColour == 2){
                        [boss2_1TrollSpriteRight setNormalImage:boss2_1TrollSpriteRightPurple];
                    }
                    
                    boss2_1SpriteRightMenu.position = ccp(-1000, -1000);
                }
            }
            
            //TROLL MISSED
            if(boss2_1StartTrollLeftMissed){
                int i = (arc4random() % (151)) + 200;
                boss2_1TrollRespawnInterval = (float)i / 100.0f;
                boss2_1StartTrollLeftMissed = FALSE;
                boss2_1TrollLeftTimeInPlay = 0.0f;
                boss2_1TrollLeftInPlay = FALSE;
                boss2_1TrollLeftResetTimer = boss2_1TrollRespawnInterval;
                boss2_1LivesRemaining--;
                
                if(boss2_1LivesRemaining == 2){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 1){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 0){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss2_1Tick = 1;
                }
            }
            if(boss2_1StartTrollMidMissed){
                int i = (arc4random() % (151)) + 200;
                boss2_1TrollRespawnInterval = (float)i / 100.0f;
                boss2_1StartTrollMidMissed = FALSE;
                boss2_1TrollMidTimeInPlay = 0.0f;
                boss2_1TrollMidInPlay = FALSE;
                boss2_1TrollMidResetTimer = boss2_1TrollRespawnInterval;
                boss2_1LivesRemaining--;
                
                if(boss2_1LivesRemaining == 2){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 1){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 0){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss2_1Tick = 1;
                }
            }
            if(boss2_1StartTrollRightMissed){
                int i = (arc4random() % (151)) + 200;
                boss2_1TrollRespawnInterval = (float)i / 100.0f;
                boss2_1StartTrollRightMissed = FALSE;
                boss2_1TrollRightTimeInPlay = 0.0f;
                boss2_1TrollRightInPlay = FALSE;
                boss2_1TrollRightResetTimer = boss2_1TrollRespawnInterval;
                boss2_1LivesRemaining--;
                
                if(boss2_1LivesRemaining == 2){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 1){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                }
                else if(boss2_1LivesRemaining == 0){
                    boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                    boss2_1LivesSpriteOne.position = ccp(-1000, -1000);
                }
                else{
                    //GAME OVER
                    boss2_1Tick = 1;
                }
            }
            
            if(boss2_1BossTopLeftDead){
                if(!boss2_1BossTopLeftFadeScheduled){
                    id actionBossFade1 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss2_1SectionTopLeft runAction:actionBossFade1];
                    boss2_1HealthBarTopLeft.position = ccp(-1000, -1000);
                    boss2_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
                    boss2_1BossTopLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss2_1BossTopLeftFadeOutTimer < 2.0f){
                        boss2_1BossTopLeftFadeOutTimer += dt;
                    }
                    else{
                        boss2_1SectionTopLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss2_1BossTopRightDead){
                if(!boss2_1BossTopRightFadeScheduled){
                    id actionBossFade2 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss2_1SectionTopRight runAction:actionBossFade2];
                    boss2_1HealthBarTopRight.position = ccp(-1000, -1000);
                    boss2_1HealthBarTopRightCover.position = ccp(-1000, -1000);
                    boss2_1BossTopRightFadeScheduled = TRUE;
                }
                else{
                    if(boss2_1BossTopRightFadeOutTimer < 2.0f){
                        boss2_1BossTopRightFadeOutTimer += dt;
                    }
                    else{
                        boss2_1SectionTopRight.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss2_1BossBotLeftDead){
                if(!boss2_1BossBotLeftFadeScheduled){
                    id actionBossFade3 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss2_1SectionBotLeft runAction:actionBossFade3];
                    boss2_1HealthBarBotLeft.position = ccp(-1000, -1000);
                    boss2_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
                    boss2_1BossBotLeftFadeScheduled = TRUE;
                }
                else{
                    if(boss2_1BossBotLeftFadeOutTimer < 2.0f){
                        boss2_1BossBotLeftFadeOutTimer += dt;
                    }
                    else{
                        boss2_1SectionBotLeft.position = ccp(-1000, -1000);
                    }
                }
            }
            if(boss2_1BossBotRightDead){
                if(!boss2_1BossBotRightFadeScheduled){
                    id actionBossFade4 = [CCFadeOut actionWithDuration: 1.0f];
                    [boss2_1SectionBotRight runAction:actionBossFade4];
                    boss2_1HealthBarBotRight.position = ccp(-1000, -1000);
                    boss2_1HealthBarBotRightCover.position = ccp(-1000, -1000);
                    boss2_1BossBotRightFadeScheduled = TRUE;
                }
                else{
                    if(boss2_1BossBotRightFadeOutTimer < 2.0f){
                        boss2_1BossBotRightFadeOutTimer += dt;
                    }
                    else{
                        boss2_1SectionBotRight.position = ccp(-1000, -1000);
                    }
                }
            }
            
            //LIVES CALCULATIONS
            if(boss2_1LivesRemaining == 3){
                //DO NOTHING
            }
            else if(boss2_1LivesRemaining == 2){
                boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
            }
            else if(boss2_1LivesRemaining == 1){
                boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
            }
            else if(boss2_1LivesRemaining == 0){
                boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
                boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
                boss2_1LivesSpriteOne.position = ccp(-1000, -1000);
            }
            else if(boss2_1LivesRemaining <= -1){
                boss2_1Tick = 1;
            }
            
            if(boss2_1BossTopLeftDead && boss2_1BossTopRightDead && boss2_1BossBotLeftDead && boss2_1BossBotRightDead){
                //A WINNER IS YOU
                boss2_1Tick = 2;
            }
            
            boss2_1ScoreInt = boss2_1CurrentScore;
            
            //SCORE CALCULATIONS
            if(boss2_1LivesRemaining >= 0) {
                if(boss2_1CurrentScore != boss2_1PrevScore){
                    if(boss2_1CurrentScore >= 0 && boss2_1CurrentScore < 10){
                        if(boss2_1CurrentScore == 0){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                        }
                        else if(boss2_1CurrentScore == 1){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                        }
                        else if(boss2_1CurrentScore == 2){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                        }
                        else if(boss2_1CurrentScore == 3){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                        }
                        else if(boss2_1CurrentScore == 4){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                        }
                        else if(boss2_1CurrentScore == 5){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                        }
                        else if(boss2_1CurrentScore == 6){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                        }
                        else if(boss2_1CurrentScore == 7){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                        }
                        else if(boss2_1CurrentScore == 8){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                        }
                        else if(boss2_1CurrentScore == 9){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                        }
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                    }
                    
                    else if(boss2_1CurrentScore >= 10 && boss2_1CurrentScore <= 99){
                        int lSDS = boss2_1ScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                        }
                        
                        if(boss2_1CurrentScore >= 10 && boss2_1CurrentScore <= 19){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
                        }
                        else if(boss2_1CurrentScore >= 20 && boss2_1CurrentScore <= 29){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
                        }
                        else if(boss2_1CurrentScore >= 30 && boss2_1CurrentScore <= 39){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
                        }
                        else if(boss2_1CurrentScore >= 40 && boss2_1CurrentScore <= 49){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
                        }
                        else if(boss2_1CurrentScore >= 50 && boss2_1CurrentScore <= 59){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
                        }
                        else if(boss2_1CurrentScore >= 60 && boss2_1CurrentScore <= 69){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
                        }
                        else if(boss2_1CurrentScore >= 70 && boss2_1CurrentScore <= 79){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
                        }
                        else if(boss2_1CurrentScore >= 80 && boss2_1CurrentScore <= 89){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
                        }
                        else if(boss2_1CurrentScore >= 90 && boss2_1CurrentScore <= 99){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
                        }
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
                    }
                    
                    else if(boss2_1CurrentScore >= 100 && boss2_1CurrentScore <= 999){
                        int boss2_1Count = 0;
                        while(boss2_1Count < 2){
                            int lSDSs = boss2_1ScoreInt % 10;
                            if(boss2_1Count == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                                }
                            }
                            else if(boss2_1Count == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
                                }
                            }
                            boss2_1ScoreInt /= 10;
                            boss2_1Count++;
                        }
                        
                        if(boss2_1CurrentScore >= 100 && boss2_1CurrentScore <= 199){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber1_2];
                        }
                        else if(boss2_1CurrentScore >= 200 && boss2_1CurrentScore <= 299){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber2_2];
                        }
                        else if(boss2_1CurrentScore >= 300 && boss2_1CurrentScore <= 399){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber3_2];
                        }
                        else if(boss2_1CurrentScore >= 400 && boss2_1CurrentScore <= 499){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber4_2];
                        }
                        else if(boss2_1CurrentScore >= 500 && boss2_1CurrentScore <= 599){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber5_2];
                        }
                        else if(boss2_1CurrentScore >= 600 && boss2_1CurrentScore <= 699){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber6_2];
                        }
                        else if(boss2_1CurrentScore >= 700 && boss2_1CurrentScore <= 799){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber7_2];
                        }
                        else if(boss2_1CurrentScore >= 800 && boss2_1CurrentScore <= 899){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber8_2];
                        }
                        else if(boss2_1CurrentScore >= 900 && boss2_1CurrentScore <= 999){
                            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
                    }
                    
                    else if(boss2_1CurrentScore >= 1000 && boss2_1CurrentScore <= 9999){
                        int boss2_1Count = 0;
                        while(boss2_1Count < 3){
                            int lSDSsS = boss2_1ScoreInt % 10;
                            if(boss2_1Count == 0){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                                }
                            }
                            else if(boss2_1Count == 1){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
                                }
                            }
                            else if(boss2_1Count == 2){
                                if(lSDSsS == 0){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
                                }
                                else if(lSDSsS == 1){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber1_2];
                                }
                                else if(lSDSsS == 2){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber2_2];
                                }
                                else if(lSDSsS == 3){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber3_2];
                                }
                                else if(lSDSsS == 4){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber4_2];
                                }
                                else if(lSDSsS == 5){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber5_2];
                                }
                                else if(lSDSsS == 6){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber6_2];
                                }
                                else if(lSDSsS == 7){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber7_2];
                                }
                                else if(lSDSsS == 8){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber8_2];
                                }
                                else if(lSDSsS == 9){
                                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber9_2];
                                }
                            }
                            boss2_1ScoreInt /= 10;
                            boss2_1Count++;
                            
                            if(boss2_1CurrentScore >= 1000 && boss2_1CurrentScore <= 1999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber1_1];
                            }
                            else if(boss2_1CurrentScore >= 2000 && boss2_1CurrentScore <= 2999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber2_1];
                            }
                            else if(boss2_1CurrentScore >= 3000 && boss2_1CurrentScore <= 3999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber3_1];
                            }
                            else if(boss2_1CurrentScore >= 4000 && boss2_1CurrentScore <= 4999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber4_1];
                            }
                            else if(boss2_1CurrentScore >= 5000 && boss2_1CurrentScore <= 5999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber5_1];
                            }
                            else if(boss2_1CurrentScore >= 6000 && boss2_1CurrentScore <= 6999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber6_1];
                            }
                            else if(boss2_1CurrentScore >= 7000 && boss2_1CurrentScore <= 7999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber7_1];
                            }
                            else if(boss2_1CurrentScore >= 8000 && boss2_1CurrentScore <= 8999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber8_1];
                            }
                            else if(boss2_1CurrentScore >= 9000 && boss2_1CurrentScore <= 9999){
                                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber9_1];
                            }
                        }
                    }
                    
                    else if(boss2_1CurrentScore <= 0){
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
                        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
                    }
                }
            }
        }
        else if(boss2_1Tick == 1){
            //GAME OVER
            if(!boss2_1TimeUpDrawn){
                boss2_1TimeUpSprite = [CCSprite spriteWithFile:@"GameSprites/game_over_red_slide_cover.png"];
                boss2_1TimeUpSprite.position = ccp(240, 836);
                [self addChild: boss2_1TimeUpSprite];
                [self scheduleOnce:@selector(boss2_1GameOver:) delay:2];
                boss2_1TimeUpDrawn = TRUE;
            }
            else{
                if(boss2_1TimeUpSprite.position.y <= -64){
                    //DO NOTHING
                }
                else{
                    boss2_1TimeUpSprite.position = ccp(boss2_1TimeUpSprite.position.x, boss2_1TimeUpSprite.position.y -10);
                }
            }
        }
        else if(boss2_1Tick == 2){
            //LEVEL COMPLETE
            if(!boss2_1AllTrollsDrawn){
                boss2_1AllTrollsSprite = [CCSprite spriteWithFile:@"GameText/all_troll_eliminated_screen_640.png"];
                boss2_1AllTrollsSprite.position = ccp(-480, 160);
                [self addChild: boss2_1AllTrollsSprite];
                [self scheduleOnce:@selector(boss2_1LevelComplete:) delay:2];
                boss2_1AllTrollsDrawn = TRUE;
            }
            else{
                if(boss2_1AllTrollsSprite.position.x > 720){
                    //DO NOTHING
                }
                else{
                    boss2_1AllTrollsSprite.position = ccp(boss2_1AllTrollsSprite.position.x +10, boss2_1AllTrollsSprite.position.y);
                }
            }
        }
    }
}

-(void) loadboss2_1Sprites{
    boss2_1VolcanoFrontSpriteLeft = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss2_1VolcanoFrontSpriteMid = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    boss2_1VolcanoFrontSpriteRight = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    
    boss2_1VolcanoBackSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(leftExtraTouched:)];
    
    boss2_1VolcanoBackSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                          selectedSprite:NULL
                                                                  target:self
                                                                selector:@selector(midExtraTouched:)];
    
    boss2_1VolcanoBackSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                            selectedSprite:NULL
                                                                    target:self
                                                                  selector:@selector(rightExtraTouched:)];
    
    boss2_1VolcanoFrontSpriteLeft.position = ccp(80, 70);
    boss2_1VolcanoBackSpriteLeft.position = ccp(-160, -90);
    boss2_1VolcanoFrontSpriteMid.position = ccp(240, 70);
    boss2_1VolcanoBackSpriteMid.position = ccp(0, -90);
    boss2_1VolcanoFrontSpriteRight.position = ccp(400, 70);
    boss2_1VolcanoBackSpriteRight.position = ccp(160, -90);
    
    int count = 0;
    
    while(count < 3){
        int i = ((arc4random() % (3)));
        if(count == 0){
            if(i == 0){
                boss2_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss2_1TrollLeftColour = 0;
            }
            else if(i == 1){
                boss2_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss2_1TrollLeftColour = 1;
            }
            else if(i == 2){
                boss2_1TrollSpriteLeft = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                 selectedSprite:NULL
                                                                         target:self
                                                                       selector:@selector(leftTouched:)];
                
                boss2_1TrollLeftColour = 2;
            }
        }
        else if(count == 1){
            if(i == 0){
                boss2_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss2_1TrollMidColour = 0;
            }
            else if(i == 1){
                boss2_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss2_1TrollMidColour = 1;
            }
            else if(i == 2){
                boss2_1TrollSpriteMid = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                selectedSprite:NULL
                                                                        target:self
                                                                      selector:@selector(midTouched:)];
                
                boss2_1TrollMidColour = 2;
            }
        }
        else if(count == 2){
            if(i == 0){
                boss2_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss2_1TrollRightColour = 0;
            }
            else if(i == 1){
                boss2_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss2_1TrollRightColour = 1;
            }
            else if(i == 2){
                boss2_1TrollSpriteRight = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                                  selectedSprite:NULL
                                                                          target:self
                                                                        selector:@selector(rightTouched:)];
                
                boss2_1TrollRightColour = 2;
            }
        }
        count++;
    }
    
    int chatCount = 0;
    while(chatCount < 3){
        int j = ((arc4random() % (9)));
        if(chatCount == 0){
            if(j == 0){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss2_1TrollLeftChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 1){
            if(j == 0){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss2_1TrollMidChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        else if(chatCount == 2){
            if(j == 0){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
            }
            else if(j == 1){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
            }
            else if(j == 2){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
            }
            else if(j == 3){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
            }
            else if(j == 4){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
            }
            else if(j == 5){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
            }
            else if(j == 6){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
            }
            else if(j == 7){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
            }
            else if(j == 8){
                boss2_1TrollRightChat = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
            }
        }
        chatCount++;
    }
    
    boss2_1SectionTopLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossTopLeftTouched:)];
    
    boss2_1SectionTopRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_top_right_128.png"
                                                    selectedImage:NULL
                                                           target:self
                                                         selector:@selector(bossTopRightTouched:)];
    
    boss2_1SectionBotLeft = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_left_128.png"
                                                   selectedImage:NULL
                                                          target:self
                                                        selector:@selector(bossBotLeftTouched:)];
    
    boss2_1SectionBotRight = [CCMenuItemImage itemWithNormalImage:@"GameSprites/boss_bottom_right_128.png"
                                                    selectedImage:NULL
                                                           target:self
                                                         selector:@selector(bossBotRightTouched:)];
    
    boss2_1SectionTopLeft.position = ccp(-36, 94);
    boss2_1SectionTopRight.position = ccp(36, 94);
    boss2_1SectionBotLeft.position = ccp(-36, 22);
    boss2_1SectionBotRight.position = ccp(36, 22);
    
    boss2_1BossSpriteMenu = [CCMenu menuWithItems: boss2_1SectionTopLeft, boss2_1SectionTopRight, boss2_1SectionBotLeft, boss2_1SectionBotRight, nil];
    
    boss2_1HealthBarTopLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss2_1HealthBarTopRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss2_1HealthBarBotLeft = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    boss2_1HealthBarBotRight = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_48.png"]retain];
    
    boss2_1HealthBarTopLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss2_1HealthBarTopRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss2_1HealthBarBotLeftCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    boss2_1HealthBarBotRightCover = [[CCSprite spriteWithFile:@"GameSprites/boss_health_bar_cover.png"]retain];
    
    boss2_1HealthBarTopLeft.position = ccp(140, 270);
    boss2_1HealthBarTopRight.position = ccp(340, 270);
    boss2_1HealthBarBotLeft.position = ccp(140, 160);
    boss2_1HealthBarBotRight.position = ccp(340, 160);
    
    boss2_1HealthBarTopLeftCover.position = ccp(-1000, -1000);
    boss2_1HealthBarTopRightCover.position = ccp(-1000, -1000);
    boss2_1HealthBarBotLeftCover.position = ccp(-1000, -1000);
    boss2_1HealthBarBotRightCover.position = ccp(-1000, -1000);
    
    boss2_1TrollSpriteLeftGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss2_1TrollSpriteLeftGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss2_1TrollSpriteLeftPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss2_1TrollSpriteMidGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss2_1TrollSpriteMidGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss2_1TrollSpriteMidPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    boss2_1TrollSpriteRightGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    boss2_1TrollSpriteRightGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    boss2_1TrollSpriteRightPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    boss2_1TrollSpriteLeftDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss2_1TrollSpriteLeftDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss2_1TrollSpriteLeftDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss2_1TrollSpriteMidDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss2_1TrollSpriteMidDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss2_1TrollSpriteMidDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    boss2_1TrollSpriteRightDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    boss2_1TrollSpriteRightDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    boss2_1TrollSpriteRightDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    boss2_1SpriteLeftMenu = [CCMenu menuWithItems: boss2_1TrollSpriteLeft, nil];
    boss2_1SpriteMidMenu = [CCMenu menuWithItems: boss2_1TrollSpriteMid, nil];
    boss2_1SpriteRightMenu = [CCMenu menuWithItems: boss2_1TrollSpriteRight, nil];
    
    boss2_1SpriteLeftMenu.position = ccp(-1000, -1000);
    boss2_1SpriteMidMenu.position = ccp(-1000, -1000);
    boss2_1SpriteRightMenu.position = ccp(-1000, -1000);
    
    boss2_1TrollLeftChat.position = ccp(-1000, -1000);
    boss2_1TrollMidChat.position = ccp(-1000, -1000);
    boss2_1TrollRightChat.position = ccp(-1000, -1000);
    
    boss2_1VolcanoMenu = [CCMenu menuWithItems: boss2_1VolcanoBackSpriteLeft, boss2_1VolcanoBackSpriteMid, boss2_1VolcanoBackSpriteRight, nil];
    
    [boss2_1SpriteMidLayer addChild: boss2_1SpriteLeftMenu];
    [boss2_1SpriteMidLayer addChild: boss2_1SpriteMidMenu];
    [boss2_1SpriteMidLayer addChild: boss2_1SpriteRightMenu];
    
    [boss2_1SpriteMidLayer addChild: boss2_1TrollLeftChat];
    [boss2_1SpriteMidLayer addChild: boss2_1TrollMidChat];
    [boss2_1SpriteMidLayer addChild: boss2_1TrollRightChat];
    
    [boss2_1SpriteBackLayer addChild: boss2_1VolcanoMenu];
    
    [boss2_1SpriteFrontLayer addChild: boss2_1VolcanoFrontSpriteLeft];
    [boss2_1SpriteFrontLayer addChild: boss2_1VolcanoFrontSpriteMid];
    [boss2_1SpriteFrontLayer addChild: boss2_1VolcanoFrontSpriteRight];
    
    [boss2_1SpriteBossLayer addChild: boss2_1BossSpriteMenu];
    
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarTopLeft];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarTopRight];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarBotLeft];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarBotRight];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarTopLeftCover];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarTopRightCover];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarBotLeftCover];
    [boss2_1HealthBarsLayer addChild: boss2_1HealthBarBotRightCover];
    
    boss2_1SpriteBackLayer.position = ccp(-1000, -1000);
    boss2_1SpriteMidLayer.position = ccp(-1000, -1000);
    boss2_1SpriteFrontLayer.position = ccp(-1000, -1000);
    boss2_1SpriteBossLayer.position = ccp(0, 0);
    boss2_1HealthBarsLayer.position = ccp(-1000, -1000);
}

-(void) loadboss2_1Text{
    boss2_1ScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss2_1ScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss2_1ScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss2_1ScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]retain];
    boss2_1ScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss2_1ScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss2_1ScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss2_1ScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32_white.png"]retain];
    boss2_1ScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss2_1ScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss2_1ScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss2_1ScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32_white.png"]retain];
    boss2_1ScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss2_1ScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss2_1ScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss2_1ScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32_white.png"]retain];
    boss2_1ScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss2_1ScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss2_1ScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss2_1ScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32_white.png"]retain];
    boss2_1ScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss2_1ScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss2_1ScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss2_1ScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32_white.png"]retain];
    boss2_1ScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss2_1ScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss2_1ScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss2_1ScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32_white.png"]retain];
    boss2_1ScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss2_1ScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss2_1ScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss2_1ScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32_white.png"]retain];
    boss2_1ScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss2_1ScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss2_1ScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss2_1ScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32_white.png"]retain];
    boss2_1ScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss2_1ScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss2_1ScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    boss2_1ScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32_white.png"]retain];
    
    boss2_1ScoreText = [CCMenuItemImage itemWithNormalImage:@"GameText/score_text_white.png"
                                              selectedImage:NULL];
    
    boss2_1ScoreSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                         selectedSprite:NULL];
    
    boss2_1ScoreSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                         selectedSprite:NULL];
    
    boss2_1ScoreSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                           selectedSprite:NULL];
    
    boss2_1ScoreSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32_white.png"]
                                                          selectedSprite:NULL];
    
    boss2_1LivesText = [CCMenuItemImage itemWithNormalImage:@"GameText/lives_text_white.png"
                                              selectedImage:NULL];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 0){
        boss2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/blue_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 1){
        boss2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/red_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"modID"] == 2){
        boss2_1LivesSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                        selectedSprite:NULL];
        
        boss2_1LivesSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/green_mod_32.png"]
                                                          selectedSprite:NULL];
    }
    
    boss2_1ScoreMenu = [CCMenu menuWithItems:boss2_1ScoreText, boss2_1ScoreSpriteDigitOne, boss2_1ScoreSpriteDigitTwo,
                        boss2_1ScoreSpriteDigitThree, boss2_1ScoreSpriteDigitFour, nil];
    
    [boss2_1ScoreMenu alignItemsHorizontallyWithPadding:1];
    
    boss2_1ScoreMenu.position = ccp(72, 308);
    
    [boss2_1ScoreSpriteDigitOne setTag: 101];
    [boss2_1ScoreSpriteDigitTwo setTag: 102];
    [boss2_1ScoreSpriteDigitThree setTag: 103];
    [boss2_1ScoreSpriteDigitFour setTag: 104];
    
    boss2_1LivesMenu = [CCMenu menuWithItems: boss2_1LivesText, boss2_1LivesSpriteOne, boss2_1LivesSpriteTwo, boss2_1LivesSpriteThree, nil];
    [boss2_1LivesMenu alignItemsHorizontallyWithPadding:2];
    
    boss2_1LivesMenu.position = ccp(400, 308);
    
    [boss2_1StatsLayer addChild: boss2_1ScoreMenu];
    [boss2_1StatsLayer addChild: boss2_1LivesMenu];
    
    boss2_1StatsLayer.position = ccp(-1000, -1000);
}

-(void) loadboss2_1Dialogue{
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"database"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/dbstyle_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/database_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_database_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"granquier"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/gq_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/granquier_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_granquier_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"kappa"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kappa_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/kappatin_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kappa_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"kreytos"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/kreygasm_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/kreytos_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_kreytos_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"mantin"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/mvg_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/mantin_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_martin_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"orksome"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/orc_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/orksome_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_orksome_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"salty"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/salty_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/salty_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_salty_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"wooferz"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/frankerz_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/wooferz_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_wooferz_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else if([[[NSUserDefaults standardUserDefaults] valueForKey:@"charSix"] isEqualToString:@"zeke"]){
        boss2_1CharacterSprite = [CCSprite spriteWithFile:@"GameSprites/zeke_face_64.png"];
        boss2_1CharacterName = [CCSprite spriteWithFile:@"GameText/inzekeure_16.png"];
        boss2_1DialogueSprite = [CCMenuItemImage itemWithNormalImage:@"GameDialogue/dialogue_bar_zeke_3.png"
                                                       selectedImage:NULL
                                                              target:self
                                                            selector:@selector(dialogueTouched:)];
    }
    else{
        NSLog(@"ME NO KNOW");
    }
    
    boss2_1TapToContinue = [CCSprite spriteWithFile:@"GameText/tap_to_continue_text.png"];
    
    boss2_1DialogueMenu = [CCMenu menuWithItems: boss2_1DialogueSprite, nil];
    
    boss2_1CharacterSprite.position = ccp(25, 100);
    boss2_1CharacterName.position = ccp(120, 86);
    boss2_1DialogueSprite.position = ccp(0, -120);
    boss2_1TapToContinue.position = ccp(300, 95);
    
    [self addChild: boss2_1CharacterSprite];
    [self addChild: boss2_1CharacterName];
    [self addChild: boss2_1TapToContinue];
    [self addChild: boss2_1DialogueMenu];
}

-(void) drawboss2_1Elements{
    boss2_1StatsLayer.position = ccp(0, 0);
    boss2_1SpriteBackLayer.position = ccp(0, 0);
    boss2_1SpriteMidLayer.position = ccp(0, 0);
    boss2_1SpriteFrontLayer.position = ccp(0, 0);
    boss2_1SpriteBossLayer.position = ccp(0, 0);
    boss2_1HealthBarsLayer.position = ccp(0, 0);
    
    if(boss2_1LivesRemaining == 2){
        boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
    }
    else if(boss2_1LivesRemaining == 1){
        boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
    }
    else if(boss2_1LivesRemaining == 0){
        boss2_1LivesSpriteThree.position = ccp(-1000, -1000);
        boss2_1LivesSpriteTwo.position = ccp(-1000, -1000);
        boss2_1LivesSpriteOne.position = ccp(-1000, -1000);
    }
    
    boss2_1ScoreInt = boss2_1CurrentScore;
    
    if(boss2_1CurrentScore >= 0 && boss2_1CurrentScore < 10){
        if(boss2_1CurrentScore == 0){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
        }
        else if(boss2_1CurrentScore == 1){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
        }
        else if(boss2_1CurrentScore == 2){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
        }
        else if(boss2_1CurrentScore == 3){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
        }
        else if(boss2_1CurrentScore == 4){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
        }
        else if(boss2_1CurrentScore == 5){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
        }
        else if(boss2_1CurrentScore == 6){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
        }
        else if(boss2_1CurrentScore == 7){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
        }
        else if(boss2_1CurrentScore == 8){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
        }
        else if(boss2_1CurrentScore == 9){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
        }
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
    }
    
    else if(boss2_1CurrentScore >= 10 && boss2_1CurrentScore <= 99){
        int lSDS = boss2_1ScoreInt % 10;
        if(lSDS == 0){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
        }
        else if(lSDS == 1){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
        }
        else if(lSDS == 2){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
        }
        else if(lSDS == 3){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
        }
        else if(lSDS == 4){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
        }
        else if(lSDS == 5){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
        }
        else if(lSDS == 6){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
        }
        else if(lSDS == 7){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
        }
        else if(lSDS == 8){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
        }
        else if(lSDS == 9){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
        }
        
        if(boss2_1CurrentScore >= 10 && boss2_1CurrentScore <= 19){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
        }
        else if(boss2_1CurrentScore >= 20 && boss2_1CurrentScore <= 29){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
        }
        else if(boss2_1CurrentScore >= 30 && boss2_1CurrentScore <= 39){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
        }
        else if(boss2_1CurrentScore >= 40 && boss2_1CurrentScore <= 49){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
        }
        else if(boss2_1CurrentScore >= 50 && boss2_1CurrentScore <= 59){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
        }
        else if(boss2_1CurrentScore >= 60 && boss2_1CurrentScore <= 69){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
        }
        else if(boss2_1CurrentScore >= 70 && boss2_1CurrentScore <= 79){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
        }
        else if(boss2_1CurrentScore >= 80 && boss2_1CurrentScore <= 89){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
        }
        else if(boss2_1CurrentScore >= 90 && boss2_1CurrentScore <= 99){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
        }
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
    }
    
    else if(boss2_1CurrentScore >= 100 && boss2_1CurrentScore <= 999){
        int boss2_1Count = 0;
        while(boss2_1Count < 2){
            int lSDSs = boss2_1ScoreInt % 10;
            if(boss2_1Count == 0){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                }
            }
            else if(boss2_1Count == 1){
                if(lSDSs == 0){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
                }
            }
            boss2_1ScoreInt /= 10;
            boss2_1Count++;
        }
        
        if(boss2_1CurrentScore >= 100 && boss2_1CurrentScore <= 199){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber1_2];
        }
        else if(boss2_1CurrentScore >= 200 && boss2_1CurrentScore <= 299){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber2_2];
        }
        else if(boss2_1CurrentScore >= 300 && boss2_1CurrentScore <= 399){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber3_2];
        }
        else if(boss2_1CurrentScore >= 400 && boss2_1CurrentScore <= 499){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber4_2];
        }
        else if(boss2_1CurrentScore >= 500 && boss2_1CurrentScore <= 599){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber5_2];
        }
        else if(boss2_1CurrentScore >= 600 && boss2_1CurrentScore <= 699){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber6_2];
        }
        else if(boss2_1CurrentScore >= 700 && boss2_1CurrentScore <= 799){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber7_2];
        }
        else if(boss2_1CurrentScore >= 800 && boss2_1CurrentScore <= 899){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber8_2];
        }
        else if(boss2_1CurrentScore >= 900 && boss2_1CurrentScore <= 999){
            [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber9_2];
        }
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
    }
    
    else if(boss2_1CurrentScore >= 1000 && boss2_1CurrentScore <= 9999){
        int boss2_1Count = 0;
        while(boss2_1Count < 3){
            int lSDSsS = boss2_1ScoreInt % 10;
            if(boss2_1Count == 0){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber9_4];
                }
            }
            else if(boss2_1Count == 1){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber9_3];
                }
            }
            else if(boss2_1Count == 2){
                if(lSDSsS == 0){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber9_2];
                }
            }
            boss2_1ScoreInt /= 10;
            boss2_1Count++;
            
            if(boss2_1CurrentScore >= 1000 && boss2_1CurrentScore <= 1999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber1_1];
            }
            else if(boss2_1CurrentScore >= 2000 && boss2_1CurrentScore <= 2999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber2_1];
            }
            else if(boss2_1CurrentScore >= 3000 && boss2_1CurrentScore <= 3999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber3_1];
            }
            else if(boss2_1CurrentScore >= 4000 && boss2_1CurrentScore <= 4999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber4_1];
            }
            else if(boss2_1CurrentScore >= 5000 && boss2_1CurrentScore <= 5999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber5_1];
            }
            else if(boss2_1CurrentScore >= 6000 && boss2_1CurrentScore <= 6999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber6_1];
            }
            else if(boss2_1CurrentScore >= 7000 && boss2_1CurrentScore <= 7999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber7_1];
            }
            else if(boss2_1CurrentScore >= 8000 && boss2_1CurrentScore <= 8999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber8_1];
            }
            else if(boss2_1CurrentScore >= 9000 && boss2_1CurrentScore <= 9999){
                [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber9_1];
            }
        }
    }
    
    else if(boss2_1CurrentScore <= 0){
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 104] setNormalImage:boss2_1ScoreNumber0_4];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 103] setNormalImage:boss2_1ScoreNumber0_3];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 102] setNormalImage:boss2_1ScoreNumber0_2];
        [(CCMenuItemSprite*)[boss2_1ScoreMenu getChildByTag: 101] setNormalImage:boss2_1ScoreNumber0_1];
    }
}

-(void) leftTouched:(id)sender{
    if(boss2_1StartTrollLeftDeathAnim || boss2_1StartTrollLeftMissed || boss2_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollLeftTouched = TRUE;
    }
}

-(void) midTouched:(id)sender{
    if(boss2_1StartTrollMidDeathAnim || boss2_1StartTrollMidMissed || boss2_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollMidTouched = TRUE;
    }
}

-(void) rightTouched:(id)sender{
    if(boss2_1StartTrollRightDeathAnim || boss2_1StartTrollRightMissed || boss2_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollRightTouched = TRUE;
    }
}

-(void) leftExtraTouched:(id)sender{
    if(boss2_1StartTrollLeftDeathAnim || boss2_1StartTrollLeftMissed || boss2_1TrollLeftResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollLeftTouched = TRUE;
    }
}

-(void) midExtraTouched:(id)sender{
    if(boss2_1StartTrollMidDeathAnim || boss2_1StartTrollMidMissed || boss2_1TrollMidResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollMidTouched = TRUE;
    }
}

-(void) rightExtraTouched:(id)sender{
    if(boss2_1StartTrollRightDeathAnim || boss2_1StartTrollRightMissed || boss2_1TrollRightResetTimer > 0){
        //DO NOTHING
    }
    else{
        boss2_1TrollRightTouched = TRUE;
    }
}

-(void) bossTopLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss2_1TrollLeftInPlay){
        if(!boss2_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollMidInPlay){
        if(!boss2_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollRightInPlay){
        if(!boss2_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss2_1LivesRemaining--;
    }
    else{
        boss2_1BossTopLeftTouched = TRUE;
        boss2_1CurrentScore += 5;
        boss2_1BossTopLeftHealth--;
    }
}

-(void) bossTopRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss2_1TrollLeftInPlay){
        if(!boss2_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollMidInPlay){
        if(!boss2_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollRightInPlay){
        if(!boss2_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss2_1LivesRemaining--;
    }
    else{
        boss2_1BossTopRightTouched = TRUE;
        boss2_1CurrentScore += 5;
        boss2_1BossTopRightHealth--;
    }
}

-(void) bossBotLeftTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss2_1TrollLeftInPlay){
        if(!boss2_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollMidInPlay){
        if(!boss2_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollRightInPlay){
        if(!boss2_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss2_1LivesRemaining--;
    }
    else{
        boss2_1BossBotLeftTouched = TRUE;
        boss2_1CurrentScore += 5;
        boss2_1BossBotLeftHealth--;
    }
}

-(void) bossBotRightTouched:(id)sender{
    BOOL badTouch = FALSE;
    
    if(boss2_1TrollLeftInPlay){
        if(!boss2_1StartTrollLeftDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollMidInPlay){
        if(!boss2_1StartTrollMidDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    if(boss2_1TrollRightInPlay){
        if(!boss2_1StartTrollRightDeathAnim){
            badTouch = TRUE;
        }
        else{
            //DO NOTHING
        }
    }
    
    if(badTouch){
        boss2_1LivesRemaining--;
    }
    else{
        boss2_1BossBotRightTouched = TRUE;
        boss2_1CurrentScore += 5;
        boss2_1BossBotRightHealth--;
    }
}

-(void) boss2_1GameOver:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:1 scene: [GameOver node] withColor:ccBLACK]];
}

-(void) boss2_1LevelComplete:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:boss2_1CurrentScore forKey:@"storyScore"];
    [[NSUserDefaults standardUserDefaults] setInteger:boss2_1LivesRemaining forKey:@"storyLives"];
    [[NSUserDefaults standardUserDefaults] setInteger:6 forKey:@"storyID"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameResults node] withColor:ccWHITE]];
}

-(void) dialogueTouched:(id)sender{
    boss2_1DialogueTouched = TRUE;
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [boss2_1TrollLeftChat release];
    [boss2_1TrollMidChat release];
    [boss2_1TrollRightChat release];
    [boss2_1HealthBarTopLeft release];
    [boss2_1HealthBarTopRight release];
    [boss2_1HealthBarBotLeft release];
    [boss2_1HealthBarBotRight release];
    [boss2_1HealthBarTopLeftCover release];
    [boss2_1HealthBarTopRightCover release];
    [boss2_1HealthBarBotLeftCover release];
    [boss2_1HealthBarBotRightCover release];
    [boss2_1TrollSpriteLeftGreen release];
    [boss2_1TrollSpriteLeftGrey release];
    [boss2_1TrollSpriteLeftPurple release];
    [boss2_1TrollSpriteMidGreen release];
    [boss2_1TrollSpriteMidGrey release];
    [boss2_1TrollSpriteMidPurple release];
    [boss2_1TrollSpriteRightGreen release];
    [boss2_1TrollSpriteRightGrey release];
    [boss2_1TrollSpriteRightPurple release];
    [boss2_1TrollSpriteLeftDeadGreen release];
    [boss2_1TrollSpriteLeftDeadGrey release];
    [boss2_1TrollSpriteLeftDeadPurple release];
    [boss2_1TrollSpriteMidDeadGreen release];
    [boss2_1TrollSpriteMidDeadGrey release];
    [boss2_1TrollSpriteMidDeadPurple release];
    [boss2_1TrollSpriteRightDeadGreen release];
    [boss2_1TrollSpriteRightDeadGrey release];
    [boss2_1TrollSpriteRightDeadPurple release];
    [boss2_1ScoreNumber0_1 release];
    [boss2_1ScoreNumber0_2 release];
    [boss2_1ScoreNumber0_3 release];
    [boss2_1ScoreNumber0_4 release];
    [boss2_1ScoreNumber1_1 release];
    [boss2_1ScoreNumber1_2 release];
    [boss2_1ScoreNumber1_3 release];
    [boss2_1ScoreNumber1_4 release];
    [boss2_1ScoreNumber2_1 release];
    [boss2_1ScoreNumber2_2 release];
    [boss2_1ScoreNumber2_3 release];
    [boss2_1ScoreNumber2_4 release];
    [boss2_1ScoreNumber3_1 release];
    [boss2_1ScoreNumber3_2 release];
    [boss2_1ScoreNumber3_3 release];
    [boss2_1ScoreNumber3_4 release];
    [boss2_1ScoreNumber4_1 release];
    [boss2_1ScoreNumber4_2 release];
    [boss2_1ScoreNumber4_3 release];
    [boss2_1ScoreNumber4_4 release];
    [boss2_1ScoreNumber5_1 release];
    [boss2_1ScoreNumber5_2 release];
    [boss2_1ScoreNumber5_3 release];
    [boss2_1ScoreNumber5_4 release];
    [boss2_1ScoreNumber6_1 release];
    [boss2_1ScoreNumber6_2 release];
    [boss2_1ScoreNumber6_3 release];
    [boss2_1ScoreNumber6_4 release];
    [boss2_1ScoreNumber7_1 release];
    [boss2_1ScoreNumber7_2 release];
    [boss2_1ScoreNumber7_3 release];
    [boss2_1ScoreNumber7_4 release];
    [boss2_1ScoreNumber8_1 release];
    [boss2_1ScoreNumber8_2 release];
    [boss2_1ScoreNumber8_3 release];
    [boss2_1ScoreNumber8_4 release];
    [boss2_1ScoreNumber9_1 release];
    [boss2_1ScoreNumber9_2 release];
    [boss2_1ScoreNumber9_3 release];
    [boss2_1ScoreNumber9_4 release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
