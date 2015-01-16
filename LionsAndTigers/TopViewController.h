//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Aaron Bradley on 1/15/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TopViewController;

@protocol TopDelegate <NSObject>

- (void)topRevealButtonTapped:(TopViewController *)topView;

@end


@interface TopViewController : UIViewController

@property id <TopDelegate> delegate;

@end
