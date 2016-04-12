//
//  ChillaxZone.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 08/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "ChillaxZone.h"
#import "GameOver.h"
#import "SimpleAudioEngine.h"

#pragma mark - ChillaxZone

CCSprite *chillaxBackground;

CCSprite *chillaxIntro3;
CCSprite *chillaxIntro2;
CCSprite *chillaxIntro1;
CCSprite *chillaxIntro0;

CCLayer *chillaxSpriteFrontLayer;
CCLayer *chillaxSpriteMidLayer;
CCLayer *chillaxSpriteBackLayer;
CCLayer *chillaxStatsLayer;

CCMenu *chillaxTapsMenu;
CCMenu *chillaxSpriteMenu;

CCMenu *chillaxButtonMenu;
CCMenuItemImage *chillaxQuitButton;

CCMenuItemImage *chillaxTapsText;
CCMenuItemSprite *chillaxTapsSpriteDigitOne;
CCMenuItemSprite *chillaxTapsSpriteDigitTwo;
CCMenuItemSprite *chillaxTapsSpriteDigitThree;
CCMenuItemSprite *chillaxTapsSpriteDigitFour;

CCSprite *chillaxChatSprite;

CCSprite *chillaxVolcanoFrontSprite;
CCMenuItemSprite *chillaxVolcanoBackSprite;

CCMenu *chillaxVolcanoMenu;

int chillaxTrollColour = -1;

CCMenuItemSprite *chillaxTrollSprite;
CCSprite *chillaxTrollSpriteGreen;
CCSprite *chillaxTrollSpriteGrey;
CCSprite *chillaxTrollSpritePurple;
CCSprite *chillaxTrollSpriteDeadGreen;
CCSprite *chillaxTrollSpriteDeadGrey;
CCSprite *chillaxTrollSpriteDeadPurple;

CCSprite *chillaxTapsNumber0_1;
CCSprite *chillaxTapsNumber0_2;
CCSprite *chillaxTapsNumber0_3;
CCSprite *chillaxTapsNumber0_4;
CCSprite *chillaxTapsNumber1_1;
CCSprite *chillaxTapsNumber1_2;
CCSprite *chillaxTapsNumber1_3;
CCSprite *chillaxTapsNumber1_4;
CCSprite *chillaxTapsNumber2_1;
CCSprite *chillaxTapsNumber2_2;
CCSprite *chillaxTapsNumber2_3;
CCSprite *chillaxTapsNumber2_4;
CCSprite *chillaxTapsNumber3_1;
CCSprite *chillaxTapsNumber3_2;
CCSprite *chillaxTapsNumber3_3;
CCSprite *chillaxTapsNumber3_4;
CCSprite *chillaxTapsNumber4_1;
CCSprite *chillaxTapsNumber4_2;
CCSprite *chillaxTapsNumber4_3;
CCSprite *chillaxTapsNumber4_4;
CCSprite *chillaxTapsNumber5_1;
CCSprite *chillaxTapsNumber5_2;
CCSprite *chillaxTapsNumber5_3;
CCSprite *chillaxTapsNumber5_4;
CCSprite *chillaxTapsNumber6_1;
CCSprite *chillaxTapsNumber6_2;
CCSprite *chillaxTapsNumber6_3;
CCSprite *chillaxTapsNumber6_4;
CCSprite *chillaxTapsNumber7_1;
CCSprite *chillaxTapsNumber7_2;
CCSprite *chillaxTapsNumber7_3;
CCSprite *chillaxTapsNumber7_4;
CCSprite *chillaxTapsNumber8_1;
CCSprite *chillaxTapsNumber8_2;
CCSprite *chillaxTapsNumber8_3;
CCSprite *chillaxTapsNumber8_4;
CCSprite *chillaxTapsNumber9_1;
CCSprite *chillaxTapsNumber9_2;
CCSprite *chillaxTapsNumber9_3;
CCSprite *chillaxTapsNumber9_4;

float chillaxTrollRespawnInterval = 0.0f;
float chillaxTrollResetTimer = 0.0f;
float chillaxTrollFadingOutTimer = 0.0f;

BOOL chillaxTrollTouched = FALSE;
BOOL chillaxTrollInPlay = FALSE;
BOOL chillaxStartTrollDeathAnim = FALSE;

