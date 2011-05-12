
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "EAGLView.h"

@interface WorldViewController : UIViewController {
	UIActivityIndicatorView *activityIndicator;
	
	IBOutlet UISegmentedControl *countriesSegment;
	IBOutlet UISegmentedControl *glowSegment;
	IBOutlet UISegmentedControl *rotateSegment;
	
	IBOutlet EAGLView *theGlobe;
}

@end
