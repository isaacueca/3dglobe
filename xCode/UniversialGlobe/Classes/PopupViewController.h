
#import <UIKit/UIKit.h>

//need to declare class
@class PopupViewController;


@interface PopupViewController : UIViewController < UIPickerViewDataSource> {

	IBOutlet UILabel *label;
	
	
}

@property(nonatomic, retain) IBOutlet UILabel *label;




@end
