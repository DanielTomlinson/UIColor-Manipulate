//
//  UIColor+Manipulate.m
//  DTThemeKit
//
//  Created by  Danielle Lancashireon 11/05/2013.
//  Copyright (c) 2013 Shadow Developments. All rights reserved.
//

#import "UIColor+Manipulate.h"

@implementation UIColor (Manipulate)

- (UIColor *)lighten:(CGFloat)amount
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:(b + (b * (amount / 100)))
                               alpha:a];
    return nil;
}

- (UIColor *)darken:(CGFloat)amount
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:(b - (b * (amount / 100)))
                               alpha:a];
    return nil;
}

- (UIColor *)saturate:(CGFloat)amount 
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:(s + (s * (amount / 100)))
                          brightness:b
                               alpha:a];
    return nil;
}

- (UIColor *)desaturate:(CGFloat)amount 
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:(s - (s * (amount / 100)))
                          brightness:b
                               alpha:a];
    return nil;
}

- (UIColor *)invert 
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:1.0-r
                               green:1.0-g
                                blue:1.0-b
                               alpha:a];
    return nil;
}

- (UIColor *)greyscale 
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithWhite:((r + g + b)/3)
                                 alpha:a];
    return nil;
}

@end
