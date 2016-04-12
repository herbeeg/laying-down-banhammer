//
//  HighScores.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 23/02/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "HighScores.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

#pragma mark - HighScores

CCSprite *scoresBackground;

CCLayer *scoresBannerLayer;
CCLayer *scoresButtonLayer;
CCLayer *scoresTextLayer;

CCMenu *scoresButtonMenu;

CCSprite *scoresStoryText;
CCSprite *scoresTimeText;
CCSprite *scoresEndlessText;

CCSprite *scoresBanner;
CCMenuItemImage *scoresBackButton;
CCMenuItemImage *scoresResetButton;

CCMenuItemSprite *scoreStorySpriteOne;
CCMenuItemSprite *scoreStorySpriteTwo;
CCMenuItemSprite *scoreStorySpriteThree;
CCMenuItemSprite *scoreStorySpriteFour;
CCMenuItemSprite *scoreAttackSpriteOne;
CCMenuItemSprite *scoreAttackSpriteTwo;
CCMenuItemSprite *scoreAttackSpriteThree;
CCMenuItemSprite *scoreAttackSpriteFour;
CCMenuItemSprite *scoreEndlessSpriteOne;
CCMenuItemSprite *scoreEndlessSpriteTwo;
CCMenuItemSprite *scoreEndlessSpriteThree;
CCMenuItemSprite *scoreEndlessSpriteFour;

int highScoreInt = 0;
int score = 0;

BOOL scoresBackTransitionInFinished = FALSE;
BOOL scoresMenuTransitionScheduled = FALSE;
BOOL scoresBackPressed = FALSE;
BOOL scoresResetPressed = FALSE;

@implementation HighScores

+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	
	HighScores *layer = [HighScores node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if(self == [super init]){
        scoresBannerLayer = [CCLayer node];
        scoresButtonLayer = [CCLayer node];
        scoresTextLayer = [CCLayer node];
        
        scoresBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background_no_text.png"];
        scoresBackground.position = ccp(240, 160);
        
        [self addChild: scoresBackground];
        [self addChild: scoresBannerLayer];
        [self addChild: scoresTextLayer];
        [self addChild: scoresButtonLayer];
        
        [self drawScoresElements];
        [self drawScoresButtons];
    }
    
    scoresBackTransitionInFinished = FALSE;
    scoresMenuTransitionScheduled = FALSE;
    scoresBackPressed = FALSE;
    scoresResetPressed = FALSE;
    score = 0;
    highScoreInt = 0;
    
    return self;
}

-(void) update:(ccTime)dt{
    if(!scoresBackTransitionInFinished){
        if(scoresButtonMenu.position.x < 48){
            scoresButtonMenu.position = ccp(scoresButtonMenu.position.x +6, scoresButtonMenu.position.y);
        }
        else{
            scoresBackTransitionInFinished = TRUE;
        }
    }
    
    if(scoresBackPressed){
        if(!scoresMenuTransitionScheduled){
            [self scheduleOnce:@selector(scoresMenuTransition:) delay:1];
            scoresMenuTransitionScheduled = TRUE;
        }
        else{
            scoresButtonMenu.position = ccp(scoresButtonMenu.position.x -6, scoresButtonMenu.position.y);
        }
    }
}