int chillaxTick = 0;
int chillaxCurrentTaps = 0;
int chillaxPrevTaps = 0;
int chillaxTapsInt = 0;

ccTime chillaxGameTime = 0.0f;

BOOL chillaxIntroFinished = FALSE;
BOOL chillaxAllChange = FALSE;

@implementation ChillaxZone

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	ChillaxZone *layer = [ChillaxZone node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        chillaxStatsLayer = [CCLayer node];
        chillaxSpriteBackLayer = [CCLayer node];
        chillaxSpriteMidLayer = [CCLayer node];
        chillaxSpriteFrontLayer = [CCLayer node];
        
        chillaxBackground = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        chillaxBackground.position = ccp(240, 160);
        
        [self addChild: chillaxBackground];
        [self addChild: chillaxStatsLayer];
        [self addChild: chillaxSpriteBackLayer];
        [self addChild: chillaxSpriteFrontLayer];
        [self addChild: chillaxSpriteMidLayer];
        
        [self loadChillaxSpriteElements];
        [self loadChillaxStatsElements];
    }
    
    chillaxTrollColour = -1;
    chillaxTrollRespawnInterval = 0.0f;
    chillaxTrollResetTimer = 0.0f;
    chillaxTrollFadingOutTimer = 0.0f;
    chillaxTrollTouched = FALSE;
    chillaxTrollInPlay = FALSE;
    chillaxStartTrollDeathAnim = FALSE;
    chillaxTick = 0;
    chillaxCurrentTaps = 0;
    chillaxPrevTaps = 0;
    chillaxTapsInt = 0;
    chillaxGameTime = 0.0f;
    chillaxIntroFinished = FALSE;
    chillaxAllChange = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    chillaxGameTime += dt;
    
    if (chillaxGameTime < 5 && chillaxIntroFinished == NO){
        if(chillaxGameTime > 0 && chillaxGameTime < 1.5){
            if(chillaxTick == 0){
                chillaxIntro3 = [CCSprite spriteWithFile: @"GameText/intro_3.png"];
                chillaxIntro3.position = ccp(240, 160);
                [self addChild: chillaxIntro3];
                chillaxTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(chillaxGameTime > 1.5 && chillaxGameTime < 2.5){
            if(chillaxTick == 1) {
                chillaxIntro2 = [CCSprite spriteWithFile: @"GameText/intro_2.png"];
                chillaxIntro2.position = ccp(240, 160);
                [self addChild: chillaxIntro2];
                chillaxTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(chillaxTick == 2){
                [self removeChild: chillaxIntro3 cleanup:YES];
                chillaxTick = 3;
            }
        }
        else if(chillaxGameTime > 2.5 && chillaxGameTime < 3.5){
            if(chillaxTick == 3){
                chillaxIntro1 = [CCSprite spriteWithFile: @"GameText/intro_1.png"];
                chillaxIntro1.position = ccp(240, 160);
                [self addChild: chillaxIntro1];
                chillaxTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(chillaxTick == 4) {
                [self removeChild: chillaxIntro2 cleanup:YES];
                chillaxTick = 5;
            }
        }
        else if(chillaxGameTime > 3.5 && chillaxGameTime < 4.5){
            if(chillaxTick == 5){
                chillaxIntro0 = [CCSprite spriteWithFile: @"GameText/intro_0.png"];
                chillaxIntro0.position = ccp(240, 160);
                [self addChild: chillaxIntro0];
                chillaxTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(chillaxTick == 6) {
                [self removeChild: chillaxIntro1 cleanup:YES];
                chillaxTick = 7;
            }
        }
        else{
            if(chillaxTick == 7){
                chillaxIntroFinished = YES;
                [self removeChild: chillaxIntro0 cleanup:YES];
                chillaxTick = 8;
                chillaxAllChange = TRUE;
            }
        }
    }
    else if(chillaxTick == 8){
        //Do everything else
        if(chillaxAllChange){
            chillaxAllChange = FALSE;
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_chillax_zone.mp3"];
            [self drawChillaxElements];
        }
        
        if(!chillaxTrollInPlay){
            chillaxTrollResetTimer -= dt;
            if(chillaxTrollResetTimer <= 0){
                chillaxSpriteMenu.position = ccp(240, 190);
                chillaxChatSprite.position = ccp(272, 200);
                chillaxTrollInPlay = TRUE;
            }
        }
        
        if(chillaxTrollTouched){
            chillaxStartTrollDeathAnim = TRUE;
            chillaxTrollTouched = FALSE;
            if(chillaxTrollColour == 0){
                [chillaxTrollSprite setNormalImage:chillaxTrollSpriteDeadGreen];
            }
            else if(chillaxTrollColour == 1){
                [chillaxTrollSprite setNormalImage:chillaxTrollSpriteDeadGrey];
            }
            else if(chillaxTrollColour == 2){
                [chillaxTrollSprite setNormalImage:chillaxTrollSpriteDeadPurple];
            }
            
            chillaxChatSprite.position = ccp(-1000, -1000);
            
            id actionFade1 = [CCFadeOut actionWithDuration:.25];
            [chillaxTrollSprite runAction:actionFade1];
        }
        
        if(chillaxStartTrollDeathAnim){
            if(chillaxTrollFadingOutTimer < 0.25){
                chillaxTrollFadingOutTimer += dt;
                chillaxSpriteMenu.position = ccp(chillaxSpriteMenu.position.x, chillaxSpriteMenu.position.y -5);
            }
            else{
                int i = (arc4random() % (501)) + 500;
                chillaxTrollRespawnInterval = (float)i / 100.0f;
                
                chillaxStartTrollDeathAnim = FALSE;
                chillaxTrollFadingOutTimer = 0.0f;
                chillaxTrollInPlay = FALSE;
                chillaxTrollResetTimer = chillaxTrollRespawnInterval;
                
                id actionReset1 = [CCFadeIn actionWithDuration:0];
                [chillaxTrollSprite runAction:actionReset1];
                
                if(chillaxTrollColour == 0){
                    [chillaxTrollSprite setNormalImage:chillaxTrollSpriteGreen];
                }
                else if(chillaxTrollColour == 1){
                    [chillaxTrollSprite setNormalImage:chillaxTrollSpriteGrey];
                }
                else if(chillaxTrollColour == 2){
                    [chillaxTrollSprite setNormalImage:chillaxTrollSpritePurple];
                }
                
                chillaxSpriteMenu.position = ccp(-1000, -1000);
            }
        }
        
        chillaxTapsInt = chillaxCurrentTaps;
        
        //SCORE CALCULATIONS
        if(chillaxCurrentTaps != chillaxPrevTaps){
            if(chillaxCurrentTaps >= 0 && chillaxCurrentTaps < 10){
                if(chillaxCurrentTaps == 0){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber0_4];
                }
                else if(chillaxCurrentTaps == 1){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber1_4];
                }
                else if(chillaxCurrentTaps == 2){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber2_4];
                }
                else if(chillaxCurrentTaps == 3){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber3_4];
                }
                else if(chillaxCurrentTaps == 4){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber4_4];
                }
                else if(chillaxCurrentTaps == 5){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber5_4];
                }
                else if(chillaxCurrentTaps == 6){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber6_4];
                }
                else if(chillaxCurrentTaps == 7){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber7_4];
                }
                else if(chillaxCurrentTaps == 8){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber8_4];
                }
                else if(chillaxCurrentTaps == 9){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber9_4];
                }
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber0_1];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber0_2];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber0_3];
            }
            
            else if(chillaxCurrentTaps >= 10 && chillaxCurrentTaps <= 99){
                int lSDS = chillaxTapsInt % 10;
                if(lSDS == 0){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber0_4];
                }
                else if(lSDS == 1){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber1_4];
                }
                else if(lSDS == 2){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber2_4];
                }
                else if(lSDS == 3){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber3_4];
                }
                else if(lSDS == 4){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber4_4];
                }
                else if(lSDS == 5){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber5_4];
                }
                else if(lSDS == 6){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber6_4];
                }
                else if(lSDS == 7){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber7_4];
                }
                else if(lSDS == 8){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber8_4];
                }
                else if(lSDS == 9){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber9_4];
                }
                
                if(chillaxCurrentTaps >= 10 && chillaxCurrentTaps <= 19){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber1_3];
                }
                else if(chillaxCurrentTaps >= 20 && chillaxCurrentTaps <= 29){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber2_3];
                }
                else if(chillaxCurrentTaps >= 30 && chillaxCurrentTaps <= 39){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber3_3];
                }
                else if(chillaxCurrentTaps >= 40 && chillaxCurrentTaps <= 49){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber4_3];
                }
                else if(chillaxCurrentTaps >= 50 && chillaxCurrentTaps <= 59){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber5_3];
                }
                else if(chillaxCurrentTaps >= 60 && chillaxCurrentTaps <= 69){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber6_3];
                }
                else if(chillaxCurrentTaps >= 70 && chillaxCurrentTaps <= 79){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber7_3];
                }
                else if(chillaxCurrentTaps >= 80 && chillaxCurrentTaps <= 89){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber8_3];
                }
                else if(chillaxCurrentTaps >= 90 && chillaxCurrentTaps <= 99){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber9_3];
                }
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber0_2];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber0_1];
            }
            
            else if(chillaxCurrentTaps >= 100 && chillaxCurrentTaps <= 999){
                int chillaxCount = 0;
                while(chillaxCount < 2){
                    int lSDSs = chillaxTapsInt % 10;
                    if(chillaxCount == 0){
                        if(lSDSs == 0){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber0_4];
                        }
                        else if(lSDSs == 1){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber1_4];
                        }
                        else if(lSDSs == 2){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber2_4];
                        }
                        else if(lSDSs == 3){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber3_4];
                        }
                        else if(lSDSs == 4){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber4_4];
                        }
                        else if(lSDSs == 5){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber5_4];
                        }
                        else if(lSDSs == 6){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber6_4];
                        }
                        else if(lSDSs == 7){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber7_4];
                        }
                        else if(lSDSs == 8){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber8_4];
                        }
                        else if(lSDSs == 9){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber9_4];
                        }
                    }
                    else if(chillaxCount == 1){
                        if(lSDSs == 0){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber0_3];
                        }
                        else if(lSDSs == 1){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber1_3];
                        }
                        else if(lSDSs == 2){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber2_3];
                        }
                        else if(lSDSs == 3){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber3_3];
                        }
                        else if(lSDSs == 4){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber4_3];
                        }
                        else if(lSDSs == 5){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber5_3];
                        }
                        else if(lSDSs == 6){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber6_3];
                        }
                        else if(lSDSs == 7){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber7_3];
                        }
                        else if(lSDSs == 8){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber8_3];
                        }
                        else if(lSDSs == 9){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber9_3];
                        }
                    }
                    chillaxTapsInt /= 10;
                    chillaxCount++;
                }
                
                if(chillaxCurrentTaps >= 100 && chillaxCurrentTaps <= 199){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber1_2];
                }
                else if(chillaxCurrentTaps >= 200 && chillaxCurrentTaps <= 299){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber2_2];
                }
                else if(chillaxCurrentTaps >= 300 && chillaxCurrentTaps <= 399){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber3_2];
                }
                else if(chillaxCurrentTaps >= 400 && chillaxCurrentTaps <= 499){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber4_2];
                }
                else if(chillaxCurrentTaps >= 500 && chillaxCurrentTaps <= 599){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber5_2];
                }
                else if(chillaxCurrentTaps >= 600 && chillaxCurrentTaps <= 699){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber6_2];
                }
                else if(chillaxCurrentTaps >= 700 && chillaxCurrentTaps <= 799){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber7_2];
                }
                else if(chillaxCurrentTaps >= 800 && chillaxCurrentTaps <= 899){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber8_2];
                }
                else if(chillaxCurrentTaps >= 900 && chillaxCurrentTaps <= 999){
                    [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber9_2];
                }
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber0_1];
            }
            
            else if(chillaxCurrentTaps >= 1000 && chillaxCurrentTaps <= 9999){
                int chillaxCount = 0;
                while(chillaxCount < 3){
                    int lSDSsS = chillaxTapsInt % 10;
                    if(chillaxCount == 0){
                        if(lSDSsS == 0){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber0_4];
                        }
                        else if(lSDSsS == 1){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber1_4];
                        }
                        else if(lSDSsS == 2){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber2_4];
                        }
                        else if(lSDSsS == 3){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber3_4];
                        }
                        else if(lSDSsS == 4){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber4_4];
                        }
                        else if(lSDSsS == 5){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber5_4];
                        }
                        else if(lSDSsS == 6){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber6_4];
                        }
                        else if(lSDSsS == 7){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber7_4];
                        }
                        else if(lSDSsS == 8){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber8_4];
                        }
                        else if(lSDSsS == 9){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber9_4];
                        }
                    }
                    else if(chillaxCount == 1){
                        if(lSDSsS == 0){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber0_3];
                        }
                        else if(lSDSsS == 1){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber1_3];
                        }
                        else if(lSDSsS == 2){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber2_3];
                        }
                        else if(lSDSsS == 3){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber3_3];
                        }
                        else if(lSDSsS == 4){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber4_3];
                        }
                        else if(lSDSsS == 5){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber5_3];
                        }
                        else if(lSDSsS == 6){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber6_3];
                        }
                        else if(lSDSsS == 7){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber7_3];
                        }
                        else if(lSDSsS == 8){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber8_3];
                        }
                        else if(lSDSsS == 9){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber9_3];
                        }
                    }
                    else if(chillaxCount == 2){
                        if(lSDSsS == 0){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber0_2];
                        }
                        else if(lSDSsS == 1){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber1_2];
                        }
                        else if(lSDSsS == 2){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber2_2];
                        }
                        else if(lSDSsS == 3){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber3_2];
                        }
                        else if(lSDSsS == 4){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber4_2];
                        }
                        else if(lSDSsS == 5){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber5_2];
                        }
                        else if(lSDSsS == 6){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber6_2];
                        }
                        else if(lSDSsS == 7){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber7_2];
                        }
                        else if(lSDSsS == 8){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber8_2];
                        }
                        else if(lSDSsS == 9){
                            [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber9_2];
                        }
                    }
                    chillaxTapsInt /= 10;
                    chillaxCount++;
                    
                    if(chillaxCurrentTaps >= 1000 && chillaxCurrentTaps <= 1999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber1_1];
                    }
                    else if(chillaxCurrentTaps >= 2000 && chillaxCurrentTaps <= 2999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber2_1];
                    }
                    else if(chillaxCurrentTaps >= 3000 && chillaxCurrentTaps <= 3999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber3_1];
                    }
                    else if(chillaxCurrentTaps >= 4000 && chillaxCurrentTaps <= 4999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber4_1];
                    }
                    else if(chillaxCurrentTaps >= 5000 && chillaxCurrentTaps <= 5999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber5_1];
                    }
                    else if(chillaxCurrentTaps >= 6000 && chillaxCurrentTaps <= 6999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber6_1];
                    }
                    else if(chillaxCurrentTaps >= 7000 && chillaxCurrentTaps <= 7999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber7_1];
                    }
                    else if(chillaxCurrentTaps >= 8000 && chillaxCurrentTaps <= 8999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber8_1];
                    }
                    else if(chillaxCurrentTaps >= 9000 && chillaxCurrentTaps <= 9999){
                        [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber9_1];
                    }
                }
            }
            
            else if(chillaxCurrentTaps <= 0){
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 104] setNormalImage:chillaxTapsNumber0_4];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 103] setNormalImage:chillaxTapsNumber0_3];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 102] setNormalImage:chillaxTapsNumber0_2];
                [(CCMenuItemSprite*)[chillaxTapsMenu getChildByTag: 101] setNormalImage:chillaxTapsNumber0_1];
            }
        }
    }
}

