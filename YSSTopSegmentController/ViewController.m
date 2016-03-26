//
//  ViewController.m
//  YSSTopSegmentController
//
//  Created by king on 15/12/25.
//  Copyright © 2015年 songs. All rights reserved.
//

#import "ViewController.h"
#import "YSSTopSegmentViewController.h"

@interface ViewController ()
{
    YSSTopSegmentViewController *vc;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imageArray = @[[UIImage imageNamed:@"icon1"], [UIImage imageNamed:@"icon2"], [UIImage imageNamed:@"icon3"], [UIImage imageNamed:@"icon4"]];
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *vc4 = [UIViewController new];
    vc4.view.backgroundColor = [UIColor grayColor];
    
    vc = [[YSSTopSegmentViewController alloc] initWithTopIcon:imageArray WithViewController:@[vc1, vc2, vc3, vc4]];
}
- (IBAction)buttonDidClick:(id)sender {
    [self presentViewController:vc animated:YES completion:nil];
}

@end