-(void) drawScoresElements{
    scoresBanner = [CCSprite spriteWithFile:@"MenuBanners/scores_banner.png"];
    scoresBanner.position = ccp(60, 312);
    
    scoresStoryText = [CCSprite spriteWithFile:@"GameText/high_scores_story.png"];
    scoresTimeText = [CCSprite spriteWithFile:@"GameText/high_scores_attack.png"];
    scoresEndlessText = [CCSprite spriteWithFile:@"GameText/high_scores_endless.png"];
    
    scoresStoryText.position = ccp(208, 250);
    scoresTimeText.position = ccp(194, 180);
    scoresEndlessText.position = ccp(180, 110);
    
    [scoresBannerLayer addChild: scoresBanner];
    [scoresTextLayer addChild: scoresStoryText];
    [scoresTextLayer addChild: scoresTimeText];
    [scoresTextLayer addChild: scoresEndlessText];
    
    //LOAD STORY MODE SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"storyScoreStored"];
    highScoreInt = score;
    
    if(score >= 0 && score < 10){
        if(score == 0){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 10 && score <= 99){
        int lSDS = highScoreInt % 10;
        if(lSDS == 0){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 1){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 2){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 3){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 4){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 5){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 6){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 7){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 8){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 9){
            scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 100 && score <= 999){
        int storyCount = 0;
        while(storyCount < 2){
            int lSDSs = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSs == 0){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSs == 0){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
        }
        
        if(score >= 100 && score <= 199){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 1000 && score <= 9999){
        int storyCount = 0;
        while(storyCount < 3){
            int lSDSsS = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSsS == 0){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreStorySpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSsS == 0){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreStorySpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 2){
                if(lSDSsS == 0){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreStorySpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
            
            if(score >= 1000 && score <= 1999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
            }
            else if(score >= 2000 && score <= 2999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
            }
            else if(score >= 3000 && score <= 3999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
            }
            else if(score >= 4000 && score <= 4999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
            }
            else if(score >= 5000 && score <= 5999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
            }
            else if(score >= 6000 && score <= 6999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
            }
            else if(score >= 7000 && score <= 7999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
            }
            else if(score >= 8000 && score <= 8999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
            }
            else if(score >= 9000 && score <= 9999){
                scoreStorySpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
            }
        }
    }
    
    scoreStorySpriteOne.position = ccp(365, 250);
    scoreStorySpriteTwo.position = ccp(395, 250);
    scoreStorySpriteThree.position = ccp(425, 250);
    scoreStorySpriteFour.position = ccp(455, 250);
    
    //LOAD TIME ATTACK SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"timeScoreStored"];
    highScoreInt = score;
    
    if(score >= 0 && score < 10){
        if(score == 0){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 10 && score <= 99){
        int lSDS = highScoreInt % 10;
        if(lSDS == 0){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 1){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 2){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 3){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 4){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 5){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 6){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 7){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 8){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 9){
            scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 100 && score <= 999){
        int storyCount = 0;
        while(storyCount < 2){
            int lSDSs = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSs == 0){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSs == 0){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
        }
        
        if(score >= 100 && score <= 199){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 1000 && score <= 9999){
        int storyCount = 0;
        while(storyCount < 3){
            int lSDSsS = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSsS == 0){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreAttackSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSsS == 0){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreAttackSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 2){
                if(lSDSsS == 0){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreAttackSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
            
            if(score >= 1000 && score <= 1999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
            }
            else if(score >= 2000 && score <= 2999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
            }
            else if(score >= 3000 && score <= 3999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
            }
            else if(score >= 4000 && score <= 4999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
            }
            else if(score >= 5000 && score <= 5999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
            }
            else if(score >= 6000 && score <= 6999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
            }
            else if(score >= 7000 && score <= 7999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
            }
            else if(score >= 8000 && score <= 8999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
            }
            else if(score >= 9000 && score <= 9999){
                scoreAttackSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
            }
        }
    }
    
    scoreAttackSpriteOne.position = ccp(365, 180);
    scoreAttackSpriteTwo.position = ccp(395, 180);
    scoreAttackSpriteThree.position = ccp(425, 180);
    scoreAttackSpriteFour.position = ccp(455, 180);
    
    //LOAD ENDLESS MODE SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"endlessScoreStored"];
    highScoreInt = score;
    
    if(score >= 0 && score < 10){
        if(score == 0){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 10 && score <= 99){
        int lSDS = highScoreInt % 10;
        if(lSDS == 0){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 1){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 2){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 3){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 4){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 5){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 6){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 7){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 8){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(lSDS == 9){
            scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
        scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 100 && score <= 999){
        int storyCount = 0;
        while(storyCount < 2){
            int lSDSs = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSs == 0){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSs == 0){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 1){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 2){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 3){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 4){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 5){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 6){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 7){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 8){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSs == 9){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
        }
        
        if(score >= 100 && score <= 199){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
        }
        scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
    }
    
    else if(score >= 1000 && score <= 9999){
        int storyCount = 0;
        while(storyCount < 3){
            int lSDSsS = highScoreInt % 10;
            if(storyCount == 0){
                if(lSDSsS == 0){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreEndlessSpriteFour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 1){
                if(lSDSsS == 0){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreEndlessSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            else if(storyCount == 2){
                if(lSDSsS == 0){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_0_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 1){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 2){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 3){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 4){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 5){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 6){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 7){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 8){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
                }
                else if(lSDSsS == 9){
                    scoreEndlessSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
                }
            }
            highScoreInt /= 10;
            storyCount++;
            
            if(score >= 1000 && score <= 1999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_1_64.png"] selectedSprite:NULL];
            }
            else if(score >= 2000 && score <= 2999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_2_64.png"] selectedSprite:NULL];
            }
            else if(score >= 3000 && score <= 3999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_3_64.png"] selectedSprite:NULL];
            }
            else if(score >= 4000 && score <= 4999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_4_64.png"] selectedSprite:NULL];
            }
            else if(score >= 5000 && score <= 5999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_5_64.png"] selectedSprite:NULL];
            }
            else if(score >= 6000 && score <= 6999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_6_64.png"] selectedSprite:NULL];
            }
            else if(score >= 7000 && score <= 7999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_7_64.png"] selectedSprite:NULL];
            }
            else if(score >= 8000 && score <= 8999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_8_64.png"] selectedSprite:NULL];
            }
            else if(score >= 9000 && score <= 9999){
                scoreEndlessSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GameText/number_9_64.png"] selectedSprite:NULL];
            }
        }
    }
    
    scoreEndlessSpriteOne.position = ccp(365, 110);
    scoreEndlessSpriteTwo.position = ccp(395, 110);
    scoreEndlessSpriteThree.position = ccp(425, 110);
    scoreEndlessSpriteFour.position = ccp(455, 110);
    
    [self addChild: scoreStorySpriteOne];
    [self addChild: scoreStorySpriteTwo];
    [self addChild: scoreStorySpriteThree];
    [self addChild: scoreStorySpriteFour];
    [self addChild: scoreAttackSpriteOne];
    [self addChild: scoreAttackSpriteTwo];
    [self addChild: scoreAttackSpriteThree];
    [self addChild: scoreAttackSpriteFour];
    [self addChild: scoreEndlessSpriteOne];
    [self addChild: scoreEndlessSpriteTwo];
    [self addChild: scoreEndlessSpriteThree];
    [self addChild: scoreEndlessSpriteFour];
}

-(void) drawScoresButtons{
    scoresBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                                selectedImage:@""
                                                       target:self
                                                     selector:@selector(backTouched:)];
    
    scoresButtonMenu = [CCMenu menuWithItems: scoresBackButton, nil];
    [scoresButtonMenu alignItemsHorizontally];
    scoresButtonMenu.position = ccp(-180, 16);
    
    [scoresButtonLayer addChild: scoresButtonMenu];
}

-(void) backTouched:(id)sender{
    scoresBackPressed = TRUE;
}

-(void) resetTouched:(id)sender{
    scoresResetPressed = TRUE;
}

-(void) scoresMenuTransition:(id)sender{
     [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[MainMenu node]]];
}

@end