-(void) loadChillaxStatsElements{
    chillaxTapsNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    chillaxTapsNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    chillaxTapsNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    chillaxTapsNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_32.png"]retain];
    chillaxTapsNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    chillaxTapsNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    chillaxTapsNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    chillaxTapsNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_32.png"]retain];
    chillaxTapsNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    chillaxTapsNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    chillaxTapsNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    chillaxTapsNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_32.png"]retain];
    chillaxTapsNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    chillaxTapsNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    chillaxTapsNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    chillaxTapsNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_32.png"]retain];
    chillaxTapsNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    chillaxTapsNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    chillaxTapsNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    chillaxTapsNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_32.png"]retain];
    chillaxTapsNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    chillaxTapsNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    chillaxTapsNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    chillaxTapsNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_32.png"]retain];
    chillaxTapsNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    chillaxTapsNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    chillaxTapsNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    chillaxTapsNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_32.png"]retain];
    chillaxTapsNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    chillaxTapsNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    chillaxTapsNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    chillaxTapsNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_32.png"]retain];
    chillaxTapsNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    chillaxTapsNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    chillaxTapsNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    chillaxTapsNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_32.png"]retain];
    chillaxTapsNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    chillaxTapsNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    chillaxTapsNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    chillaxTapsNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_32.png"]retain];
    
    chillaxTapsText = [CCMenuItemImage itemWithNormalImage:@"GameText/taps_text.png"
                                             selectedImage:NULL];
    
    chillaxTapsSpriteDigitOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                        selectedSprite:NULL];
    
    chillaxTapsSpriteDigitTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                        selectedSprite:NULL];
    
    chillaxTapsSpriteDigitThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                          selectedSprite:NULL];
    
    chillaxTapsSpriteDigitFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_32.png"]
                                                         selectedSprite:NULL];
    
    chillaxQuitButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/quit_button.png"
                                               selectedImage:NULL
                                                      target:self
                                                    selector:@selector(quitTouched:)];
    
    chillaxButtonMenu = [CCMenu menuWithItems: chillaxQuitButton, nil];
    chillaxButtonMenu.position = ccp(48, 16);
    
    chillaxTapsMenu = [CCMenu menuWithItems:chillaxTapsText, chillaxTapsSpriteDigitOne, chillaxTapsSpriteDigitTwo, chillaxTapsSpriteDigitThree, chillaxTapsSpriteDigitFour, nil];
    [chillaxTapsMenu alignItemsHorizontallyWithPadding:1];
    
    chillaxTapsMenu.position = ccp(416, 308);
    
    [chillaxTapsSpriteDigitOne setTag: 101];
    [chillaxTapsSpriteDigitTwo setTag: 102];
    [chillaxTapsSpriteDigitThree setTag: 103];
    [chillaxTapsSpriteDigitFour setTag: 104];
    
    [chillaxStatsLayer addChild: chillaxTapsMenu];
    [chillaxStatsLayer addChild: chillaxButtonMenu];
    
    chillaxStatsLayer.position = ccp(-1000, -1000);
}

