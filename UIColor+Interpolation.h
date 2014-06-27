//
//  UIColor+Interpolation.h
//  GCPageViewController
//
//  Created by Guillaume CASTELLANA on 25/6/14.
//  Copyright (c) 2014 Guillaume CASTELLANA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Interpolation)

- (UIColor *)colorByInterpolatingWith:(UIColor *)color factor:(CGFloat)factor;

@end
