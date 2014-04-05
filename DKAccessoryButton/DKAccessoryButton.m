//
//  DKAccessoryButton.m
//
//  Created by Dennis Kutlubaev on 27.02.14.
//
//  This code is distributed under the terms and conditions of the MIT license.
//
//  Copyright (c) 2014 Dennis Kutlubaev (kutlubaev.denis@gmail.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#define RGBA(rgbValue, opacity) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:opacity]

#define RGB(rgbValue) RGBA(rgbValue, 1.0)

#import "DKAccessoryButton.h"

@implementation DKAccessoryButton

- (id)initWithFrame:(CGRect)frame title:(NSString *)title
{
    self = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (self) {
        
        // Setting frame. One should set a frame before adding an image.
        [self setFrame:frame];
        
        // Rect shape of a button
        self.layer.cornerRadius = 0;
        
        self.backgroundColor = [UIColor whiteColor];
        
        // Adjusting title label, left alignment with 10 px padding
        [self setTitleColor:RGB(0x1460FA) forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        
        [self.titleLabel setFont:[UIFont systemFontOfSize:17]];
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
        // Here we add an arrow image to the button view
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow"]];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
        CGRect imageViewFrame = imageView.frame;
        imageViewFrame.origin.x = self.frame.size.width - 20;
        imageViewFrame.origin.y = self.frame.size.height / 2.0 - 6;
        imageView.frame = imageViewFrame;
        [self addSubview:imageView];
        
        // Setting title
        [self setTitle:title forState:UIControlStateNormal];
    }
    return self;
}


@end