-(void) loadChillaxSpriteElements{
    chillaxVolcanoFrontSprite = [CCSprite spriteWithFile:@"GameSprites/volcano_front_256.png"];
    chillaxVolcanoBackSprite = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/volcano_back_256.png"]
                                                       selectedSprite:NULL
                                                               target:self
                                                             selector:@selector(trollExtraTouched:)];
    
    chillaxVolcanoFrontSprite.position = ccp(240, 170);
    chillaxVolcanoBackSprite.position = ccp(0, 10);
    
    int i = ((arc4random() % (3)));
    if(i == 0){
        chillaxTrollSprite = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(trollTouched:)];
        
        chillaxTrollColour = 0;
    }
    else if(i == 1){
        chillaxTrollSprite = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(trollTouched:)];
        
        chillaxTrollColour = 1;
    }
    else if(i == 2){
        chillaxTrollSprite = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(trollTouched:)];
        
        chillaxTrollColour = 2;
    }
    
    int j = ((arc4random() % (9)));
    if(j == 0){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_ad_block.png"]retain];
    }
    else if(j == 1){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_damn_ads.png"]retain];
    }
    else if(j == 2){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_gooby_pls.png"]retain];
    }
    else if(j == 3){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_kappa.png"]retain];
    }
    else if(j == 4){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_lag_anyone.png"]retain];
    }
    else if(j == 5){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_missed_chest.png"]retain];
    }
    else if(j == 6){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_offline_yo.png"]retain];
    }
    else if(j == 7){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_reset.png"]retain];
    }
    else if(j == 8){
        chillaxChatSprite = [[CCSprite spriteWithFile:@"GameSprites/chat_bubble_teh_urn.png"]retain];
    }
    
    chillaxTrollSpriteGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64.png"]retain];
    chillaxTrollSpriteGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64.png"]retain];
    chillaxTrollSpritePurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64.png"]retain];
    
    chillaxTrollSpriteDeadGreen = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_1_64_dead.png"]retain];
    chillaxTrollSpriteDeadGrey = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_2_64_dead.png"]retain];
    chillaxTrollSpriteDeadPurple = [[CCSprite spriteWithFile:@"GameSprites/troll_sprite_3_64_dead.png"]retain];
    
    chillaxSpriteMenu = [CCMenu menuWithItems: chillaxTrollSprite, nil];
    chillaxSpriteMenu.position = ccp(-1000, -1000);
    
    chillaxVolcanoMenu = [CCMenu menuWithItems:chillaxVolcanoBackSprite, nil];
    
    chillaxChatSprite.position = ccp(-1000, -1000);
    
    [chillaxSpriteMidLayer addChild: chillaxSpriteMenu];
    [chillaxSpriteMidLayer addChild: chillaxChatSprite];
    [chillaxSpriteFrontLayer addChild: chillaxVolcanoFrontSprite];
    [chillaxSpriteBackLayer addChild: chillaxVolcanoMenu];
    
    chillaxSpriteBackLayer.position = ccp(-1000, -1000);
    chillaxSpriteMidLayer.position = ccp(-1000, -1000);
    chillaxSpriteFrontLayer.position = ccp(-1000, -1000);
}

