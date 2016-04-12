//
//  GameResults.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "GameResults.h"
#import "StoryMode1_2.h"
#import "StoryMode2_1.h"
#import "StoryMode2_2.h"
#import "StoryMode3_1.h"
#import "StoryMode3_2.h"
#import "BossScene_1.h"
#import "BossScene_2.h"
#import "BossSceneFinal.h"
#import "SimpleAudioEngine.h"

#pragma mark - GameResults

CCSprite *resultsBackground;

CCLayer *resultsButtonLayer;
CCLayer *resultsTextLayer;
CCLayer *resultsStatsLayer;

CCMenu *resultsButtonMenu;
CCMenu *resultsScoreMenu;

CCMenuItemSprite *resultsScoreDigitOne;
CCMenuItemSprite *resultsScoreDigitTwo;
CCMenuItemSprite *resultsScoreDigitThree;
CCMenuItemSprite *resultsScoreDigitFour;

CCSprite *resultsScoreNumber0_1;
CCSprite *resultsScoreNumber0_2;
CCSprite *resultsScoreNumber0_3;
CCSprite *resultsScoreNumber0_4;
CCSprite *resultsScoreNumber1_1;
CCSprite *resultsScoreNumber1_2;
CCSprite *resultsScoreNumber1_3;
CCSprite *resultsScoreNumber1_4;
CCSprite *resultsScoreNumber2_1;
CCSprite *resultsScoreNumber2_2;
CCSprite *resultsScoreNumber2_3;
CCSprite *resultsScoreNumber2_4;
CCSprite *resultsScoreNumber3_1;
CCSprite *resultsScoreNumber3_2;
CCSprite *resultsScoreNumber3_3;
CCSprite *resultsScoreNumber3_4;
CCSprite *resultsScoreNumber4_1;
CCSprite *resultsScoreNumber4_2;
CCSprite *resultsScoreNumber4_3;
CCSprite *resultsScoreNumber4_4;
CCSprite *resultsScoreNumber5_1;
CCSprite *resultsScoreNumber5_2;
CCSprite *resultsScoreNumber5_3;
CCSprite *resultsScoreNumber5_4;
CCSprite *resultsScoreNumber6_1;
CCSprite *resultsScoreNumber6_2;
CCSprite *resultsScoreNumber6_3;
CCSprite *resultsScoreNumber6_4;
CCSprite *resultsScoreNumber7_1;
CCSprite *resultsScoreNumber7_2;
CCSprite *resultsScoreNumber7_3;
CCSprite *resultsScoreNumber7_4;
CCSprite *resultsScoreNumber8_1;
CCSprite *resultsScoreNumber8_2;
CCSprite *resultsScoreNumber8_3;
CCSprite *resultsScoreNumber8_4;
CCSprite *resultsScoreNumber9_1;
CCSprite *resultsScoreNumber9_2;
CCSprite *resultsScoreNumber9_3;
CCSprite *resultsScoreNumber9_4;

CCMenuItemImage *resultsContinueButton;

CCSprite *resultsLevelCompleteSprite;
CCSprite *resultsCurrentScoreSprite;

BOOL resultsLevelCompleteInPlace = FALSE;
BOOL resultsCurrentScoreTextInPlace = FALSE;
BOOL resultsCurrentScoreDigitsInPlace = FALSE;
BOOL resultsContinueButtonInPlace = FALSE;
BOOL resultsAllElementsInPlace = FALSE;

int resultsScoreToDraw = 0;
int resultsInt = 0;

