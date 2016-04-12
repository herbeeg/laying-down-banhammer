//
//  MainMenu.m
//  LayingDownTheBanhammer
//
//  Created by Jonathan Herbst on 31/01/2013.
//  Last Edited - 31/01/2013
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "MainMenu.h"
#import "GameModes.h"
#import "OptionsMenu.h"
#import "HighScores.h"
#import "TwitterScreen.h"
#import "FacebookScreen.h"
#import "AppDelegate.h"
#import "SimpleAudioEngine.h"

CCLayer *mainButtonLayer;

CCSprite *menuBackground;

CCMenu *mainButtonMenu;
CCMenu *mainSocialMenu;

CCMenuItemImage *mainNewGameButton;
CCMenuItemImage *mainOptionsButton;
CCMenuItemImage *mainScoresButton;
CCMenuItemImage *mainFacebookButton;
CCMenuItemImage *mainTwitterButton;

BOOL newGamePressed = FALSE;
BOOL optionsPressed = FALSE;
BOOL scoresPressed = FALSE;
BOOL twitterPressed = FALSE;
BOOL facebookPressed = FALSE;

BOOL newGameTransitionScheduled = FALSE;
BOOL optionsTransitionScheduled = FALSE;
BOOL scoresTransitionScheduled = FALSE;
BOOL twitterTransitionScheduled = FALSE;
BOOL facebookTransitionScheduled = FALSE;

#pragma mark - MainMenu

@implementation MainMenu

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	
	MainMenu *layer = [MainMenu node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/ldtb_menu_theme.mp3"];
    
	if( (self=[super init]) ) {
        mainButtonLayer = [CCLayer node];
        
        menuBackground = [CCSprite spriteWithFile:@"BackgroundImages/main_menu_background.png"];
        menuBackground.position = ccp(240,160);
        
        [self addChild: menuBackground];
        [self addChild: mainButtonLayer];
        
        [self drawMainMenuElements];
	}
    
    newGamePressed = FALSE;
    optionsPressed = FALSE;
    scoresPressed = FALSE;
    twitterPressed = FALSE;
    facebookPressed = FALSE;
    newGameTransitionScheduled = FALSE;
    optionsTransitionScheduled = FALSE;
    scoresTransitionScheduled = FALSE;
    twitterTransitionScheduled = FALSE;
    facebookTransitionScheduled = FALSE;
    
	return self;
}

-(void) update:(ccTime)dt{
    if(newGamePressed){
        if(!newGameTransitionScheduled){
            [self scheduleOnce:@selector(newGameTransition:) delay:1];
            newGameTransitionScheduled = TRUE;
        }
        else{
            mainButtonMenu.position = ccp(mainButtonMenu.position.x -10, mainButtonMenu.position.y);
            mainSocialMenu.position = ccp(mainSocialMenu.position.x, mainSocialMenu.position.y +2);
        }
    }
    else if(optionsPressed){
        if(!optionsTransitionScheduled){
            [self scheduleOnce:@selector(optionsTransition:) delay:1];
            optionsTransitionScheduled = TRUE;
        }
        else{
            mainButtonMenu.position = ccp(mainButtonMenu.position.x -10, mainButtonMenu.position.y);
            mainSocialMenu.position = ccp(mainSocialMenu.position.x, mainSocialMenu.position.y +2);
        }
    }
    else if(scoresPressed){
        if(!scoresTransitionScheduled){
            [self scheduleOnce:@selector(scoresTransition:) delay:1];
            scoresTransitionScheduled = TRUE;
        }
        else{
            mainButtonMenu.position = ccp(mainButtonMenu.position.x -10, mainButtonMenu.position.y);
            mainSocialMenu.position = ccp(mainSocialMenu.position.x, mainSocialMenu.position.y +2);
        }
        
    }
    else if(twitterPressed){
        if(!twitterTransitionScheduled){
            [self scheduleOnce:@selector(twitterTransition:) delay:1];
            twitterTransitionScheduled = TRUE;
        }
        else{
            mainButtonMenu.position = ccp(mainButtonMenu.position.x -10, mainButtonMenu.position.y);
            mainSocialMenu.position = ccp(mainSocialMenu.position.x, mainSocialMenu.position.y +2);
        }
    }
    else if(facebookPressed){
        if(!facebookTransitionScheduled){
            [self scheduleOnce:@selector(facebookTransition:) delay:1];
            facebookTransitionScheduled = TRUE;
        }
        else{
            mainButtonMenu.position = ccp(mainButtonMenu.position.x -10, mainButtonMenu.position.y);
            mainSocialMenu.position = ccp(mainSocialMenu.position.x, mainSocialMenu.position.y +2);
        }
    }
}

-(void) drawMainMenuElements{
    mainNewGameButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/new_game_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(newGameTouched:)];
    
    mainOptionsButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/options_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(optionsTouched:)];
    
    mainScoresButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/scores_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(scoresTouched:)];
    
    mainFacebookButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/facebook_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(facebookTouched:)];
    
    mainTwitterButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/twitter_button.png"
                                               selectedImage:@""
                                                      target:self
                                                    selector:@selector(twitterTouched:)];
    
    mainButtonMenu = [CCMenu menuWithItems: mainNewGameButton, mainOptionsButton, mainScoresButton, nil];
    [mainButtonMenu alignItemsVerticallyWithPadding:20];
    mainButtonMenu.position = ccp(125, 90);
    
    mainSocialMenu = [CCMenu menuWithItems: mainTwitterButton, mainFacebookButton, nil];
    [mainSocialMenu alignItemsHorizontallyWithPadding:30];
    mainSocialMenu.position = ccp(380, 300);
    
    [mainButtonLayer addChild: mainButtonMenu];
    [mainButtonLayer addChild: mainSocialMenu];
}

-(void) newGameTouched:(id)sender{
    newGamePressed = TRUE;
}

-(void) optionsTouched:(id)sender{
    optionsPressed = TRUE;
}

-(void) scoresTouched:(id)sender{
    scoresPressed = TRUE;
}

-(void) facebookTouched:(id)sender{
    facebookPressed = TRUE;
}
    
-(void) twitterTouched:(id)sender{
    twitterPressed = TRUE;
}

-(void) newGameTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[GameModes node]]];
}

-(void) optionsTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[OptionsMenu node]]];
}

-(void) scoresTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[HighScores node]]];
}

-(void) facebookTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[FacebookScreen node]]];
}

-(void) twitterTransition:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene:[TwitterScreen node]]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc {
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
