//
//  DDKBorderView.h
//  VAOMoscowGuide
//
//  Created by Dmitry Sukhorukov on 10/14/10.
//  Copyright 2010 AR Door. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface DDKBorderView : UIView {
@private
	CGFloat _leftSz;
	CGFloat _rightSz;
	CGFloat _topSz;
	CGFloat _bottomSz;
	
	CGFloat shadowSize;
	
	CAGradientLayer* gradientLayer; 
}

- (id)initWithFrame:(CGRect)frame leftShadowSize:(NSUInteger)leftSz rightShadowSize:(NSUInteger)rightSz topShadowSize:(NSUInteger)topSz bottomShadowSize:(NSUInteger)bottomSz;

@end
