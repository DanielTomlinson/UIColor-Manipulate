//
//  UIColor+Manipulate.h
//  DTThemeKit
//
//  Created by  Danielle Lancashireon 11/05/2013.
//  Copyright (c) 2013 Shadow Developments. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Manipulate)

- (UIColor *)lighten:(float)amount;
- (UIColor *)darken:(float)amount;

- (UIColor *)saturate:(float)amount;
- (UIColor *)desaturate:(float)amount;

- (UIColor *)invert;
@end
