//
//  UIColor+Interpolation.m
//  GCPageViewController
//
//  Created by Guillaume CASTELLANA on 25/6/14.
//  Copyright (c) 2014 Guillaume CASTELLANA. All rights reserved.
//

#import "UIColor+Interpolation.h"

@implementation UIColor (Interpolation)

- (float) interpolateBetween:(float)min and:(float)max at:(float)x
{
    return min + (max - min) * x;
}

- (UIColor *)colorByInterpolatingWith:(UIColor*)color factor:(CGFloat)factor
{
    // Just min-MAX range
    factor = MIN(MAX(factor, 0.0), 1.0);
    
    const CGFloat *startComponent = CGColorGetComponents(self.CGColor);
    const CGFloat *endComponent = CGColorGetComponents(color.CGColor);
    
    float r = [self interpolateBetween:startComponent[0] and:endComponent[0] at:factor];
    float g = [self interpolateBetween:startComponent[1] and:endComponent[1] at:factor];
    float b = [self interpolateBetween:startComponent[2] and:endComponent[2] at:factor];
    float a = [self interpolateBetween:CGColorGetAlpha(self.CGColor) and:CGColorGetAlpha(color.CGColor) at:factor];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

@end
