//
//  GameOver.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "GameOver.h"
#import "MainMenu.h"
#import "StoryMode1_1.h"
#import "EndlessMode.h"
#import "TimeAttack.h"
#import "ChillaxZone.h"
#import "SimpleAudioEngine.h"

#pragma mark - GameOver

CCSprite *gameOverBackground;

CCMenu *gameOverNumberMenu;
CCMenuItemSprite *gameOverScoreDigitOne;
CCMenuItemSprite *gameOverScoreDigitTwo;
CCMenuItemSprite *gameOverScoreDigitThree;
CCMenuItemSprite *gameOverScoreDigitFour;

CCLayer *gameOverTextLayer;
CCLayer *gameOverButtonLayer;
CCLayer *gameOverStatsLayer;

CCMenu *gameOverButtonMenu;
CCMenuItemImage *gameOverResetButton;
CCMenuItemImage *gameOverMenuButton;

CCSprite *gameOverScoreNumber0_1;
CCSprite *gameOverScoreNumber0_2;
CCSprite *gameOverScoreNumber0_3;
CCSprite *gameOverScoreNumber0_4;
CCSprite *gameOverScoreNumber1_1;
CCSprite *gameOverScoreNumber1_2;
CCSprite *gameOverScoreNumber1_3;
CCSprite *gameOverScoreNumber1_4;
CCSprite *gameOverScoreNumber2_1;
CCSprite *gameOverScoreNumber2_2;
CCSprite *gameOverScoreNumber2_3;
CCSprite *gameOverScoreNumber2_4;
CCSprite *gameOverScoreNumber3_1;
CCSprite *gameOverScoreNumber3_2;
CCSprite *gameOverScoreNumber3_3;
CCSprite *gameOverScoreNumber3_4;
CCSprite *gameOverScoreNumber4_1;
CCSprite *gameOverScoreNumber4_2;
CCSprite *gameOverScoreNumber4_3;
CCSprite *gameOverScoreNumber4_4;
CCSprite *gameOverScoreNumber5_1;
CCSprite *gameOverScoreNumber5_2;
CCSprite *gameOverScoreNumber5_3;
CCSprite *gameOverScoreNumber5_4;
CCSprite *gameOverScoreNumber6_1;
CCSprite *gameOverScoreNumber6_2;
CCSprite *gameOverScoreNumber6_3;
CCSprite *gameOverScoreNumber6_4;
CCSprite *gameOverScoreNumber7_1;
CCSprite *gameOverScoreNumber7_2;
CCSprite *gameOverScoreNumber7_3;
CCSprite *gameOverScoreNumber7_4;
CCSprite *gameOverScoreNumber8_1;
CCSprite *gameOverScoreNumber8_2;
CCSprite *gameOverScoreNumber8_3;
CCSprite *gameOverScoreNumber8_4;
CCSprite *gameOverScoreNumber9_1;
CCSprite *gameOverScoreNumber9_2;
CCSprite *gameOverScoreNumber9_3;
CCSprite *gameOverScoreNumber9_4;

CCSprite *gameOverGameOverText;
CCSprite *gameOverNumberDescriptionText;

ccTime gameOverGraphicsTimer = 0.0f;

BOOL gameOverAllElementsInPlace = FALSE;
BOOL gameOverTextInPlace = FALSE;
BOOL gameOverDescriptionInPlace = FALSE;
BOOL gameOverNumbersInPlace = FALSE;
BOOL gameOverButtonsInPlace = FALSE;

int gameOverNumberToDraw = 0;
int gameOverInt = 0;

@implementation GameOver

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	GameOver *layer = [GameOver node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        gameOverTextLayer = [CCLayer node];
        gameOverButtonLayer = [CCLayer node];
        gameOverStatsLayer = [CCLayer node];
        
        gameOverBackground = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        gameOverBackground.position = ccp(240, 160);
        
        [self addChild: gameOverBackground];
        [self addChild: gameOverTextLayer];
        [self addChild: gameOverStatsLayer];
        [self addChild: gameOverButtonLayer];
        
        [self loadGameOverElements];
    }
    
    gameOverGraphicsTimer = 0.0f;
    gameOverAllElementsInPlace = FALSE;
    gameOverTextInPlace = FALSE;
    gameOverDescriptionInPlace = FALSE;
    gameOverNumbersInPlace = FALSE;
    gameOverButtonsInPlace = FALSE;
    gameOverNumberToDraw = 0;
    gameOverInt = 0;
    
    return self;
}