-(void) drawChillaxElements{
    chillaxSpriteBackLayer.position = ccp(0, 0);
    chillaxSpriteMidLayer.position = ccp(0, 0);
    chillaxSpriteFrontLayer.position = ccp(0, 0);
    chillaxStatsLayer.position = ccp(0, 0);
}

-(void) trollTouched:(id)sender{
    if(chillaxStartTrollDeathAnim || chillaxTrollResetTimer > 0){
        //DO NOTHING
    }
    else{
        chillaxTrollTouched = TRUE;
        chillaxCurrentTaps++;
    }
}

-(void) trollExtraTouched:(id)sender{
    if(chillaxStartTrollDeathAnim || chillaxTrollResetTimer > 0){
        //DO NOTHING
    }
    else{
        chillaxTrollTouched = TRUE;
        chillaxCurrentTaps++;
    }
}

-(void) quitTouched:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:chillaxCurrentTaps forKey:@"chillaxScore"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[GameOver node]]];
}

-(void) onExit{
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [chillaxTapsNumber0_1 release];
    [chillaxTapsNumber0_2 release];
    [chillaxTapsNumber0_3 release];
    [chillaxTapsNumber0_4 release];
    [chillaxTapsNumber1_1 release];
    [chillaxTapsNumber1_2 release];
    [chillaxTapsNumber1_3 release];
    [chillaxTapsNumber1_4 release];
    [chillaxTapsNumber2_1 release];
    [chillaxTapsNumber2_2 release];
    [chillaxTapsNumber2_3 release];
    [chillaxTapsNumber2_4 release];
    [chillaxTapsNumber3_1 release];
    [chillaxTapsNumber3_2 release];
    [chillaxTapsNumber3_3 release];
    [chillaxTapsNumber3_4 release];
    [chillaxTapsNumber4_1 release];
    [chillaxTapsNumber4_2 release];
    [chillaxTapsNumber4_3 release];
    [chillaxTapsNumber4_4 release];
    [chillaxTapsNumber5_1 release];
    [chillaxTapsNumber5_2 release];
    [chillaxTapsNumber5_3 release];
    [chillaxTapsNumber5_4 release];
    [chillaxTapsNumber6_1 release];
    [chillaxTapsNumber6_2 release];
    [chillaxTapsNumber6_3 release];
    [chillaxTapsNumber6_4 release];
    [chillaxTapsNumber7_1 release];
    [chillaxTapsNumber7_2 release];
    [chillaxTapsNumber7_3 release];
    [chillaxTapsNumber7_4 release];
    [chillaxTapsNumber8_1 release];
    [chillaxTapsNumber8_2 release];
    [chillaxTapsNumber8_3 release];
    [chillaxTapsNumber8_4 release];
    [chillaxTapsNumber9_1 release];
    [chillaxTapsNumber9_2 release];
    [chillaxTapsNumber9_3 release];
    [chillaxTapsNumber9_4 release];
    [chillaxChatSprite release];
    [chillaxTrollSpriteGreen release];
    [chillaxTrollSpriteGrey release];
    [chillaxTrollSpritePurple release];
    [chillaxTrollSpriteDeadGreen release];
    [chillaxTrollSpriteDeadGrey release];
    [chillaxTrollSpriteDeadPurple release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
