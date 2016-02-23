//
//  DLBouncingButton.m
//  BouncingButton
//
//  Created by David.Liu on 16/2/23.
//  Copyright © 2016年 Burrito Studio. All rights reserved.
//

#import "DLBouncingButton.h"

#define ANIMATION_DURATION 0.2F

@implementation DLBouncingButton


- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    if (self.bounceEnabled) {
        [self configBounceEffect:highlighted];
    }
}

- (void)configBounceEffect:(BOOL)highlighted
{
    if(highlighted == YES) {
        self.alpha = 1.0;
        [UIView animateWithDuration:ANIMATION_DURATION animations:^(){
            self.transform = CGAffineTransformMakeScale(self.scaleFactor, self.scaleFactor);
            //self.layer.shadowOpacity = 1;
            
        }];
        //you can add some shadow effect
        //self.layer.shadowOffset = CGSizeMake(1.0, 1.0);
        //self.layer.shadowOpacity = 1;
        //self.layer.shadowRadius = 3;
    } else {
        [UIView animateWithDuration:ANIMATION_DURATION animations:^(){
            self.transform=CGAffineTransformMakeScale(1 , 1);
        }];
        //self.layer.shadowOpacity = 0;
    }
}

@end
