//
//  CustomBackgroundTableViewCell.m
//  CustomBackground
//
//  Created by Andrew Madsen on 3/16/15.
//  Copyright (c) 2015 Open Reel Software. All rights reserved.
//

#import "CustomBackgroundTableViewCell.h"

@implementation CustomBackgroundTableViewCell

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
	
	CGFloat stripeWidth = 20.0;
	CGFloat skewWidth = 40;
	CGFloat topY = CGRectGetMinY(self.bounds);
	CGFloat bottomY = CGRectGetMaxY(self.bounds);
	NSUInteger i=0;
	CGFloat startingX = CGRectGetMinX(self.bounds)-skewWidth-stripeWidth;
	for (CGFloat x=startingX; x<CGRectGetMaxX(self.bounds); x += stripeWidth) {
		UIBezierPath *path = [UIBezierPath bezierPath];
		[path moveToPoint:CGPointMake(x, topY)];
		[path addLineToPoint:CGPointMake(x+skewWidth, bottomY)];
		[path addLineToPoint:CGPointMake(x+skewWidth+stripeWidth, bottomY)];
		[path addLineToPoint:CGPointMake(x+skewWidth+stripeWidth, topY)];
		[path closePath];
		
		UIColor *color = i++ % 2 ? [UIColor blueColor] : [UIColor redColor];
		[color set];
		[path fill];
	}
}

@end
