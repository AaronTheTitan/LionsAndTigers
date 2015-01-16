//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Aaron Bradley on 1/15/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate>
{

//@property (strong, nonatomic) IBOutlet UIView *topController;
//@property (strong, nonatomic) IBOutlet UIView *hudController;
//@property (strong, nonatomic) IBOutlet UIView *topViewLeftConstraint;
//
//@property CGPoint originalTopViewCenter;


    IBOutlet UIView *topController;
    IBOutlet UIView *hudController;
    IBOutlet UIView *topViewLeftConstraint;

    CGPoint originalTopViewCenter;

}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    originalTopViewCenter = topController.center;



}


- (void)topRevealButtonTapped:(TopViewController *)TopViewController {
    CGPoint newCenter = CGPointMake(self.view.center.y + self.view.frame.size.width - 100, topController.center.y);
    [UIView animateWithDuration:.5 animations:^{
        topController.center = newCenter;
    }];


}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TopViewController *topVC = segue.destinationViewController;
    topVC.delegate = self;

}

@end
