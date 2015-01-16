//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Aaron Bradley on 1/15/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>



@end


@interface HUDViewController : UIViewController

@property id<HUDDelegate> delegate;

- (void)lionsButtonTapped;
- (void)tigersButtonTapped;

@end