@implementation GameResults

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	GameResults *layer = [GameResults node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        resultsButtonLayer = [CCLayer node];
        resultsTextLayer = [CCLayer node];
        resultsStatsLayer = [CCLayer node];
        
        resultsBackground = [CCSprite spriteWithFile:@"BackgroundImages/level_1_background_640.png"];
        resultsBackground.position = ccp(240, 160);
        
        [self addChild: resultsBackground];
        [self addChild: resultsTextLayer];
        [self addChild: resultsStatsLayer];
        [self addChild: resultsButtonLayer];
        
        [self loadResultsText];
        [self loadResultsStats];
        [self loadResultsButtons];
    }
    
    resultsLevelCompleteInPlace = FALSE;
    resultsCurrentScoreTextInPlace = FALSE;
    resultsCurrentScoreDigitsInPlace = FALSE;
    resultsContinueButtonInPlace = FALSE;
    resultsAllElementsInPlace = FALSE;
    resultsScoreToDraw = 0;
    resultsInt = 0;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!resultsAllElementsInPlace){
        if(!resultsLevelCompleteInPlace){
            if(resultsLevelCompleteSprite.position.x < 240){
                resultsLevelCompleteSprite.position = ccp(resultsLevelCompleteSprite.position.x +10, resultsLevelCompleteSprite.position.y);
            }
            else{
                resultsLevelCompleteInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!resultsCurrentScoreTextInPlace){
            if(resultsCurrentScoreSprite.position.x < 140){
                resultsCurrentScoreSprite.position = ccp(resultsCurrentScoreSprite.position.x +10, resultsCurrentScoreSprite.position.y);
            }
            else{
                resultsCurrentScoreTextInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!resultsCurrentScoreDigitsInPlace){
            if(resultsScoreMenu.position.x < 340){
                resultsScoreMenu.position = ccp(resultsScoreMenu.position.x +10, resultsScoreMenu.position.y);
            }
            else{
                resultsCurrentScoreDigitsInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
            }
        }
        else if(!resultsContinueButtonInPlace){
            if(resultsButtonMenu.position.x < 240){
                resultsButtonMenu.position = ccp(resultsButtonMenu.position.x +10, resultsButtonMenu.position.y);
            }
            else{
                resultsContinueButtonInPlace = TRUE;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_buttons_appear.mp3"];
            }
        }
        else{
            resultsAllElementsInPlace = TRUE;
        }
    }
    else{
        //DO EVERYTHING ELSE
    }
    
}

-(void) loadResultsText{
    resultsLevelCompleteSprite = [CCSprite spriteWithFile:@"GameText/level_complete_text.png"];
    resultsLevelCompleteSprite.position = ccp(-400, 240);
    
    resultsCurrentScoreSprite = [CCSprite spriteWithFile:@"GameText/score_results_text.png"];
    resultsCurrentScoreSprite.position = ccp(-500, 140);
    
    [resultsTextLayer addChild: resultsLevelCompleteSprite];
    [resultsTextLayer addChild: resultsCurrentScoreSprite];
}

-(void) loadResultsStats{
    resultsScoreNumber0_1 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    resultsScoreNumber0_2 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    resultsScoreNumber0_3 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    resultsScoreNumber0_4 = [[CCSprite spriteWithFile:@"GameText/number_0_64.png"]retain];
    resultsScoreNumber1_1 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    resultsScoreNumber1_2 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    resultsScoreNumber1_3 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    resultsScoreNumber1_4 = [[CCSprite spriteWithFile:@"GameText/number_1_64.png"]retain];
    resultsScoreNumber2_1 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    resultsScoreNumber2_2 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    resultsScoreNumber2_3 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    resultsScoreNumber2_4 = [[CCSprite spriteWithFile:@"GameText/number_2_64.png"]retain];
    resultsScoreNumber3_1 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    resultsScoreNumber3_2 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    resultsScoreNumber3_3 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    resultsScoreNumber3_4 = [[CCSprite spriteWithFile:@"GameText/number_3_64.png"]retain];
    resultsScoreNumber4_1 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    resultsScoreNumber4_2 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    resultsScoreNumber4_3 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    resultsScoreNumber4_4 = [[CCSprite spriteWithFile:@"GameText/number_4_64.png"]retain];
    resultsScoreNumber5_1 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    resultsScoreNumber5_2 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    resultsScoreNumber5_3 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    resultsScoreNumber5_4 = [[CCSprite spriteWithFile:@"GameText/number_5_64.png"]retain];
    resultsScoreNumber6_1 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    resultsScoreNumber6_2 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    resultsScoreNumber6_3 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    resultsScoreNumber6_4 = [[CCSprite spriteWithFile:@"GameText/number_6_64.png"]retain];
    resultsScoreNumber7_1 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    resultsScoreNumber7_2 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    resultsScoreNumber7_3 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    resultsScoreNumber7_4 = [[CCSprite spriteWithFile:@"GameText/number_7_64.png"]retain];
    resultsScoreNumber8_1 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    resultsScoreNumber8_2 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    resultsScoreNumber8_3 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    resultsScoreNumber8_4 = [[CCSprite spriteWithFile:@"GameText/number_8_64.png"]retain];
    resultsScoreNumber9_1 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    resultsScoreNumber9_2 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    resultsScoreNumber9_3 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    resultsScoreNumber9_4 = [[CCSprite spriteWithFile:@"GameText/number_9_64.png"]retain];
    
    resultsScoreDigitOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                   selectedSprite:NULL]retain];
    
    resultsScoreDigitTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                   selectedSprite:NULL]retain];
    
    resultsScoreDigitThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                   selectedSprite:NULL]retain];
    
    resultsScoreDigitFour = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                   selectedSprite:NULL]retain];
    
    resultsScoreMenu = [CCMenu menuWithItems: resultsScoreDigitOne, resultsScoreDigitTwo, resultsScoreDigitThree, resultsScoreDigitFour, nil];
    [resultsScoreMenu alignItemsHorizontallyWithPadding:40];
    resultsScoreMenu.position = ccp(-400, 140);
    
    [resultsStatsLayer addChild: resultsScoreMenu];
}