-(void) update:(ccTime)dt{
    gameOverGraphicsTimer += dt;
    
    if(!gameOverAllElementsInPlace){
        if(!gameOverTextInPlace){
            if(gameOverGameOverText.position.x < 240){
                gameOverGameOverText.position = ccp(gameOverGameOverText.position.x +10, gameOverGameOverText.position.y);
            }
            else{
                gameOverTextInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!gameOverDescriptionInPlace){
            if(gameOverNumberDescriptionText.position.x < 140){
                gameOverNumberDescriptionText.position = ccp(gameOverNumberDescriptionText.position.x +10, gameOverNumberDescriptionText.position.y);
            }
            else{
                gameOverDescriptionInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!gameOverNumbersInPlace){
            if(gameOverNumberMenu.position.x < 340){
                gameOverNumberMenu.position = ccp(gameOverNumberMenu.position.x +10, gameOverNumberMenu.position.y);
            }
            else{
                gameOverNumbersInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!gameOverButtonsInPlace){
            if(gameOverButtonMenu.position.x < 240){
                gameOverButtonMenu.position = ccp(gameOverButtonMenu.position.x +10, gameOverButtonMenu.position.y);
            }
            else{
                gameOverButtonsInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_buttons_appear.mp3"];
            }
        }
        else{
            gameOverAllElementsInPlace = TRUE;
        }
    }
    else{
        //DO EVERYTHING ELSE
    }
}

-(void) loadGameOverElements{
    gameOverGameOverText = [CCSprite spriteWithFile:@"GameText/game_over_text.png"];
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        gameOverNumberDescriptionText = [CCSprite spriteWithFile:@"GameText/score_results_text.png"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        gameOverNumberDescriptionText = [CCSprite spriteWithFile:@"GameText/score_results_text.png"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        gameOverNumberDescriptionText = [CCSprite spriteWithFile:@"GameText/score_results_text.png"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        gameOverNumberDescriptionText = [CCSprite spriteWithFile:@"GameText/taps_made_text.png"];
    }
    
    gameOverGameOverText.position = ccp(-400, 240);
    gameOverNumberDescriptionText.position = ccp(-500, 140);
    
    [gameOverTextLayer addChild: gameOverGameOverText];
    [gameOverTextLayer addChild: gameOverNumberDescriptionText];
    
    gameOverScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    gameOverScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    gameOverScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    gameOverScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    gameOverScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    gameOverScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    gameOverScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    gameOverScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    gameOverScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    gameOverScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    gameOverScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    gameOverScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    gameOverScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    gameOverScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    gameOverScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    gameOverScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    gameOverScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    gameOverScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    gameOverScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    gameOverScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    gameOverScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    gameOverScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    gameOverScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    gameOverScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    gameOverScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    gameOverScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    gameOverScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    gameOverScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    gameOverScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    gameOverScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    gameOverScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    gameOverScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    gameOverScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    gameOverScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    gameOverScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    gameOverScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    gameOverScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    gameOverScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    gameOverScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    gameOverScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    
    gameOverScoreDigitOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    gameOverScoreDigitTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    gameOverScoreDigitThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                      selectedSprite:NULL]retain];
    
    gameOverScoreDigitFour = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                     selectedSprite:NULL]retain];
    
    gameOverNumberMenu = [CCMenu menuWithItems: gameOverScoreDigitOne, gameOverScoreDigitTwo, gameOverScoreDigitThree, gameOverScoreDigitFour, nil];
    [gameOverNumberMenu alignItemsHorizontallyWithPadding:40];
    gameOverNumberMenu.position = ccp(-400, 140);
    
    [gameOverStatsLayer addChild: gameOverNumberMenu];
    
    gameOverResetButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/reset_button.png"
                                                    selectedImage:NULL
                                                           target:self
                                                         selector:@selector(resetTouched:)]retain];
    
    gameOverMenuButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button.png"
                                                  selectedImage:NULL
                                                         target:self
                                                       selector:@selector(menuTouched:)]retain];
    
    gameOverButtonMenu = [CCMenu menuWithItems: gameOverMenuButton, gameOverResetButton, nil];
    [gameOverButtonMenu alignItemsHorizontallyWithPadding:100];
    gameOverButtonMenu.position = ccp(-400, 60);
    
    [gameOverButtonLayer addChild: gameOverButtonMenu];
    
    [self drawGameOverElements];
}

