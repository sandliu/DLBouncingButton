//
//  ViewController.m
//  BouncingButton
//
//  Created by David.Liu on 16/2/23.
//  Copyright © 2016年 Burrito Studio. All rights reserved.
//

#import "ViewController.h"
#import "DLBouncingButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DLBouncingButton *bounceButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bounceButton.bounceEnabled = YES;
    self.bounceButton.scaleFactor = 1.3;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