-(void) loadResultsButtons{
    resultsContinueButton = [[CCMenuItemImage itemWithNormalImage:@"MenuButtons/continue_button.png"
                                                    selectedImage:NULL
                                                    target:self
                                                  selector:@selector(continueTouched:)]retain];
    
    resultsButtonMenu = [CCMenu menuWithItems: resultsContinueButton, nil];
    resultsButtonMenu.position = ccp(-400, 60);
    
    [resultsButtonLayer addChild: resultsButtonMenu];
    
    [self drawResultsElements];
}

-(void) drawResultsElements{
    resultsScoreToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScore"];
    
    resultsInt = resultsScoreToDraw;
    
    if(resultsScoreToDraw <= 9){
        if(resultsScoreToDraw == 0){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber0_4];
        }
        else if(resultsScoreToDraw == 1){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber1_4];
        }
        else if(resultsScoreToDraw == 2){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber2_4];
        }
        else if(resultsScoreToDraw == 3){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber3_4];
        }
        else if(resultsScoreToDraw == 4){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber4_4];
        }
        else if(resultsScoreToDraw == 5){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber5_4];
        }
        else if(resultsScoreToDraw == 6){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber6_4];
        }
        else if(resultsScoreToDraw == 7){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber7_4];
        }
        else if(resultsScoreToDraw == 8){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber8_4];
        }
        else if(resultsScoreToDraw == 9){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber9_4];
        }
        [resultsScoreDigitOne setNormalImage:resultsScoreNumber0_1];
        [resultsScoreDigitTwo setNormalImage:resultsScoreNumber0_2];
        [resultsScoreDigitThree setNormalImage:resultsScoreNumber0_3];
    }
    
    else if(resultsScoreToDraw >= 10 && resultsScoreToDraw <= 99){
        int lSDS = resultsInt % 10;
        if(lSDS == 0){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber0_4];
        }
        else if(lSDS == 1){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber1_4];
        }
        else if(lSDS == 2){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber2_4];
        }
        else if(lSDS == 3){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber3_4];
        }
        else if(lSDS == 4){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber4_4];
        }
        else if(lSDS == 5){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber5_4];
        }
        else if(lSDS == 6){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber6_4];
        }
        else if(lSDS == 7){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber7_4];
        }
        else if(lSDS == 8){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber8_4];
        }
        else if(lSDS == 9){
            [resultsScoreDigitFour setNormalImage:resultsScoreNumber9_4];
        }
        
        if(resultsScoreToDraw >= 10 && resultsScoreToDraw <= 19){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber1_3];
        }
        else if(resultsScoreToDraw >= 20 && resultsScoreToDraw <= 29){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber2_3];
        }
        else if(resultsScoreToDraw >= 30 && resultsScoreToDraw <= 39){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber3_3];
        }
        else if(resultsScoreToDraw >= 40 && resultsScoreToDraw <= 49){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber4_3];
        }
        else if(resultsScoreToDraw >= 50 && resultsScoreToDraw <= 59){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber5_3];
        }
        else if(resultsScoreToDraw >= 60 && resultsScoreToDraw <= 69){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber6_3];
        }
        else if(resultsScoreToDraw >= 70 && resultsScoreToDraw <= 79){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber7_3];
        }
        else if(resultsScoreToDraw >= 80 && resultsScoreToDraw <= 89){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber8_3];
        }
        else if(resultsScoreToDraw >= 90 && resultsScoreToDraw <= 99){
            [resultsScoreDigitThree setNormalImage:resultsScoreNumber9_3];
        }
        [resultsScoreDigitTwo setNormalImage:resultsScoreNumber0_2];
        [resultsScoreDigitOne setNormalImage:resultsScoreNumber0_1];
    }
    
    else if(resultsScoreToDraw >= 100 && resultsScoreToDraw <= 999){
        int resultsCount = 0;
        while(resultsCount < 2){
            int lSDSs = resultsInt % 10;
            if(resultsCount == 0){
                if(lSDSs == 0){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber0_4];
                }
                else if(lSDSs == 1){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber1_4];
                }
                else if(lSDSs == 2){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber2_4];
                }
                else if(lSDSs == 3){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber3_4];
                }
                else if(lSDSs == 4){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber4_4];
                }
                else if(lSDSs == 5){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber5_4];
                }
                else if(lSDSs == 6){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber6_4];
                }
                else if(lSDSs == 7){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber7_4];
                }
                else if(lSDSs == 8){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber8_4];
                }
                else if(lSDSs == 9){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber9_4];
                }
            }
            else if(resultsCount == 1){
                if(lSDSs == 0){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber0_3];
                }
                else if(lSDSs == 1){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber1_3];
                }
                else if(lSDSs == 2){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber2_3];
                }
                else if(lSDSs == 3){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber3_3];
                }
                else if(lSDSs == 4){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber4_3];
                }
                else if(lSDSs == 5){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber5_3];
                }
                else if(lSDSs == 6){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber6_3];
                }
                else if(lSDSs == 7){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber7_3];
                }
                else if(lSDSs == 8){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber8_3];
                }
                else if(lSDSs == 9){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber9_3];
                }
            }
            resultsInt /= 10;
            resultsCount++;
        }
        
        if(resultsScoreToDraw >= 100 && resultsScoreToDraw <= 199){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber1_2];
        }
        else if(resultsScoreToDraw >= 200 && resultsScoreToDraw <= 299){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber2_2];
        }
        else if(resultsScoreToDraw >= 300 && resultsScoreToDraw <= 399){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber3_2];
        }
        else if(resultsScoreToDraw >= 400 && resultsScoreToDraw <= 499){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber4_2];
        }
        else if(resultsScoreToDraw >= 500 && resultsScoreToDraw <= 599){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber5_2];
        }
        else if(resultsScoreToDraw >= 600 && resultsScoreToDraw <= 699){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber6_2];
        }
        else if(resultsScoreToDraw >= 700 && resultsScoreToDraw <= 799){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber7_2];
        }
        else if(resultsScoreToDraw >= 800 && resultsScoreToDraw <= 899){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber8_2];
        }
        else if(resultsScoreToDraw >= 900 && resultsScoreToDraw <= 999){
            [resultsScoreDigitTwo setNormalImage:resultsScoreNumber9_2];
        }
        [resultsScoreDigitOne setNormalImage:resultsScoreNumber0_1];
    }
    
    else if(resultsScoreToDraw >= 1000 && resultsScoreToDraw <= 9999){
        int resultsCount = 0;
        while(resultsCount < 3){
            int lSDSsS = resultsInt % 10;
            if(resultsCount == 0){
                if(lSDSsS == 0){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber0_4];
                }
                else if(lSDSsS == 1){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber1_4];
                }
                else if(lSDSsS == 2){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber2_4];
                }
                else if(lSDSsS == 3){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber3_4];
                }
                else if(lSDSsS == 4){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber4_4];
                }
                else if(lSDSsS == 5){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber5_4];
                }
                else if(lSDSsS == 6){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber6_4];
                }
                else if(lSDSsS == 7){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber7_4];
                }
                else if(lSDSsS == 8){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber8_4];
                }
                else if(lSDSsS == 9){
                    [resultsScoreDigitFour setNormalImage:resultsScoreNumber9_4];
                }
            }
            else if(resultsCount == 1){
                if(lSDSsS == 0){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber0_3];
                }
                else if(lSDSsS == 1){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber1_3];
                }
                else if(lSDSsS == 2){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber2_3];
                }
                else if(lSDSsS == 3){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber3_3];
                }
                else if(lSDSsS == 4){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber4_3];
                }
                else if(lSDSsS == 5){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber5_3];
                }
                else if(lSDSsS == 6){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber6_3];
                }
                else if(lSDSsS == 7){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber7_3];
                }
                else if(lSDSsS == 8){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber8_3];
                }
                else if(lSDSsS == 9){
                    [resultsScoreDigitThree setNormalImage:resultsScoreNumber9_3];
                }
            }
            else if(resultsCount == 2){
                if(lSDSsS == 0){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber0_2];
                }
                else if(lSDSsS == 1){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber1_2];
                }
                else if(lSDSsS == 2){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber2_2];
                }
                else if(lSDSsS == 3){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber3_2];
                }
                else if(lSDSsS == 4){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber4_2];
                }
                else if(lSDSsS == 5){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber5_2];
                }
                else if(lSDSsS == 6){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber6_2];
                }
                else if(lSDSsS == 7){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber7_2];
                }
                else if(lSDSsS == 8){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber8_2];
                }
                else if(lSDSsS == 9){
                    [resultsScoreDigitTwo setNormalImage:resultsScoreNumber9_2];
                }
            }
            resultsInt /= 10;
            resultsCount++;
            
            if(resultsScoreToDraw >= 1000 && resultsScoreToDraw <= 1999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber1_1];
            }
            else if(resultsScoreToDraw >= 2000 && resultsScoreToDraw <= 2999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber2_1];
            }
            else if(resultsScoreToDraw >= 3000 && resultsScoreToDraw <= 3999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber3_1];
            }
            else if(resultsScoreToDraw >= 4000 && resultsScoreToDraw <= 4999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber4_1];
            }
            else if(resultsScoreToDraw >= 5000 && resultsScoreToDraw <= 5999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber5_1];
            }
            else if(resultsScoreToDraw >= 6000 && resultsScoreToDraw <= 6999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber6_1];
            }
            else if(resultsScoreToDraw >= 7000 && resultsScoreToDraw <= 7999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber7_1];
            }
            else if(resultsScoreToDraw >= 8000 && resultsScoreToDraw <= 8999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber8_1];
            }
            else if(resultsScoreToDraw >= 9000 && resultsScoreToDraw <= 9999){
                [resultsScoreDigitOne setNormalImage:resultsScoreNumber9_1];
            }
        }
    }
}

