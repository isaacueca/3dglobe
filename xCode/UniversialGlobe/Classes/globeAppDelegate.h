
#import <UIKit/UIKit.h>
#import "WorldViewController.h"
#import "GTabBar.h"

@class WorldViewController;
@class SecondViewController;

@interface globeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
    GTabBar *tabView;

    WorldViewController *worldViewController;
    SecondViewController *secondViewController;

	UINavigationController *navigationController;
}
@property (nonatomic, retain) UITabBarController *tabBarController;

@property (nonatomic, retain) SecondViewController *secondViewController;
@property (nonatomic, retain) WorldViewController *worldViewController;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;


@end