-(void) drawGameOverElements{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        gameOverNumberToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        gameOverNumberToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"timeScore"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        gameOverNumberToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"endlessScore"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        gameOverNumberToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"chillaxScore"];
    }
    
    gameOverInt = gameOverNumberToDraw;
    
    if(gameOverNumberToDraw <= 9){
        if(gameOverNumberToDraw == 0){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber0_4];
        }
        else if(gameOverNumberToDraw == 1){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber1_4];
        }
        else if(gameOverNumberToDraw == 2){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber2_4];
        }
        else if(gameOverNumberToDraw == 3){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber3_4];
        }
        else if(gameOverNumberToDraw == 4){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber4_4];
        }
        else if(gameOverNumberToDraw == 5){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber5_4];
        }
        else if(gameOverNumberToDraw == 6){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber6_4];
        }
        else if(gameOverNumberToDraw == 7){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber7_4];
        }
        else if(gameOverNumberToDraw == 8){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber8_4];
        }
        else if(gameOverNumberToDraw == 9){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber9_4];
        }
        [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber0_1];
        [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber0_2];
        [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber0_3];
    }
    
    else if(gameOverNumberToDraw >= 10 && gameOverNumberToDraw <= 99){
        int lSDS = gameOverInt % 10;
        if(lSDS == 0){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber0_4];
        }
        else if(lSDS == 1){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber1_4];
        }
        else if(lSDS == 2){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber2_4];
        }
        else if(lSDS == 3){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber3_4];
        }
        else if(lSDS == 4){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber4_4];
        }
        else if(lSDS == 5){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber5_4];
        }
        else if(lSDS == 6){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber6_4];
        }
        else if(lSDS == 7){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber7_4];
        }
        else if(lSDS == 8){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber8_4];
        }
        else if(lSDS == 9){
            [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber9_4];
        }
        
        if(gameOverNumberToDraw >= 10 && gameOverNumberToDraw <= 19){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber1_3];
        }
        else if(gameOverNumberToDraw >= 20 && gameOverNumberToDraw <= 29){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber2_3];
        }
        else if(gameOverNumberToDraw >= 30 && gameOverNumberToDraw <= 39){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber3_3];
        }
        else if(gameOverNumberToDraw >= 40 && gameOverNumberToDraw <= 49){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber4_3];
        }
        else if(gameOverNumberToDraw >= 50 && gameOverNumberToDraw <= 59){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber5_3];
        }
        else if(gameOverNumberToDraw >= 60 && gameOverNumberToDraw <= 69){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber6_3];
        }
        else if(gameOverNumberToDraw >= 70 && gameOverNumberToDraw <= 79){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber7_3];
        }
        else if(gameOverNumberToDraw >= 80 && gameOverNumberToDraw <= 89){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber8_3];
        }
        else if(gameOverNumberToDraw >= 90 && gameOverNumberToDraw <= 99){
            [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber9_3];
        }
        [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber0_2];
        [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber0_1];
    }
    
    else if(gameOverNumberToDraw >= 100 && gameOverNumberToDraw <= 999){
        int gameOverCount = 0;
        while(gameOverCount < 2){
            int lSDSs = gameOverInt % 10;
            if(gameOverCount == 0){
                if(lSDSs == 0){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber9_4];
                }
            }
            else if(gameOverCount == 1){
                if(lSDSs == 0){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber9_3];
                }
            }
            gameOverInt /= 10;
            gameOverCount++;
        }
        
        if(gameOverNumberToDraw >= 100 && gameOverNumberToDraw <= 199){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber1_2];
        }
        else if(gameOverNumberToDraw >= 200 && gameOverNumberToDraw <= 299){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber2_2];
        }
        else if(gameOverNumberToDraw >= 300 && gameOverNumberToDraw <= 399){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber3_2];
        }
        else if(gameOverNumberToDraw >= 400 && gameOverNumberToDraw <= 499){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber4_2];
        }
        else if(gameOverNumberToDraw >= 500 && gameOverNumberToDraw <= 599){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber5_2];
        }
        else if(gameOverNumberToDraw >= 600 && gameOverNumberToDraw <= 699){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber6_2];
        }
        else if(gameOverNumberToDraw >= 700 && gameOverNumberToDraw <= 799){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber7_2];
        }
        else if(gameOverNumberToDraw >= 800 && gameOverNumberToDraw <= 899){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber8_2];
        }
        else if(gameOverNumberToDraw >= 900 && gameOverNumberToDraw <= 999){
            [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber9_2];
        }
        [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber0_1];
    }
    
    else if(gameOverNumberToDraw >= 1000 && gameOverNumberToDraw <= 9999){
        int gameOverCount = 0;
        while(gameOverCount < 3){
            int lSDSsS = gameOverInt % 10;
            if(gameOverCount == 0){
                if(lSDSsS == 0){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [gameOverScoreDigitFour setNormalImage:gameOverScoreNumber9_4];
                }
            }
            else if(gameOverCount == 1){
                if(lSDSsS == 0){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [gameOverScoreDigitThree setNormalImage:gameOverScoreNumber9_3];
                }
            }
            else if(gameOverCount == 2){
                if(lSDSsS == 0){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [gameOverScoreDigitTwo setNormalImage:gameOverScoreNumber9_2];
                }
            }
            gameOverInt /= 10;
            gameOverCount++;
            
            if(gameOverNumberToDraw >= 1000 && gameOverNumberToDraw <= 1999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber1_1];
            }
            else if(gameOverNumberToDraw >= 2000 && gameOverNumberToDraw <= 2999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber2_1];
            }
            else if(gameOverNumberToDraw >= 3000 && gameOverNumberToDraw <= 3999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber3_1];
            }
            else if(gameOverNumberToDraw >= 4000 && gameOverNumberToDraw <= 4999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber4_1];
            }
            else if(gameOverNumberToDraw >= 5000 && gameOverNumberToDraw <= 5999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber5_1];
            }
            else if(gameOverNumberToDraw >= 6000 && gameOverNumberToDraw <= 6999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber6_1];
            }
            else if(gameOverNumberToDraw >= 7000 && gameOverNumberToDraw <= 7999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber7_1];
            }
            else if(gameOverNumberToDraw >= 8000 && gameOverNumberToDraw <= 8999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber8_1];
            }
            else if(gameOverNumberToDraw >= 9000 && gameOverNumberToDraw <= 9999){
                [gameOverScoreDigitOne setNormalImage:gameOverScoreNumber9_1];
            }
        }
    }
}