-(void) continueTouched:(id)sender{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyID"] == 1){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [StoryMode1_2 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyID"] == 3){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [StoryMode2_1 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyID"] == 4){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [StoryMode2_2 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyID"] == 6){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [StoryMode3_1 node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"storyID"] == 7){
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [StoryMode3_2 node]]];
    }
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [resultsScoreNumber0_1 release];
    [resultsScoreNumber0_2 release];
    [resultsScoreNumber0_3 release];
    [resultsScoreNumber0_4 release];
    [resultsScoreNumber1_1 release];
    [resultsScoreNumber1_2 release];
    [resultsScoreNumber1_3 release];
    [resultsScoreNumber1_4 release];
    [resultsScoreNumber2_1 release];
    [resultsScoreNumber2_2 release];
    [resultsScoreNumber2_3 release];
    [resultsScoreNumber2_4 release];
    [resultsScoreNumber3_1 release];
    [resultsScoreNumber3_2 release];
    [resultsScoreNumber3_3 release];
    [resultsScoreNumber3_4 release];
    [resultsScoreNumber4_1 release];
    [resultsScoreNumber4_2 release];
    [resultsScoreNumber4_3 release];
    [resultsScoreNumber4_4 release];
    [resultsScoreNumber5_1 release];
    [resultsScoreNumber5_2 release];
    [resultsScoreNumber5_3 release];
    [resultsScoreNumber5_4 release];
    [resultsScoreNumber6_1 release];
    [resultsScoreNumber6_2 release];
    [resultsScoreNumber6_3 release];
    [resultsScoreNumber6_4 release];
    [resultsScoreNumber7_1 release];
    [resultsScoreNumber7_2 release];
    [resultsScoreNumber7_3 release];
    [resultsScoreNumber7_4 release];
    [resultsScoreNumber8_1 release];
    [resultsScoreNumber8_2 release];
    [resultsScoreNumber8_3 release];
    [resultsScoreNumber8_4 release];
    [resultsScoreNumber9_1 release];
    [resultsScoreNumber9_2 release];
    [resultsScoreNumber9_3 release];
    [resultsScoreNumber9_4 release];
    [resultsScoreDigitOne release];
    [resultsScoreDigitTwo release];
    [resultsScoreDigitThree release];
    [resultsScoreDigitFour release];
    [resultsContinueButton release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end
