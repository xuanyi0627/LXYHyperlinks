//
//  LXYHyperlinksLabel.m
//  LXYHyperlinks
//
//  Created by 宣佚 on 15/8/14.
//  Copyright (c) 2015年 Liuxuanyi. All rights reserved.
//

#import "LXYHyperlinksLabel.h"

@implementation LXYHyperlinksLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)setColor:(UIColor *)color{
    lineColor = [color copy];
    [self setNeedsDisplay];
}


- (void) drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGRect textRect = self.frame;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGFloat descender = self.font.descender;
    if([lineColor isKindOfClass:[UIColor class]]){
        CGContextSetStrokeColorWithColor(contextRef, lineColor.CGColor);
    }
    
    CGContextMoveToPoint(contextRef, descender+1, textRect.size.height + descender+1);
    CGContextAddLineToPoint(contextRef, textRect.size.width, textRect.size.height + descender+1);
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}

@end