-(void) resetTouched:(id)sender{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[StoryMode1_1 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[TimeAttack node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[EndlessMode node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[ChillaxZone node]]];
    }
}

-(void) menuTouched:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[MainMenu node]]];
}

-(void) onExit{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        //STORY MODE
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScoreStored"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"] forKey:@"storyScoreStored"];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        //TIME ATTACK
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"timeScore"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"timeScoreStored"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"timeScore"] forKey:@"timeScoreStored"];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        //ENDLESS MODE
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"endlessScore"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"endlessScoreStored"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"endlessScore"] forKey:@"endlessScoreStored"];
        }
    }
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self unschedule:@selector(update:)];
    [super onExit];
}

-(void) dealloc {
    [gameOverScoreNumber0_1 release];
    [gameOverScoreNumber0_2 release];
    [gameOverScoreNumber0_3 release];
    [gameOverScoreNumber0_4 release];
    [gameOverScoreNumber1_1 release];
    [gameOverScoreNumber1_2 release];
    [gameOverScoreNumber1_3 release];
    [gameOverScoreNumber1_4 release];
    [gameOverScoreNumber2_1 release];
    [gameOverScoreNumber2_2 release];
    [gameOverScoreNumber2_3 release];
    [gameOverScoreNumber2_4 release];
    [gameOverScoreNumber3_1 release];
    [gameOverScoreNumber3_2 release];
    [gameOverScoreNumber3_3 release];
    [gameOverScoreNumber3_4 release];
    [gameOverScoreNumber4_1 release];
    [gameOverScoreNumber4_2 release];
    [gameOverScoreNumber4_3 release];
    [gameOverScoreNumber4_4 release];
    [gameOverScoreNumber5_1 release];
    [gameOverScoreNumber5_2 release];
    [gameOverScoreNumber5_3 release];
    [gameOverScoreNumber5_4 release];
    [gameOverScoreNumber6_1 release];
    [gameOverScoreNumber6_2 release];
    [gameOverScoreNumber6_3 release];
    [gameOverScoreNumber6_4 release];
    [gameOverScoreNumber7_1 release];
    [gameOverScoreNumber7_2 release];
    [gameOverScoreNumber7_3 release];
    [gameOverScoreNumber7_4 release];
    [gameOverScoreNumber8_1 release];
    [gameOverScoreNumber8_2 release];
    [gameOverScoreNumber8_3 release];
    [gameOverScoreNumber8_4 release];
    [gameOverScoreNumber9_1 release];
    [gameOverScoreNumber9_2 release];
    [gameOverScoreNumber9_3 release];
    [gameOverScoreNumber9_4 release];
    [gameOverScoreDigitOne release];
    [gameOverScoreDigitTwo release];
    [gameOverScoreDigitThree release];
    [gameOverScoreDigitFour release];
    [gameOverResetButton release];
    [gameOverMenuButton release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
